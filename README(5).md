# 🗄️ SQL Course & Database Practice

A structured **MySQL learning and practice repository** designed to build strong fundamentals in SQL through hands-on database creation, table design, data manipulation, queries, clauses, joins, and real-world database projects.

This repository contains SQL exercises and mini database projects covering concepts from **beginner to intermediate level**, with a focus on writing practical and reusable SQL queries.

---

## 📌 About This Repository

This project was created as part of a structured SQL learning journey.

The repository focuses on:

- Database creation
- Table creation and modification
- Data types
- Primary and foreign keys
- Constraints
- CRUD operations
- SQL clauses
- Aggregate functions
- Joins
- Real-world database design
- Practice tasks and exercises

The goal is to move from **basic SQL syntax to practical database problem-solving**.

---

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| **MySQL** | Database management system |
| **SQL** | Database querying and manipulation |
| **MySQL Workbench** | SQL development and execution |

---

## 📂 Project Structure

```text
SQL-Course/
│
├── README.md
│
├── sql-task-1.sql
│
├── Task-1-tables.sql
├── Task-2-perform-commands.sql
│
├── Day-6-Task-1-clauses.sql
├── Day-6-Task-2.sql
├── Day-7-Task.sql
├── Day-8-task.sql
│
├── hospital management database.sql
│
└── online shopping database.sql
```

---

# 📚 Topics Covered

## 1. Database Fundamentals

The repository starts with fundamental database concepts such as:

- Creating databases
- Selecting databases
- Creating tables
- Viewing table structures
- Modifying tables
- Deleting tables

### Example

```sql
CREATE DATABASE college;

USE college;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    marks INT
);
```

---

# 2. SQL Data Types

Different MySQL data types are practiced according to the type of information being stored.

### Commonly Used Types

- `INT`
- `VARCHAR`
- `CHAR`
- `DATE`
- `DATETIME`
- `DECIMAL`
- `FLOAT`
- `TEXT`

### Example

```sql
CREATE TABLE employee (
    employee_id INT,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2),
    joining_date DATE
);
```

---

# 3. Constraints

SQL constraints are used to maintain data accuracy and integrity.

The repository practices:

- `PRIMARY KEY`
- `FOREIGN KEY`
- `NOT NULL`
- `UNIQUE`
- `DEFAULT`
- `CHECK`

### Example

```sql
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 18),
    city VARCHAR(50) DEFAULT 'Hyderabad'
);
```

---

# 4. CRUD Operations

The repository includes practical examples of the four fundamental database operations.

### CREATE / INSERT

```sql
INSERT INTO student
VALUES (1, 'Rahul', 21, 85);
```

### READ / SELECT

```sql
SELECT * FROM student;
```

### UPDATE

```sql
UPDATE student
SET marks = 90
WHERE id = 1;
```

### DELETE

```sql
DELETE FROM student
WHERE id = 1;
```

---

# 5. Table Modification

SQL commands are used to modify existing tables.

### Add a Column

```sql
ALTER TABLE student
ADD email VARCHAR(100);
```

### Modify a Column

```sql
ALTER TABLE student
MODIFY name VARCHAR(100);
```

### Drop a Column

```sql
ALTER TABLE student
DROP COLUMN email;
```

---

# 6. SQL Clauses

The repository contains dedicated practice for SQL clauses and filtering data.

Topics include:

- `WHERE`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`
- `DISTINCT`

### Example

```sql
SELECT city, COUNT(*) AS total_students
FROM student
GROUP BY city
HAVING COUNT(*) > 2
ORDER BY total_students DESC;
```

---

# 7. Aggregate Functions

Aggregate functions are used to perform calculations on multiple rows.

The practice includes:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`

### Example

```sql
SELECT
    COUNT(*) AS total_students,
    AVG(marks) AS average_marks,
    MAX(marks) AS highest_marks,
    MIN(marks) AS lowest_marks
FROM student;
```

---

# 8. Real-World Database Projects

The repository also contains practical database designs to understand how SQL is applied to real-world systems.

## 🏥 Hospital Management Database

The hospital management database demonstrates how SQL can be used to organize healthcare-related information.

Possible entities include:

- Patients
- Doctors
- Departments
- Appointments
- Medical records
- Billing information

This project helps practice relationships between multiple tables using keys.

---

## 🛒 Online Shopping Database

The online shopping database demonstrates database design for an e-commerce system.

It provides practice with concepts such as:

- Customers
- Products
- Orders
- Order details
- Payments
- Product information

This project helps understand how multiple related tables work together in a real-world application.

---

# 📁 SQL Files

| File | Purpose |
|---|---|
| `sql-task-1.sql` | Initial SQL/database practice |
| `Task-1-tables.sql` | Table creation and schema practice |
| `Task-2-perform-commands.sql` | SQL command practice |
| `Day-6-Task-1-clauses.sql` | SQL clauses practice |
| `Day-6-Task-2.sql` | Additional SQL exercises |
| `Day-7-Task.sql` | SQL practice tasks |
| `Day-8-task.sql` | Advanced practice exercises |
| `hospital management database.sql` | Hospital database project |
| `online shopping database.sql` | E-commerce database project |

---

# 🚀 How to Run

## Step 1: Install MySQL

Install:

- MySQL Server
- MySQL Workbench

## Step 2: Clone the Repository

```bash
git clone https://github.com/your-username/SQL-Course.git
```

## Step 3: Open MySQL Workbench

Open the required `.sql` file in MySQL Workbench.

## Step 4: Select the Database

For scripts containing database creation commands, execute the database creation statement first.

```sql
CREATE DATABASE database_name;

USE database_name;
```

## Step 5: Execute the SQL

Run the SQL statements using:

```text
Ctrl + Enter
```

or execute the complete script using the MySQL Workbench execute button.

---

# 🧠 Learning Approach

This repository follows a practical progression:

```text
SQL Fundamentals
       ↓
Database Creation
       ↓
Table Creation
       ↓
Data Types
       ↓
Constraints
       ↓
INSERT / SELECT / UPDATE / DELETE
       ↓
ALTER TABLE
       ↓
SQL Clauses
       ↓
Aggregate Functions
       ↓
Relationships
       ↓
Real-World Database Projects
```

---

# 🎯 Learning Objectives

By completing the exercises in this repository, you will gain practical experience in:

- Designing relational databases
- Creating tables with appropriate data types
- Applying primary and foreign keys
- Maintaining data integrity
- Performing CRUD operations
- Filtering and sorting records
- Grouping and aggregating data
- Writing practical SQL queries
- Understanding table relationships
- Designing small real-world database systems

---

# 💡 Skills Practiced

```text
SQL
├── Database Creation
├── Table Design
├── Data Types
├── Primary Keys
├── Foreign Keys
├── Constraints
├── CRUD Operations
├── ALTER TABLE
├── WHERE
├── GROUP BY
├── HAVING
├── ORDER BY
├── Aggregate Functions
├── Relational Database Design
└── Real-World Database Projects
```

---

# 🔮 Future Improvements

The repository can be extended with more advanced SQL concepts such as:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- SELF JOIN
- Subqueries
- Views
- Common Table Expressions (CTEs)
- Window Functions
- Stored Procedures
- Functions
- Triggers
- Indexing
- Transactions
- Database Normalization
- Query Optimization

---

# 📌 Purpose

This repository is primarily intended for:

- SQL beginners
- Database practice
- Interview preparation
- Academic learning
- MySQL practice
- Building database fundamentals
- Understanding real-world relational database design

---

# 👨‍💻 Author

**Srivardhan Jilla**

GitHub:  
https://github.com/jillasrivardhan

LinkedIn:  
https://www.linkedin.com/in/jilla-srivardhan/

---

# ⭐ Support

If this repository helps you learn SQL, consider giving it a ⭐ on GitHub.

**Keep practicing, keep building, and keep improving your SQL skills! 🚀**
