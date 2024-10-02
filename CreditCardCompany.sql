-- CREATE TABLE country(
-- 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	country_name VARCHAR(50)
-- );

-- CREATE TABLE card_type(
-- 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	card_type_name VARCHAR(50)
-- );

-- CREATE TABLE customer(
-- 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	nin INT,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	country_id INT,
-- 	CONSTRAINT fk_country
-- 	FOREIGN KEY(country_id)
-- 	REFERENCES country(id)
-- );

-- CREATE TABLE card_number(
-- 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	card_number INT,
-- 	customer_id INT,
-- 	card_type_id INT,
-- 	CONSTRAINT fk_customer
-- 	FOREIGN KEY(customer_id)
-- 	REFERENCES customer(id),
-- 	CONSTRAINT fk_card_type
-- 	FOREIGN KEY(card_type_id)
-- 	REFERENCES card_type(id)
-- );

-- CREATE TABLE card_transaction(
-- 	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
-- 	date DATE,
-- 	amount NUMERIC(12,2),
-- 	card_number_id INT,
-- 	CONSTRAINT fk_card_number
-- 	FOREIGN KEY(card_number_id)
-- 	REFERENCES card_number(id)
-- );

-- INSERT INTO country (country_name)
-- VALUES 
-- ('United States'),
-- ('Canada'),
-- ('Mexico'),
-- ('Germany'),
-- ('Japan');

-- INSERT INTO card_type (card_type_name)
-- VALUES 
-- ('Visa'),
-- ('MasterCard'),
-- ('Amex'),
-- ('Discover'),
-- ('UnionPay');

-- INSERT INTO customer (nin, first_name, last_name, country_id)
-- VALUES 
-- (123456789, 'John', 'Doe', 6),
-- (987654321, 'Jane', 'Smith', 7),
-- (456789123, 'Carlos', 'Mendez', 6),
-- (321654987, 'Hans', 'Mueller', 8),
-- (789456123, 'Yuki', 'Tanaka', 9);

-- INSERT INTO card_number (card_number, customer_id, card_type_id)
-- VALUES 
-- (11112222, 11,6),
-- (55556666, 12,7),
-- (99990000, 13,7),
-- (33334444, 14, 8),
-- (77778888, 15, 8);

-- INSERT INTO card_transaction (date, amount, card_number_id)
-- VALUES 
-- ('2024-09-01', 150.75, 6),
-- ('2024-09-02', 300.50, 7),
-- ('2024-09-03', 450.25, 8),
-- ('2024-09-04', 75.99, 8),
-- ('2024-09-05', 1200.00, 10);



-- SELECT EXTRACT(YEAR FROM date),
-- EXTRACT (QUARTER FROM date),
-- COUNT(amount)
-- FROM card_transaction
-- GROUP BY EXTRACT(YEAR FROM date),
-- EXTRACT (QUARTER FROM date)
-- ORDER BY EXTRACT(YEAR FROM date),
-- EXTRACT (QUARTER FROM date);



