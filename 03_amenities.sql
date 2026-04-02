USE condo_management;

CREATE TABLE IF NOT EXISTS amenities(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    capacity INT,
    is_available BOOLEAN DEFAULT TRUE
); 