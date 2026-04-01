CREATE DATABASE condo_management;
USE condo_management;
SHOW TABLES;

CREATE TABLE IF NOT EXISTS residents(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    apartment_number VARCHAR(255) NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO residents(first_name, last_name, email, apartment_number, is_active)
VALUES('Kenny', 'Romero', 'kennyr@gmail.com', '124', TRUE), 
      ('Patricia','Mendez','patym@gmail.com', '310', TRUE),
      ('Carlotta', 'Romero', 'carlottar@gmail.com', '211', FALSE);
      
SELECT * FROM residents;

SELECT first_name, last_name, apartment_number FROM residents
WHERE is_active IS TRUE
ORDER BY last_name;



