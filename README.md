# project_park

 //How to load the site
All the tables are inside the database file 'login_sample_db.sql'. It should first be imported into phpmyadmin before using the site.Since most of the things here are hugely dependent on the server side, XAMP or USB WEB SERVER should be used to run the php files by putting them into the root folder.

 

//What's with the signups?
So, on our site, we have two signup systems along with their respective login systems which provide access to health professionals(hospital users) and certified blood donors(users).

 

//Making an account(both the user and hospital user)
Both of these registration systems have an auto-check procedure for username ie. same username cannot be used by more than one person to make account.

 

//Making an account as a user
Here, we refer to users as the people who have donor id. These donor ids should be first input into the 'donor_id_check' table of the database. Only the people with donor ids can make account as certified donors(users).

 

//Perk of having a certified donor(user) account.
Our site features an alert system which, when activated, sends an alert to the people about the information regarding the required blood-group. So, to avoid this power being fallen into the wrong hands, we have classified people with donor id as certified donors. This ensures the proper use of the alert system and, in case of some unwanted shenanighans, we can easily identify the culprit through the donor-account credentials.

 

//Making an account as a health professional (hospital user)
Here, we refer to health professionals or hospital users as the people who have hospital id. These hospital ids, much like the donor id, should be first input into the 'hospital_id_check' table of the database. Only the health personnels who are tasked with giving updates regarding the hospitals they work for and who have hospital id can make account as health personnels (hospital users)

 

//Perks of having a health personnel(hospital user) account.
The alert system can be accessed by hospital users in the same way. In addition to that, they can also provide inputs regarding the number of beds (available_beds), blood bank information (blood_bank) and doctors' appointment schedule (doctor_appointment) of the hospital that they work for
