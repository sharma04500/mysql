# JOINS
Joins are used to join multiple tables with the help of the similar column in both the tables using the primary and foreign keys. 
The concept of "joins" will be quite helpful while dealing with huge data put into multiple tables using the concept of keys.

### Basic Join statement 
Usually, `join` statements are formed in the following structure:
```
select * from <table_1> join <table2> on <table1>.<primary_key> = <table2>.<foreign_key>;
```

For example, consider the sakila schema of mysql. In sakila, `actor` and `film_actor` are the two tables which have the same column `actor_id`. So, In order to fetch the combined results from both the tables, we can join them basing on the `actor_id` column, where `actor_id` is the primary key in the `actor` table and foreign key in the `film_actor` table. 
```
select * from actor join film_actor on actor.actor_id = film_actor.actor_id;
```
### Multiple Joins

```
select * from actor join film_actor on actor.actor_id = film_actor.actor_id join film on film_actor.film_id = film.film_id where last_name like '%OSTE%';
```