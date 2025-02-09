# Sales-Management
Sales-Management on SQL
This SQL script creates and manages a Sales Management Database (pr). It defines three tables: salesmen, customers, and orders, inserts sample data, and performs various SQL queries for business insights.

Key Features & Operations: ✅ 1. Database & Table Creation:

salesmen: Stores salesman details (ID, name, city, commission). customers: Stores customer details (ID, name, city, grade, linked salesman). orders: Stores order details (order number, amount, date, linked customer & salesman). ✅ 2. Data Insertion:

Populates the tables with salesmen, customers, and orders data. ✅ 3. SQL Queries for Business Insights:

Inner Join: Retrieves salesmen and customers in the same city. Conditional Queries: Fetches orders between $500 and $2000. Left Join: Shows all salesmen, including those without customers. Commission Analysis: Finds salesmen with commission > 0.12. Order & Customer Analysis: Links orders with customers & salesmen.

Aggregations: Total commission per salesman. Number of customers per salesman. Total sales amount per salesman. Daily sales performance by salesman.
