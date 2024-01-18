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
varchar(n) - The specified value may contain any no. of charecters, where the total no. of charecters of the value provided should be less than 'n'.

To insert data into a table, we'll use the following query
```
insert into <table_name>
values (<value_for_column1>,<value_for_column2>,<value_for_column3>)
```
For example, To put values into the table "details" as mentioned below: 
```
insert into details
values ( 1, 'Sharma', 'Nellore', 524004 );
```

We also can skip few columns while writing the data  into the table, by specifying the column names into which the respective data should be written as follows:
```
insert into details (id, name, city)
values (1, 'sunny', 'Los Vegas' );
```
In this case the PIN column in the table for this entry in the table will appear empty.

### Primary Key:
In the above example, the value 1 is used to indicate multiple rows. But, the ID should be unique in practical scenarios.
The db table will display both the rows with the same ID and the db permits the user to enter the info.
In such cases, we have to make sure that the database is not accepting the same value for multiple entries for the ID field to keep all the rows unique, atleast for a single column to provision ease towards handling the data.
The primary key is the title of one of the columns of the table. The values of the column specified by primary key will be unique for all the rows as the database won't allow the user to repeat values for multiple columns. these values are usually used to extract data from the table or to provide a unique identity for all the columns of the table. Primary key should be specified while creating the table, as follows :
```
create table details
(id varchar(10), 
name varchar(25), 
city varchar(20),
PINCODE char(6),
primary key(id))
;
```
In the above case, the user or application cannot write duplicate values or repeated values in different rows for the column `id`.