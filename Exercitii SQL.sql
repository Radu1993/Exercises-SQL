CREATE TABLE b_employees (
    employee_id   NUMBER(4) PRIMARY KEY,
    name          VARCHAR2(100),
    manager_id    NUMBER(4),
    salary        NUMBER(8, 2),
    hire_date     DATE
);

INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
VALUES (100, 'Smith', 104, 4000, NULL);

INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
VALUES  (101, 'Williams' ,  103,  6500, NULL);   

INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(102, 'Brown', 101, 3000, NULL);
 
 INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(103, 'Miller', NULL, 9000, NULL);
 
 INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(104, 'Garcia', 103, 7000, NULL);
 
 INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(105, 'Taylor', 101, 4500, NULL);
 
 INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(106, 'White', 104, 2500, NULL);
 
 INSERT INTO b_employees (employee_id, name, manager_id, salary, hire_date)
 VALUES(107, 'Lee', 104, 2500, NULL);
 
ALTER TABLE b_employees DROP COLUMN hire_date;

    CREATE TABLE a_orders(id NUMBER(2) PRIMARY KEY, 
                            name VARCHAR2(3));

 ALTER TABLE a_orders ADD discount NUMBER(2);
 
    DESCRIBE a_orders;
    
    ALTER TABLE  a_orders 
    ADD CONSTRAINT discount_check
    CHECK (discount BETWEEN 0 AND 3);