To create a database named "students" :
```
create database students;
```
To switch into the database students :
```
use students;
```
To create a table called "details" in the present working database with below mentioned columns where char represents "n" fixed no. of charecters that the value being put into the field and varchar represents the no. of charecters can be put into the field which may be of varying length and restricted by the max. no. of charecters.
```
create table details
(id varchar(10), 
name varchar(25), 
city varchar(20),
PINCODE char(6))
```