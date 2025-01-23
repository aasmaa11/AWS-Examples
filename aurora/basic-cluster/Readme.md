## Install Postgres Client on EC2 Instance AXL2023 X86

```sh
sudo dnf install postgresql15.x83_64 postgresql15-server -y
```

## Connection String URL

postgresql://[user[:password]@][netloc][:port][/dbname][?param1-value1&...]
postgresql://postgres:mypassword@mydb-instance-1...ca-central-1.rds.amazonaws.com:5432/mydatabase

## Create a table

```sql
CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE,
    status VARCHAR(50),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
```
