create database SalesManagement;
use SalesManagement;
CREATE TABLE salesmen (
    salesman_id INT,
    salesman_name VARCHAR(50),
    city VARCHAR(50),
    commission DECIMAL(3, 2)
);

INSERT INTO salesmen (salesman_id, salesman_name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13),
(5003, 'Lauson Hen', 'San Jose', 0.12);
CREATE TABLE customers (
    customer_id INT,
    cust_name VARCHAR(100),
    city VARCHAR(50),
    grade INT,
    salesman_id INT
);
INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003),
(3003, 'Jozy Altidor', 'Moscow', 200, 5007),
(3001, 'Brad Guzan', 'London', NULL, 5005);
 CREATE TABLE orders (
    ord_no INT,
    purch_amt DECIMAL(10, 2),
    ord_date DATE,
    customer_id INT,
    salesman_id INT
);
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

SELECT salesman_name,salesmen.city , cust_name from salesmen inner join customers on salesmen.city =customers.city;
SELECT  ord_no,purch_amt,cust_name, city from orders inner join customers on orders.customer_id =customers.customer_id where purch_amt between 500 AND 2000;
SELECT salesman_name,salesmen.city , cust_name from salesmen left join customers on salesmen.salesman_id =customers.salesman_id;
SELECT salesman_name,customers.city , cust_name,commission from salesmen inner join customers on salesmen.salesman_id =customers.salesman_id where commission >0.12;
SELECT salesman_name,salesmen.city,customers.city , cust_name,commission from salesmen inner join customers on salesmen.salesman_id =customers.salesman_id where commission >0.12;
SELECT  ord_no,purch_amt,cust_name,ord_date,orders.customer_id ,grade, commission from orders left join customers on orders.customer_id =customers.customer_id left join salesmen on orders.salesman_id = salesmen.salesman_id;
select * from orders natural join salesmen natural join customers;
select * from orders left outer join customers on orders.customer_id =customers.customer_id order by ord_date asc;

select salesman_name ,sum(commission) as totalcommission from salesmen group by salesman_name;
SELECT salesman_id,count(*) as numberoftime from customers group by salesman_id;
select customer_id,count(*) as customerordered from customers group by customer_id;
select salesman_id,sum(purch_amt) as totalamt from orders group by salesman_id ;
select ord_date,salesman_id ,sum(purch_amt)  as totalamt from orders group by ord_date,salesman_id order by ord_date ;



