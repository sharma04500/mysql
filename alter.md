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