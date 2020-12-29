$eventfiles = "D:\pass\*event*.xml"
$sessionfiles = "d:\pass\*sessions*.xml"
$speakerfiles = "d:\pass\*speakers*.xml"

$events = @()
$sessions = @()
$speakers = @()

$markdowndir = "d:\workdir\markdown\"
$encoding  = New-Object System.Text.UTF8Encoding

foreach ($eventfile in Get-ChildItem $eventfiles ) {
    $eventxml = [xml](Get-Content $eventfile -Encoding UTF8)

    # Don't process files without data
    if ($null -ne $eventxml.error){
        continue
    }

    # Skip SQLSaturdays
    if (($eventxml.entry.content.properties.EventName).GetType().Name -eq "string") {
        if (($eventxml.entry.content.properties.EventName).StartsWith("SQLSaturday") -eq $true) {
            continue
        }
    }
    elseif (($eventxml.entry.content.properties.EventName.'#text').StartsWith("SQLSaturday") -eq $true) {
        continue
    }

    $EventID = $eventxml.entry.content.properties.EventID."#text" 
    $EventDate = [datetime]$eventxml.entry.content.properties.EventStartDate."#text"
    if (($eventxml.entry.content.properties.EventName).GetType().Name -eq "string") {
        $EventName = $eventxml.entry.content.properties.EventName
    }
    else {
        $EventName = $eventxml.entry.content.properties.EventName.'#text'	
    }   
    $passevent = [PSCustomObject]@{
        ID = [int]$EventID
        Date = [datetime]$EventDate
        Name = $EventName
    }

    $events += $passevent
}

$mainfile = [IO.StreamWriter]::New("$markdowndir\index.md", $false, $encoding)
$mainfile.WriteLine("#### [Disclaimer](disclaimer.md)")
$mainfile.WriteLine("# SQL PASS History Catalog")
$mainfile.WriteLine("Date (dd-MM-yyyy) | Name")
$mainfile.WriteLine("---|---")

foreach ($passevent in $events | Sort-Object Date -Descending){
    $mainfile.WriteLine("$($passevent.Date.ToString("dd-MM-yyyy"))|[$($passevent.Name)](SQLPASS$($passevent.ID).md)")
}
$mainfile.Close()

foreach ($sessionfile in Get-ChildItem $sessionfiles ) {
    $sessionxml = [xml](Get-Content $sessionfile -Encoding UTF8)

    # skip incomplete files
    if ($null -eq $sessionxml.feed.entry.content.properties){
        continue
    }

    $eventID = $sessionxml.feed.entry.content.properties[0].EventID.'#text'	
    $thisEvent = $events | Where-Object ID -eq $eventID 

    # skip SQLSaturdays
    if ($null -eq $thisEvent) {
        continue
    }

    foreach($xml in $sessionxml.feed.entry.content.properties) {
        if ($null -eq $xml.SessionDateTimeStart){
            $DateTimeStart =  $thisEvent.Date
        }
        else {
            if ($null -eq $xml.SessionDateTimeStart.'#text') {
                $DateTimeStart =  $thisEvent.Date
            }
            else {
                $DateTimeStart = [datetime]$xml.SessionDateTimeStart.'#text'                    
            }
        }

        if (($xml.SessionTrack).GetType().Name -eq "string"){
            $track = $xml.SessionTrack
        }
        else {
            $track = $xml.SessionTrack.'#text'
        }

        if (($xml.SessionName.GetType().Name -eq "string")){
            $name = $xml.SessionName
        }
        else {
            $name = $xml.SessionName.'#text'
        }

        if (($xml.SessionDescription.GetType().Name -eq "string")){
            $description = $xml.SessionDescription
        }
        else {
            $description = $xml.SessionDescription.'#text'
        }

        $session = [PSCustomObject]@{
            ID = [int]$xml.SessionID.'#text'
            EventID = [int]$xml.EventID.'#text'
            Name = $name
            Description = $description
            Date = $DateTimeStart
            Category = $xml.SessionCategory
            Track = $track
            Code = $xml.SessionCode
            Room = $xml.SessionRoom
            Prerequisites = $xml.SessionPrerequisites
            Level = $xml.SessionLevel
        }
        $sessions += $session    
    }
}

foreach ($speakerfile in Get-ChildItem $speakerfiles ) {
    $speakerxml = [xml](Get-Content $speakerfile -Encoding UTF8)

    # skip incomplete files
    if ($null -eq $speakerxml.feed.entry.content.properties){
        continue
    }

    $eventID = $speakerxml.feed.entry.content.properties[0].EventID.'#text'	
    $thisEvent = $events | Where-Object ID -eq $eventID 

    # skip SQLSaturdays
    if ($null -eq $thisEvent) {
        continue
    }

    foreach($xml in $speakerxml.feed.entry.content.properties) {
        if (($xml.SpeakerDescription).GetType().Name -eq "string"){
            $Speakerdescription = $xml.SpeakerDescription
        }
        else {
            $Speakerdescription = $xml.SpeakerDescription.'#text'
        }

        $speaker = [PSCustomObject]@{
            ID = [int]$xml.SpeakerID.'#text'
            EventID = [int]$xml.EventID.'#text'	
            SessionID = [int]$xml.SessionID.'#text'
            Name = $xml.SpeakerName
            Description = $Speakerdescription
        }
        $speakers += $speaker
    }
}

foreach ($passevent in $events | Sort-Object date -desc){
    $thisEventSpeakers = $speakers | Where-Object EventID -eq $passevent.ID
    $outevent = [IO.StreamWriter]::New("$markdowndir\SQLPASS$($passevent.ID).md", $false, $encoding)
    $outevent.WriteLine("#### ID: $($passevent.ID)") 
    $outevent.WriteLine("#### [Back to Main list](index.md)")
    $outevent.WriteLine("# $($passevent.Name)")
    $outevent.WriteLine("Session Date/Time (dd-MM-YYYY 24h)|Speaker|Category|Track|Title")
    $outevent.WriteLine("---|---|---|---|---")

    foreach($session in $sessions | Where-Object EventID -eq $passevent.ID | Sort-Object Date){
        $thisSessionSpeakers = $thisEventSpeakers | Where-Object SessionID -eq $session.ID
        $speakerlist = ($thisSessionSpeakers | Select-Object -ExpandProperty Name) -join ", "
        $outevent.WriteLine("$($session.Date.ToString("dd-MM-yyyy HH:mm"))|$speakerlist|$($session.Category)|$($session.Track)|[$($session.Name)](#sessionid-$($session.ID))")
    }

    foreach($session in $sessions | Where-Object EventID -eq $passevent.ID | Sort-Object Date){
        $thisSessionSpeakers = $thisEventSpeakers | Where-Object SessionID -eq $session.ID
        $speakerlist = ($thisSessionSpeakers | Select-Object -ExpandProperty Name) -join ", "
        $outevent.WriteLine("# ")
        $outevent.WriteLine("#### SessionID: $($session.ID)")
        $outevent.WriteLine("# $($session.Name)")
        $outevent.WriteLine("#### [Back to calendar](#id-$($passevent.ID))")
        $outevent.WriteLine("Event Date: $($session.Date.ToString("dd-MM-yyyy HH:mm")) - Category: $($session.Category) - Track: $($session.track)")
        $outevent.WriteLine("## Speaker(s): $speakerlist")
        $outevent.WriteLine("## Title: $($session.Name)")
        $outevent.WriteLine("## Description:")
        $outevent.WriteLine("### $($session.description)")    
    }

    $outevent.Close()
}

#foreach ($id in $orderedEvents.importID){               
#    $session = $xml.GuidebookXML.events.event | Where-Object ImportID -eq $id
#    $starttime = ([datetime]$session.startTime).ToString("HH:mm:ss")
#    $title = "[$($session.title)](#sessionid-$id)"
#    $calendar.WriteLine("$starttime|$(($session.speakers.speaker).name)|$($session.track)|$title")   
#}





