-- Delete a user
DELETE FROM users WHERE id = 3;

-- Create an orders table with foreign key
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    product_name VARCHAR(100),
    quantity INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Join query
SELECT u.username, o.product_name, o.quantity 
FROM users u 