-- Create a users table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (username, email) VALUES 
    ('john_doe', 'john@example.com'),
    ('jane_smith', 'jane@example.com'),
    ('bob_wilson', 'bob@example.com');

-- Select all users
SELECT * FROM users;

-- Select specific columns
SELECT username, email FROM users WHERE id > 1;

-- Update a user
UPDATE users SET email = 'newemail@example.com' WHERE username = 'john_doe';

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
INNER JOIN orders o ON u.id = o.user_id;
