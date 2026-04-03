CREATE TABLE IF NOT EXISTS amenity_bookings(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    amenity_id INT NOT NULL, 
    resident_id INT NOT NULL,
    booking_date DATE NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    FOREIGN KEY(amenity_id) REFERENCES amenities(id),
    FOREIGN KEY(resident_id) REFERENCES residents(id)

);