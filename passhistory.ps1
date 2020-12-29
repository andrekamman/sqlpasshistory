$xmllocation = "D:\pass\*event*.xml"
foreach ($xmlfile in Get-ChildItem $xmllocation) {
    #write-host $xmlfile
    $xml = [xml](Get-Content $xmlfile)
    try {
        if (($xml.entry.content.properties.EventName).GetType().Name -eq "string") {
            if (($xml.entry.content.properties.EventName).StartsWith("SQLSaturday") -ne $true) {
                $xml.entry.content.properties.EventID.'#text'	
                $xml.entry.content.properties.EventName
            }
            else {
                $xml.entry.content.properties.EventName.'#text'
            }
        }   
    }
    catch {
        if ($xml.error.eror.'#text' -ne "") {

        }
        else {
            $xmlfile
            $xml.entry.content.properties               
        }
    }
}