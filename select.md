### Select
In SQL, `select` statements are used to fetch data belonging to a particular column from the database or table  of the database. Select statements are usually written in the following format:
```
select <col_1_name>,<col_2_name>...<col_n_name> from <db_name>.<table_name>;
```
For example:
```
select actor_id,first_name from sakila.actor;
```
where `sakila` is the database and `actor_id` and `first_name` are the columns and `actor` is the table.
The output will be as follows:
```
1	PENELOPE
2	NICK
3	ED
4	JENNIFER
5	JOHNNY
```
To fetch the entire table, use wildcard instead of specifying the columns individually.

### Distinct
Distinct in select statement will display all the unique values from a particular column.
A Similar value may be inserted into multiple rows of a particular column, which means a value can be repeated. In case of fetching all the possible values of a particular column of a table, we can combine a `select` statement with `distinct` to fetch all the unique values from that column. For example,
```
select distinct <column_name_1>,<column_name_2>...<column_name_n> from <db_name>.<table_name>;
# For example :
select distinct country_id,country,country from sakila.country;
```
where, `country_id` and `country` are the columns of the table `country` belonging to the database `sakila`.

### Count
Count() is a parameter which is used along with the select statement to fetch the total no. of rows present in that particular column. 
```
select count(distinct <column_name>) from <db_name>.<table_name>;
```
For example:
```
select count(distinct country) from sakila.country;
```

### Where
Where is a parameter which is used to specify certain conditions in order to filter out particular rows from the table  which satisfies the condition mentioned in the statement.
```
Select * from <table_name> where <column_name>=<value>;
``` 
For example:
```
select * from sakila.actor where actor_id=140;
```
where * is wildcard and 