# Disclaimer

I'm writing this on December 29th, 2020. The source of the data on this site is a readable representation of the publicly available so-called "Orator o-data" downloads in Markdown format of the [PASS Organisation](https://sqlpass.org) website. 
Orator is the PASS system for Speaker management, it contains all abstracts of everything they organised since they started using this system. 
Right now, they are still online, but the PASS organisation is currently "pursuing dissolution" as their email to their members stated. And apparently on January 15th 2021, the [PASS Organisation](https://sqlpass.org) website will no longer function. 

Since the information about the schedules of the various PASS Events is useful to me and I think also to others I created this and I'm sharing it publicly. I'm also sharing the Source XML files, 
and I'm sharing the curl commands I used to grab the data from the interface. The source of the curl commands is unclear. I got them from Rob Volk, thank you Rob!, but he mentioned credit belongs to the sqlfamily in general because he didn't create those curl commands either and the data is about all of us. 
(which is an awesome thing to say!)

The site itself can be found at https://sqlpasshistory.com (Which is probably how you got here) and the source data is on [Github](https://github.com/andrekamman/sqlpasshistory)

- The data quality in the download varies, and it had horrible Unicode support. The cyrillic characters for a Russian event are all question marks for instance. (I've seen poor support for Unicode before because I have an accent in my name and I always found it funny that a database related conference can't store data right ;-)
- I also did this earlier for the SQLSaturday data, you can find that on https://sqlsathistory.com 

If, for whatever reason, some community friendly people become the new owner of the PASS data and such and they would prefer I no longer share this data here, I might take it down. We'll see what happens.

If you want to get in touch with me, my name is André Kamman ([t](https://twitter.com/andrekamman)|[y](https://www.youtube.com/channel/UCyp9dcb3n1q05pmqtSfNanw)) and if you add my first and last name together you've got most of my gmail address figured out already ;-)