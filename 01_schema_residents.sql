CREATE DATABASE condo_management;
USE condo_management;
SHOW TABLES;

DROP TABLE residents;

CREATE TABLE IF NOT EXISTS residents(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    apartment_id INT NOT NULL,
    is_active BOOLEAN NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY(apartment_id) REFERENCES apartments(id)
);

INSERT INTO residents(first_name, last_name, email, apartment_id, is_active)
VALUES('Kenny', 'Romero', 'kennyr@gmail.com', 1, TRUE), 
      ('Patricia','Mendez','patym@gmail.com', 2, TRUE),
      ('Carlotta', 'Romero', 'carlottar@gmail.com', 3, FALSE);
      
SELECT * FROM residents;

SELECT r.first_name, r.last_name, a.apartment_number, a.building_block FROM residents r 
JOIN apartments a ON r.apartment_id = a.id
WHERE r.is_active IS TRUE;



