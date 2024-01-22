# Alter
Alter is a keyword which is used to update the existing data in the tables or database viz., adding or removing columns, rows, column properties etc. through combining the alter statement alongwith 

### Add new column to the existing table:
The following query is used to add a new column to the existing table in the database.
```
Alter table <table_name> Add <column_name> <Datatype> <constraints>;
```
For example:
```
Alter table students Add Father_Name varchar(25) Default Null;
```
To remove the existing column from the database:
```
Alter table students drop Father_Name;
```

### Changing the name of existing column:
The following query is used to change the name of an existing column of the table.
```
ALTER TABLE <table_name> RENAME COLUMN <old_name> TO <new_name>;
```
For example, for changing the `Fathers_name` column of a `students` table to `parent_name`
```
ALTER TABLE students RENAME COLUMN Fathers_name TO parent_name;
``` 