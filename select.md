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
| JENNIFER    |
|      ..     |
|      ..     |
|      ..     |
|      ..     |
| MERYL       |
| JULIA       |
| THORA       |
+-------------+
200 rows in set (0.00 sec)
```
### Like
Like is a keyword which is used to filter out the data using similarity references to one of the words.
For example, consider the actor table of the sakila database of mysql:
```
mysql> select * from actor;
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED          | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER    | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
|        6 | BETTE       | NICHOLSON    | 2006-02-15 04:34:33 |
|        7 | GRACE       | MOSTEL       | 2006-02-15 04:34:33 |
|        8 | MATTHEW     | JOHANSSON    | 2006-02-15 04:34:33 |
|        9 | JOE         | SWANK        | 2006-02-15 04:34:33 |
|       10 | CHRISTIAN   | GABLE        | 2006-02-15 04:34:33 |
```
To extract the details of `BETTE` alone and we exactly don't remember the spelling, we can run the following query using `LIKE`:
```
mysql> select * from actor where first_name like '%%TTE';
+----------+------------+-----------+---------------------+
| actor_id | first_name | last_name | last_update         |
+----------+------------+-----------+---------------------+
|        6 | BETTE      | NICHOLSON | 2006-02-15 04:34:33 |
+----------+------------+-----------+---------------------+
1 row in set (0.00 sec)
```
where %% represents the unknown part of the referenced keyword and can be used to reference the starting letters or middle letters of the string as shown in the below examples.
```
mysql> select * from actor where last_name like 'LOL%%';
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
1 row in set (0.02 sec)
```
```
mysql> select * from actor where last_name like '%%VERS%%';
+----------+------------+-------------+---------------------+
| actor_id | first_name | last_name   | last_update         |
+----------+------------+-------------+---------------------+
|      180 | JEFF       | SILVERSTONE | 2006-02-15 04:34:33 |
|      195 | JAYNE      | SILVERSTONE | 2006-02-15 04:34:33 |
+----------+------------+-------------+---------------------+
2 rows in set (0.00 sec)
```

### Order By
`order by` is a keyword which is used to sort out the data with respect to sorting a particular column into ascending or descending orders as shown below in the following examples where `actor_id` is the column name and `desc` represents descending order.

``` 
mysql> SELECT * FROM actor ORDER BY actor_id DESC;
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|      200 | THORA       | TEMPLE       | 2006-02-15 04:34:33 |
|      199 | JULIA       | FAWCETT      | 2006-02-15 04:34:33 |
|      198 | MARY        | KEITEL       | 2006-02-15 04:34:33 |
|      197 | REESE       | WEST         | 2006-02-15 04:34:33 |
|      196 | BELA        | WALKEN       | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+
```
In the below example, `asc` represents ascending order, even if we don't specify asc or desc along with order by, the query by default arranges the data in ascending order.
```
mysql> select * from actor order by actor_id asc;
+----------+-------------+--------------+---------------------+
| actor_id | first_name  | last_name    | last_update         |
+----------+-------------+--------------+---------------------+
|        1 | PENELOPE    | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK        | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED          | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER    | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY      | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
+----------+-------------+--------------+---------------------+
```

### Group By
`Group By` clause is used to filter out the rows of of a specific column which have same values. Group By is generally used to perform aggregate functions such as `count`,`sum`,`avg`,`min` and `max` on multiple values belonging to the specified column.
For example, if we are about to derive the total amount being paid as salaries to all the employees working in the Human Resources department of a company, we can run the following query to fetch the total value.
```
select sum(salary) as total_hr_salary from employees where department='HR' group by department;
```

The usual structure of a group by clause along with select statement will be as follows: 
```
select <aggregate_function(<column1_name>)> as <alias> from <table_name> where <column_name>=<value> group by <column_name>;
```
where,
aggregate function = count or sum or avg or min or max.
column1_name = Name of the column, on which the aggregate function should be performed.
alias = key to be displayed for the value.
table_name = Name of the table oon which the query is being executed.
column_name = Name of the column being used to filter out the required rows.
value = the value of the column being used as a selector in order to pick the required rows from the table.
column_name = Name of the column, whose values are to be grouped in order to perform the required function.

#### *Example - 2:*
```
mysql> select sum(funds_received) as Indian_donataions from ram_funds where country='India' group by country;
+-------------------+
| Indian_donataions |
+-------------------+
|            963.65 |
+-------------------+
1 row in set, 6 warnings (0.00 sec)
```
where the values of the column country are grouped together after being filtered out by the where statement and sum is performed on all the values and displayed under set alias `Indian_donations`.
For a better picture of this example refer to the table printed in the file `rammandir.sql` file of this repository.