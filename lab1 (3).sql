Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
mysql> create database students;
Query OK, 1 row affected (0.03 sec)

mysql> select database();
+------------+
| database() |
+------------+
| NULL       |
+------------+
1 row in set (0.00 sec)


mysql> use students;
Database changed
mysql> create table studentI(    stud_id INT PRIMARY KEY,    FirstName VARCHAR(50),    LastName VARCHAR(50),    Age INT,    PhoneNo VARCHAR(15),    Address VARCHAR(100));
Query OK, 0 rows affected (0.08 sec)

mysql> desc studentI;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(50)  | YES  |     | NULL    |       |
| LastName  | varchar(50)  | YES  |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| PhoneNo   | varchar(15)  | YES  |     | NULL    |       |
| Address   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)


mysql> insert into studentI  values (1,'Mahesh','Pandhare',22,'9876543210','Mumbai'),(2,'Kunal','Pandhare',24,'9876543211','Mumbai'),(3,'Viraj','Patil',23,'9876543212','Pune'),(4,'Karan','Sharma',21,'9876543213','Nashik'),(5,'Rahul','Singh',25,'9876543214','Thane');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from studentI;
+---------+-----------+----------+------+------------+---------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address |
+---------+-----------+----------+------+------------+---------+
|       1 | Mahesh    | Pandhare |   22 | 9876543210 | Mumbai  |
|       2 | Kunal     | Pandhare |   24 | 9876543211 | Mumbai  |
|       3 | Viraj     | Patil    |   23 | 9876543212 | Pune    |
|       4 | Karan     | Sharma   |   21 | 9876543213 | Nashik  |
|       5 | Rahul     | Singh    |   25 | 9876543214 | Thane   |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.00 sec)

mysql> select * from studentI order by LastName asc;
+---------+-----------+----------+------+------------+---------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address |
+---------+-----------+----------+------+------------+---------+
|       1 | Mahesh    | Pandhare |   22 | 9876543210 | Mumbai  |
|       2 | Kunal     | Pandhare |   24 | 9876543211 | Mumbai  |
|       3 | Viraj     | Patil    |   23 | 9876543212 | Pune    |
|       4 | Karan     | Sharma   |   21 | 9876543213 | Nashik  |
|       5 | Rahul     | Singh    |   25 | 9876543214 | Thane   |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.01 sec)

mysql>
