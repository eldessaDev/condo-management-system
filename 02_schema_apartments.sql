USE condo_management;

CREATE TABLE IF NOT EXISTS apartments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    apartment_number VARCHAR(255) UNIQUE NOT NULL,
    floor_number INT NOT NULL,
    building_block VARCHAR(255) NOT NULL,
    maintenance_fee DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO apartments (apartment_number, floor_number, building_block, maintenance_fee)
VALUES ('124', 1, 'A', 350.00),  -- Este será el id 1
       ('310', 3, 'B', 450.00),  -- Este será el id 2
       ('211', 2, 'A', 350.00);

SELECT * FROM apartments;
