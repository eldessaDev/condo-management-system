CREATE TABLE IF NOT EXISTS hoa_payments(
    id INT AUTO_INCREMENT PRIMARY KEY ,
    resident_id INT NOT NULL,
    apartment_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    billing_month TINYINT NOT NULL,
    billing_year SMALLINT NOT NULL,
    payment_status ENUM('paid', 'pending', 'late') DEFAULT 'pending',
    payment_method ENUM('credit_card', 'debit_card', 'bank_transfer', 'check') NOT NULL,
    FOREIGN KEY(resident_id) REFERENCES residents(id),
    FOREIGN KEY(apartment_id) REFERENCES apartments(id)
);