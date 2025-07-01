# Task 6: Subqueries and Nested Queries

## Objective:
Use subqueries in SQL using SELECT, WHERE, and FROM clauses.

## Tools:
- DB Browser for SQLite
- MySQL Workbench

## Concepts:
- Scalar Subquery
- Correlated Subquery
- Use of IN, EXISTS

## Files:
- `task6_subqueries.sql` – Contains SQL queries for the task

## Interview Questions with Answers:

1. **What is a subquery?**  
   A query written inside another SQL query.

2. **Difference between subquery and JOIN?**  
   A subquery is processed internally, while JOIN directly combines tables.

3. **What is a correlated subquery?**  
   A subquery that uses values from the outer query.

4. **Can subqueries return multiple rows?**  
   Yes, especially when using IN or EXISTS.

5. **How does EXISTS work?**  
   It checks whether rows exist in the subquery.

6. **How does subquery affect performance?**  
   Correlated subqueries can be slower; JOINs are usually faster.
