# CTE Basics

## Tasks

1. To work on this project import the AdventureWorks2019 database from a backup (`.bak`) file.
    - Restored the _AdventureWorks2019_ database from backup
    - https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2019.bak

2. Query the price of the smallest bike among all the products.
When you need to find the minimum and/or maximum of a value among multiple possible values you almost always need more than one subquery (based on the same set rows). To eliminate duplicate code and to improve readability use a CTE and reference that multiple times.
    - Only products of the _Bikes_ category is considered by the query
    - Defined a CTE (using `WITH`) as part of the query (e.g. call it `ProductBike` or similar)
    - The main `SELECT` clause doesn't contain any `JOIN` statements (only the CTE does)
    - The CTE is reference exactly twice in the main `SELECT` clause (once as the root table and once in a subquery in the `WHERE` clause)
    - The result of the query is:

```
Name                     Size  ListPrice
------------------------ ----- ----------
Mountain-100 Silver, 38  38    3399,99
(1 row)
```
    - The query is saved into `task.sql`

