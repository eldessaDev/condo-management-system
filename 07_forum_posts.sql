CREATE TABLE IF NOT EXISTS forum_posts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    resident_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(resident_id) REFERENCES residents(id)
);