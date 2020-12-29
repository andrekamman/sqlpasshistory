#### ID: 736
#### [Back to Main list](index.md)
# 24 Hours of PASS: Spring Edition 2017 - Security
Session Date/Time (dd-MM-YYYY 24h)|Speaker|Category|Track|Title
---|---|---|---|---
03-05-2017 12:00|Brian Kelley|24 Hours of PASS (60 minutes)|Application & Database Development|[What You Absolutely Must Know about SQL Server Security](#sessionid-64810)
03-05-2017 13:00|Grant Fritchey|24 Hours of PASS (60 minutes)|Application & Database Development|[Protecting Production Data in Non-Production Environments](#sessionid-64047)
03-05-2017 14:00|Reinaldo Kibel|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Hackers Move Away, We are Always Encrypted](#sessionid-64165)
03-05-2017 15:00|Bob Pusateri|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Passive Security for Hostile Environments](#sessionid-63519)
03-05-2017 16:00|Kevin Feasel|24 Hours of PASS (60 minutes)|Application & Database Development|[Outlier Detection With SQL And R](#sessionid-63575)
03-05-2017 17:00|Robert Davis|24 Hours of PASS (60 minutes)|Application & Database Development|[Securing SQL Server Processes with Certificates](#sessionid-63820)
03-05-2017 18:00|Brian Kelley|24 Hours of PASS (60 minutes)|BI Platform Architecture, Development & Administration|[Protecting Data Across the Environment](#sessionid-63595)
03-05-2017 19:00|Kathi Kellenberger|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Configuring Kerberos Delegation for SSRS](#sessionid-63158)
03-05-2017 20:00|Michelle Gutzait|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Implementing the Most Common Security Standard Regulations in SQL Server and Azure](#sessionid-63819)
03-05-2017 21:00|Ed Leighton-Dick|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Protecting Your Data with Encryption](#sessionid-63579)
03-05-2017 22:00|Virginia Mushkatbat|24 Hours of PASS (60 minutes)|Application & Database Development|[Sensitive Data Warriors: Always On Encryption and Data Masking](#sessionid-63698)
03-05-2017 23:00|Karen Lopez|24 Hours of PASS (60 minutes)|Application & Database Development|[Four New Table Level Security Features of SQL Server 2016](#sessionid-63232)
04-05-2017 00:00|Dan de Sousa|24 Hours of PASS (60 minutes)|Application & Database Development|[Ooops, data breach? Not with Always Encrypted](#sessionid-63324)
04-05-2017 01:00|John Deardurff|24 Hours of PASS (60 minutes)|Application & Database Development|[Securables, Principals, and Permissions](#sessionid-63203)
04-05-2017 02:00|Argenis Fernandez|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Modern Security Attack Vectors against SQL Server Environments](#sessionid-63432)
04-05-2017 03:00|Peter Myers|24 Hours of PASS (60 minutes)|BI Platform Architecture, Development & Administration|[Securing SQL Server 2016 Enterprise Information Management](#sessionid-63377)
04-05-2017 04:00|Denny Cherry|24 Hours of PASS (60 minutes)|Cloud Application Development & Deployment|[How to Maintain the Same Level of utilities in Cloud Deployments](#sessionid-63444)
04-05-2017 05:00|Ginger Grant|24 Hours of PASS (60 minutes)|Cloud Application Development & Deployment|[IoT Security: Process and Monitoring](#sessionid-63107)
04-05-2017 06:00|Ed Leighton-Dick|24 Hours of PASS (60 minutes)|Application & Database Development|[Extending Applications Securely Using Service Broker](#sessionid-63577)
04-05-2017 07:00|Mladen Prajdić|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[ SQL Server and Application Security For Developers](#sessionid-63876)
04-05-2017 08:00|Joseph D'Antoni|24 Hours of PASS (60 minutes)|Cloud Application Development & Deployment|[Building Secure Applications in Azure SQL Database](#sessionid-63443)
04-05-2017 09:00|Neil Hambly|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[SAy our Security Right (or Not)](#sessionid-64196)
04-05-2017 10:00|André Melancia|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Hacking SQL Server](#sessionid-63474)
04-05-2017 11:00|Geri Reshef|24 Hours of PASS (60 minutes)|Enterprise Database Administration & Deployment|[Row Level Security (RLS) - a deep dive](#sessionid-63456)
# 
#### SessionID: 64810
# What You Absolutely Must Know about SQL Server Security
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 12:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Brian Kelley
## Title: What You Absolutely Must Know about SQL Server Security
## Description:
### There are so many security tips out there for SQL Server. Almost all of them are rated as a best practice. What do you listen to? What do you focus on? In this session we'll break down what you absolutely must know about securing SQL Server. We'll look at the things to look for within SQL Server, including some of the nooks and crannies an attacker might use but what are rarely audited. You'll leave with a checklist of what to investigate on your own systems.
# 
#### SessionID: 64047
# Protecting Production Data in Non-Production Environments
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 13:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Grant Fritchey
## Title: Protecting Production Data in Non-Production Environments
## Description:
### The single best data set for validating that your application will work well when it gets to your production servers is the production data set. However, for reasons both legal and ethical, the one data set that should never be promulgated into your non-production environments is that same production data set? Now what? This session focuses on addressing that specific issue, getting data that emulates production, as closely as possible, into your non-production environments while simultaneously protecting production. We’ll address the issues that come up from data masking, data movement and increased disk space. We’ll also talk about hidden issues that may not be immediately apparent. Finally, we’ll offer solutions to these challenges in order to support your non-production environments in an automated way that more directly supports a DevOps approach to development and system management.
# 
#### SessionID: 64165
# Hackers Move Away, We are Always Encrypted
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 14:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Reinaldo Kibel
## Title: Hackers Move Away, We are Always Encrypted
## Description:
### Hands on presentation of a solution of managing SQL Server SA password on a central repository encrypted using SQL Server 2016 Always Encrypted feature. Demonstrate how to rotate changing the password on a daily basis of the service account and update the internal tables. Show an end to end solution on how to implement Always Encrypted feature, the application requirement, changes. Using a Hardware Security module (HSM). How does it work with AlwaysOn high availability.  We will go in details on how Always Encrypted works, the pros and cons of using this comparing to other technologies. And will briefly cover the 2 other security enhancements added to SQL Server 2016 (Row Level Security, Dynamic Data Masking). We will compare existing TDE and other encryption technologies to these ones on SQL Server.
# 
#### SessionID: 63519
# Passive Security for Hostile Environments
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 15:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Bob Pusateri
## Title: Passive Security for Hostile Environments
## Description:
### Ideal database security settings usually exist in books, but rarely in reality. Is your CIO a member of the sysadmin role because they demanded it? Or maybe some users have rights for purely political reasons? Just because you can't enforce security through typical means doesn't mean you're powerless. Attend this session to learn about the features SQL Server provides that will allow you to keep track of what your users are up to at all times and sleep a little easier. Through various scenarios and demos, see how technologies such as event notifications, auditing, and extended events can help ensure nothing happens on your system without you knowing about it. Even in optimally secured environments these techniques can still come in handy. The best security is often that which cannot be seen.
# 
#### SessionID: 63575
# Outlier Detection With SQL And R
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 16:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Kevin Feasel
## Title: Outlier Detection With SQL And R
## Description:
### Forensic accountants and fraud examiners use a range of techniques to uncover fraudulent journal entries and illegal activities.  As data professionals, most of us will never unravel a Bernie Madoff scheme, but we can apply these same techniques in our own environments to uncover dirty data.  This session will use a combination of SQL Server and R to apply these fraud detection techniques, which include Benford's Law, outlier analysis, time series analysis, and cohort analysis.
# 
#### SessionID: 63820
# Securing SQL Server Processes with Certificates
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 17:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Robert Davis
## Title: Securing SQL Server Processes with Certificates
## Description:
### System.Xml.XmlElement
# 
#### SessionID: 63595
# Protecting Data Across the Environment
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 18:00 - Category: 24 Hours of PASS (60 minutes) - Track: BI Platform Architecture, Development & Administration
## Speaker(s): Brian Kelley
## Title: Protecting Data Across the Environment
## Description:
### You are responsible for protecting data within your organization. Wary of how attackers have become craftier and more persistent, you know that the old ways of just looking within the database are not enough. After all, data is stored in more places than the database. In order to properly protect your organization's data, you need to look at everywhere important data is stored. You also have to consider how that data is transmitted. In this presentation, we'll cover the typical locations adversaries look for in order to steal data. We'll walk through each type of storage as well as the transfer mediums which link our storage locations together. We'll consider the traditional weaknesses and how you can shore them up to protect your data. We'll also discuss areas we don't have good answers for as of yet and the types of attacks and risks we have because of them.
# 
#### SessionID: 63158
# Configuring Kerberos Delegation for SSRS
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 19:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Kathi Kellenberger
## Title: Configuring Kerberos Delegation for SSRS
## Description:
### Is Kerberos delegation something you avoid like a vicious three-headed guard dog? Once you hear a clear explanation, it will all make sense and no longer be scary! Attend this session to learn what needs to be done to get SSRS working with Kerberos delegation.
# 
#### SessionID: 63819
# Implementing the Most Common Security Standard Regulations in SQL Server and Azure
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 20:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Michelle Gutzait
## Title: Implementing the Most Common Security Standard Regulations in SQL Server and Azure
## Description:
### PCI-DSS, SOX, ISO, ... What are the Cyber Standard regulation and how do we implement them in SQL Server? In this session I will cover the main security regulations and will discuss the security configuration required to comply with each one of them.
# 
#### SessionID: 63579
# Protecting Your Data with Encryption
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 21:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Ed Leighton-Dick
## Title: Protecting Your Data with Encryption
## Description:
### We’ve all seen the recent news stories about companies whose data has been stolen by hackers.  What was once a rare event has become all too common, and companies large and small are at risk.  While it isn’t always possible to prevent intrusions, you can reduce the risk by encrypting your data.  In this presentation, I’ll show you the four ways that SQL Server provides to encrypt data: hashes, cell-level encryption, database-level encryption (also known as transparent data encryption), and backup encryption.  We’ll also discuss the keys required for each type of encryption and discuss how to protect the keys themselves.
# 
#### SessionID: 63698
# Sensitive Data Warriors: Always On Encryption and Data Masking
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 22:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Virginia Mushkatbat
## Title: Sensitive Data Warriors: Always On Encryption and Data Masking
## Description:
### System.Xml.XmlElement
# 
#### SessionID: 63232
# Four New Table Level Security Features of SQL Server 2016
#### [Back to calendar](#id-736)
Event Date: 03-05-2017 23:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Karen Lopez
## Title: Four New Table Level Security Features of SQL Server 2016
## Description:
### SQL Server 2016 introduced four new features to provide additional security to your database tables. The first is Always Encrytped which allows you to provide encryption on individual columns within a table. Next the discussion turns to Row-Level Security which allows an administrator to restrict access to specific rows based off data values. The third feature we discuss will be Dynamic Data Masking which provides a method of concealing sensitive data from users by masking the sensitive data values. And finally, we will discuss Temporal Tables which allows the database engine to capture data changes performed on a system-versioned table to a history table.
# 
#### SessionID: 63324
# Ooops, data breach? Not with Always Encrypted
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 00:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Dan de Sousa
## Title: Ooops, data breach? Not with Always Encrypted
## Description:
### Microsoft has implemented “Always Encrypted” in SQL Server 2016 which differs from previously available options including TDE. With "always Encrypted", data is encrypted not only at rest, but also in use and in transit. 
In this session, learn how to set up an "Always Encrypted" environment, the technicalities of the feature including the use of a security certificate, loading data into an "Always Encrypted" enabled environment, some limitations of the feature and if time permits, look into a real use case of the feature. You will leave this session with an understanding of the Always Encrypted feature in SQL Server 2016 as well as how to start working with it.
# 
#### SessionID: 63203
# Securables, Principals, and Permissions
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 01:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): John Deardurff
## Title: Securables, Principals, and Permissions
## Description:
### This session will present at a very introductory level the four scoping levels of providing security to a database object. This will include a discussion on the two authentication modes, how to create both Windows and SQL logins, mapping logins to user accounts, and finally granting, denying, or revoking permissions on tables, views, and other objects within a SQL Database.
# 
#### SessionID: 63432
# Modern Security Attack Vectors against SQL Server Environments
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 02:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Argenis Fernandez
## Title: Modern Security Attack Vectors against SQL Server Environments
## Description:
### Today's attacks are getting smarter, sneakier, and more dangerous than ever. In this session we are going to discuss the different vectors the bad guys are using today to gain access to SQL Server environments. Credential theft (using Mimikatz, for example) are increasingly popular ways to hop onto servers you weren't supposed to have access to. Pass the hash has certainly evolved, but it's still a massive issue out there. After this talk, you're probably going to want to have a chat with your Security team at work.
# 
#### SessionID: 63377
# Securing SQL Server 2016 Enterprise Information Management
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 03:00 - Category: 24 Hours of PASS (60 minutes) - Track: BI Platform Architecture, Development & Administration
## Speaker(s): Peter Myers
## Title: Securing SQL Server 2016 Enterprise Information Management
## Description:
### SQL Server Enterprise Information Management (EIM) relates to Integration Services, Master Data Services, and Data Quality Services. In this presentation, learn how security functionality is designed to work for each service, including recommended practices.
# 
#### SessionID: 63444
# How to Maintain the Same Level of utilities in Cloud Deployments
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 04:00 - Category: 24 Hours of PASS (60 minutes) - Track: Cloud Application Development & Deployment
## Speaker(s): Denny Cherry
## Title: How to Maintain the Same Level of utilities in Cloud Deployments
## Description:
### In this session we will review the differences between deploying Microsoft SQL Server 2016 in Microsoft Azure and on-premises from a Security, Reliability and Scalability perspective.  

We'll review the common mistakes which people make when deploying SQL Server Virtual Machines to Azure which can lead to security problems including data breaches.

We'll review the common performance problems which people encounter, and how to resolve them.

We'll review the common scalability misunderstandings of Azure and SQL Server Virtual Machines.

Join us for this fun session and learn how to improve the security, reliability and scalability of your Azure deployments of SQL Server 2016.
# 
#### SessionID: 63107
# IoT Security: Process and Monitoring
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 05:00 - Category: 24 Hours of PASS (60 minutes) - Track: Cloud Application Development & Deployment
## Speaker(s): Ginger Grant
## Title: IoT Security: Process and Monitoring
## Description:
### In October 2016, IoT devices collectively took down many websites including Amazon, Netflix, Twitter, Airbnb, and Paypal. In 2010 IoT devices caused nuclear material to explode. IoT devices clearly do a lot more than transmit status data. 
In this session, we will explore the security risks in IoT implementations. Examining the risks of IoT systems can help determine how to foil certain events, such as preventing access of applications which are designed to remotely seize control of IoT devices and mitigating the risks involved in IoT data transmissions. We will examine Azure IoT solutions to assess how Microsoft’s IoT implementation addresses risks and the development steps which need to be implemented when applications are created and deployed.  Data analysis’ importance in analyzing IoT devices will be discussed, including how Stream Analytics and Azure ML can be implemented as a key element to the ongoing security and maintenance of IoT devices and IoT systems.
# 
#### SessionID: 63577
# Extending Applications Securely Using Service Broker
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 06:00 - Category: 24 Hours of PASS (60 minutes) - Track: Application & Database Development
## Speaker(s): Ed Leighton-Dick
## Title: Extending Applications Securely Using Service Broker
## Description:
### If you’ve ever tried to build a distributed application - one that spans multiple servers or even multiple sites - you know how complex it can be.  Web services are a common approach to that problem, but they aren’t the right solution to every problem.  SQL Server professionals have another option.  Service Broker is designed to run in a distributed architecture, and it has strong built-in security to protect the data as it is being transferred between systems.  As an added bonus, Service Broker can also be extended to interact directly with a Windows service, providing a bridge to web services or even Azure. I’ll demonstrate how to implement all of these advanced configurations using concrete, real-world examples in this session.
# 
#### SessionID: 63876
#  SQL Server and Application Security For Developers
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 07:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Mladen Prajdić
## Title:  SQL Server and Application Security For Developers
## Description:
### System.Xml.XmlElement
# 
#### SessionID: 63443
# Building Secure Applications in Azure SQL Database
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 08:00 - Category: 24 Hours of PASS (60 minutes) - Track: Cloud Application Development & Deployment
## Speaker(s): Joseph D'Antoni
## Title: Building Secure Applications in Azure SQL Database
## Description:
### Cloud computing requires new security paradigms that are unfamiliar to many application users, database administrators, and programmers. Consequently, some organizations are hesitant to implement a cloud infrastructure for data management due to perceived security risks. However, much of this concern can be alleviated through a better understanding of the security features built into Microsoft Azure and Microsoft Azure SQL Database.

Azure provides extremely robust security protection at the physical, logical, and data layers of its services and applications, making Azure datacenters among the most secure facilities of their kind in the world. Likewise, Azure SQL Database includes multiple layers of security, with role-based logical data protection and auditing to monitor the security of your data
# 
#### SessionID: 64196
# SAy our Security Right (or Not)
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 09:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Neil Hambly
## Title: SAy our Security Right (or Not)
## Description:
### Database security is one of those topics that too many misunderstand; haven’t learned it to the right depth, or just not sure how to approach designing a database security strategy.
During this session we will examine how to put in the right level of security, evaluate and define an appropriate database security model that is right for the environment.
We will be covering SQL Server’s security hierarchy and terminology, identify security risks (know your security responsibilities), determine when SA usage is appropriate and not and more.
# 
#### SessionID: 63474
# Hacking SQL Server
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 10:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): André Melancia
## Title: Hacking SQL Server
## Description:
### How easy is it to hack a SQL Server? 
In this session we'll see examples on how to exploit SQL Server, modify data and take control, while at the same time not leaving a trace.
We'll start by gaining access to a SQL Server (using some "creative" ways of making man-in-the-middle attacks), escalating privileges and tampering with data at the TDS protocol level (e.g. changing your income level and reverting without a trace after payment), hacking DDM, and more. 
Most importantly, we'll also cover recommendations on how to avoid these attacks, and take a look at the pros and cons of new security features in SQL Server 2016.
This is a demo-driven session, suited for DBAs, developers and security consultants.
# 
#### SessionID: 63456
# Row Level Security (RLS) - a deep dive
#### [Back to calendar](#id-736)
Event Date: 04-05-2017 11:00 - Category: 24 Hours of PASS (60 minutes) - Track: Enterprise Database Administration & Deployment
## Speaker(s): Geri Reshef
## Title: Row Level Security (RLS) - a deep dive
## Description:
### In the session I will give a short introduction about how RLS is combined with the existing security system, an introduction to its objects (UDF & Security Policy),
and will implement it in solving different real world scenarios like hierarchical organization, role based security system, application based security system; and deal with performance considerations.
