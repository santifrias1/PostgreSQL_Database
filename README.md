# Database Project

This repository contains the **DDL** (schema definition), **DML** (seed/sample data) and **DQL** (data query) scripts for database modeling exercises (Entity and Relationship Diagrams).

## Working Environment

- **OS:** Debian GNU/Linux 13 (trixie)
- **Terminal:** kitty 0.41.1
- **Shell:** fish 4.0.2

## Prerequisites

- Git installed (`sudo apt install git`)
- PostgreSQL installed and running (`sudo apt install postgresql`), When the installation is complete, verify (`sudo systemctl status postgresql`) if it's not running, run this command (`sudo systemctl start postgresql`)

## Setup Instructions

### 1. Clone the repository

Using HTTPS:

```sh
git clone https://github.com/santifrias1/PostgreSQL_Database.git
```

Or using SSH:

```sh
git clone git@github.com:santifrias1/PostgreSQL_Database.git
```

### 2. Create the database

Access PostgreSQL as the `postgres` user and create a new database:

```sh
sudo -u postgres psql
```

```sql
CREATE DATABASE <database_name>;
\q
```

### 3. Navigate to the cloned repository

```sh
cd ~/PostgreSQL_Database
```

### 4. Load the schema (DDL)

```sh
sudo -u postgres psql -d <database_name> -f <database_name>_ddl.sql
```

### 5. Load the sample data (DML)

```sh
sudo -u postgres psql -d <database_name> -f <database_name>_dml.sql
```

### 6. Load the sample data (DQL)

```sh
sudo -u postgres psql -d <database_name> -f <database_name>_dql.sql
```

## Verifying the Setup

You can confirm the tables and data were loaded correctly by connecting to the database:

```sh
sudo -u postgres psql -d <database_name>
```

```sql
\dt
SELECT * FROM <some_table> LIMIT 3;
```

Alternatively, you can connect to the database using a graphical database client such as pgAdmin or DBeaver to browse the schema and inspect the loaded data visually.
