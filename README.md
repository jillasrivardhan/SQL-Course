# 🗄️ SQL Course & Database Practice

A hands-on SQL learning repository covering **DBMS fundamentals, SQL commands, database creation, table design, constraints, data types, CRUD operations, and practical database exercises** using MySQL.

This repository is designed to build strong SQL fundamentals through simple examples and practical tasks.

---

## 📌 About the Project

This project contains SQL practice scripts created while learning and practicing relational database concepts.

The main focus is on understanding how to:

- Create and manage databases
- Create and modify tables
- Define columns and data types
- Insert and retrieve records
- Update existing data
- Work with constraints
- Use default values
- Apply validation rules
- Understand auto-increment columns
- Practice real-world table structures

---

## 🛠️ Technologies Used

- **SQL**
- **MySQL**
- **Relational Database Management System (RDBMS)**

---

## 📂 Project Structure

```text
SQL-Course/
│
├── sql-task-1.sql
│
└── README.md
```

---

## 📚 Topics Covered

### 1. Database Creation

Basic database management commands are practiced:

```sql
SHOW DATABASES;

CREATE DATABASE sql_practice;

USE sql_practice;
```

These commands are used to:

- View available databases
- Create a new database
- Select a database for further operations

---

## 2. Creating Tables

The project demonstrates how to create tables with different columns and data types.

Example:

```sql
CREATE TABLE student(
    student_id INT UNIQUE AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age >= 18 AND age <= 30),
    city VARCHAR(100) DEFAULT "hyderabad"
);
```

---

## 3. SQL Data Types

The project uses several commonly used SQL data types:

| Data Type | Purpose |
|---|---|
| `INT` | Stores integer values |
| `BIGINT` | Stores large integer values |
| `VARCHAR` | Stores variable-length text |
| `DECIMAL` | Stores precise decimal numbers |
| `DATE` | Stores dates |

---

## 4. Constraints

Different SQL constraints are implemented throughout the project.

### UNIQUE

Ensures that duplicate values are not allowed.

```sql
email VARCHAR(100) UNIQUE
```

### NOT NULL

Ensures that a column cannot contain `NULL`.

```sql
name VARCHAR(50) NOT NULL
```

### CHECK

Validates values according to a condition.

```sql
age INT CHECK(age >= 18 AND age <= 30)
```

### DEFAULT

Automatically provides a value when no value is supplied.

```sql
city VARCHAR(100) DEFAULT "hyderabad"
```

### AUTO_INCREMENT

Automatically generates sequential numeric IDs.

```sql
student_id INT UNIQUE AUTO_INCREMENT
```

---

# 🧑‍🎓 Student Table

The first table created in the project is the `student` table.

### Structure

```text
student_id
email
name
age
city
```

### Example

```sql
INSERT INTO student(email, name, age, city)
VALUES("jilla@gmail.com", "lucky", 18, "sdpt");
```

Another record demonstrates the use of a default value:

```sql
INSERT INTO student(email, name, age)
VALUES("lucky@gmail.com", "jilla", 29);
```

Since `city` is not provided, the default value is used.

---

# 👨‍💼 Employee Table

The second table demonstrates employee-related information.

```sql
CREATE TABLE employee(
    emp_id INT UNIQUE AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2) CHECK(salary > 15000),
    doj DATE DEFAULT "2026-09-26"
);
```

### Fields

| Column | Description |
|---|---|
| `emp_id` | Unique employee ID |
| `emp_name` | Employee name |
| `email` | Employee email |
| `salary` | Employee salary |
| `doj` | Date of joining |

---

## 💰 Salary Validation

The `salary` column contains a `CHECK` constraint:

```sql
salary DECIMAL(10,2) CHECK(salary > 15000)
```

This ensures that the salary must be greater than `15000`.

---

## 📅 Default Date

The employee table demonstrates a default date:

```sql
doj DATE DEFAULT "2026-09-26"
```

If a date is not provided while inserting a record, the default date will be used.

---

# 📦 Products Table

The third table represents product information.

```sql
CREATE TABLE products(
    product_id INT UNIQUE AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    barcode INT UNIQUE,
    price BIGINT CHECK(price > 0),
    stock INT DEFAULT 0
);
```

### Fields

| Column | Purpose |
|---|---|
| `product_id` | Unique product ID |
| `product_name` | Product name |
| `barcode` | Unique product barcode |
| `price` | Product price |
| `stock` | Available stock |

### Example

```sql
INSERT INTO products(
    product_name,
    barcode,
    price,
    stock
)
VALUES(
    "iphone",
    123456,
    150000,
    2
);
```

---

# 👥 Customers Table

A bonus task is included to practice additional constraints.

```sql
CREATE TABLE customers(
    id INT UNIQUE AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(100) DEFAULT "siddipet",
    email VARCHAR(100) UNIQUE,
    items_count INT CHECK(items_count > 0)
);
```

### Fields

| Column | Purpose |
|---|---|
| `id` | Unique customer ID |
| `name` | Customer name |
| `city` | Customer city |
| `email` | Customer email |
| `items_count` | Number of items purchased |

---

## 🔍 SQL Commands Practiced

### Show Databases

```sql
SHOW DATABASES;
```

### Select Database

```sql
USE sql_practice;
```

### Show Tables

```sql
SHOW TABLES;
```

### Display Table Structure

```sql
DESC student;
```

### Retrieve Data

```sql
SELECT * FROM student;
```

### Insert Data

```sql
INSERT INTO student(email, name, age, city)
VALUES("example@gmail.com", "John", 22, "Hyderabad");
```

### Update Data

```sql
UPDATE employee
SET email = "lucy@gmail.com"
WHERE email = "12";
```

---

# 🧠 Key Learning Outcomes

Through this project, I practiced:

- Database creation
- Table creation
- SQL syntax
- Database selection
- Table inspection
- Data insertion
- Data retrieval
- Data updating
- Primary concepts of relational databases
- SQL data types
- Column constraints
- `AUTO_INCREMENT`
- `UNIQUE`
- `NOT NULL`
- `CHECK`
- `DEFAULT`
- Decimal precision
- Basic data validation
- Practical database design

---

# 🚀 How to Run

## 1. Install MySQL

Install MySQL Server and a SQL client such as:

- MySQL Workbench
- MySQL Command Line Client
- VS Code with a MySQL extension

## 2. Clone the Repository

```bash
git clone https://github.com/your-username/SQL-Course.git
```

## 3. Navigate to the Project

```bash
cd SQL-Course
```

## 4. Open the SQL File

Open:

```text
sql-task-1.sql
```

## 5. Execute the Queries

Run the SQL statements sequentially in your MySQL environment.

---

# ⚠️ Important Notes

The SQL script is intended for **learning and practice**.

Some examples intentionally demonstrate what happens when different types of values are inserted into columns.

For example:

```sql
INSERT INTO employee(emp_name, email, salary)
VALUES("lucky", "jilla", 15001);
```

SQL's `VARCHAR` type does not automatically validate whether a value is actually an email address. If email-format validation is required, additional application-level validation or database logic should be implemented.

---

# 📈 Learning Roadmap

The concepts in this repository can be extended into:

```text
SQL Basics
    ↓
Database & Table Creation
    ↓
Data Types
    ↓
Constraints
    ↓
INSERT / SELECT / UPDATE / DELETE
    ↓
Filtering & Sorting
    ↓
Aggregate Functions
    ↓
GROUP BY / HAVING
    ↓
JOINS
    ↓
Subqueries
    ↓
Views
    ↓
Indexes
    ↓
Transactions
    ↓
Stored Procedures
    ↓
Advanced SQL
```

---

# 🎯 Future Topics

Planned topics for further SQL practice:

- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- Aggregate Functions
- `LIKE`
- `IN`
- `BETWEEN`
- SQL Joins
- Primary Keys
- Foreign Keys
- Subqueries
- Views
- Indexes
- Transactions
- `COMMIT`
- `ROLLBACK`
- Normalization
- Advanced SQL Queries

---

# 💡 Project Goal

The goal of this repository is to build a strong foundation in **SQL and relational database management** through consistent practice and hands-on implementation.

> Learn the concepts → Write the queries → Practice with data → Build real-world database skills.

---

# 👨‍💻 Author

**Srivardhan Jilla**

B.Tech Computer Science & Engineering  
Indur Institute of Engineering & Technology  
Siddipet, Telangana, India

### Connect With Me

- GitHub: https://github.com/jillasrivardhan
- LinkedIn: https://www.linkedin.com/in/jilla-srivardhan/

---

# ⭐ Support

If you find this repository useful for learning SQL, consider giving it a ⭐ on GitHub.

---

## 📄 License

This project is created for educational and learning purposes.
