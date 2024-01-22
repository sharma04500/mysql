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
where * is wildcard and `actor_id` is the column name and `140` is the value stored in one of the rows of the table.
This statement will fetch the entire row where the column `actor_id` is mentioned as 140 i.e., this will print the details of the actor stored in the table `actor`.

### Alias (as)
In SQL statements, we will usually write the logic required to fetch the data that is intended to be retrieved with respect to the requirements. In some cases, though we have successfully fetched the data from the database, the data might not be easily readable. So, to provision readability we can assign a value for the fetched result and the key used to represent the result of the query is called alias and is mentioned as `as` in the SQL statement.
For example,
`select mod(10, 8);` will perform the division 10/8 and prints the remainder `2`, which can also be the value obtained through subtraction. 
```
mysql> select mod(10,8);
+-----------+
| mod(10,8) |
+-----------+
|         2 |
+-----------+
1 row in set (0.00 sec)
```
So, In such cases, we can set an alias as remainder using the statement
```
select mod(10,8) as remainder;
```
This will print the result as follows,
```
mysql> select mod(10,8) as remainder;
+-----------+
| remainder |
+-----------+
|         2 |
+-----------+
1 row in set (0.00 sec)
```

```
select first_name as actors from sakila.actor;
```
This will leave the output as follows:
```
mysql> select first_name as actors from sakila.actor;
+-------------+
| actors      |
+-------------+
| PENELOPE    |
| NICK        |
| ED          |
| JENNIFER    |
|      ..     |
|      ..     |
|      ..     |
|      ..     |
| MERYL       |
| JAYNE       |
| BELA        |
| REESE       |
| MARY        |
| JULIA       |
| THORA       |
+-------------+
200 rows in set (0.00 sec)
```