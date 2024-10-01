CREATE TABLE country(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	country_name VARCHAR(50)
);

CREATE TABLE card_type(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	card_type_name VARCHAR(50)
);

CREATE TABLE customer(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nin INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	country_id INT,
	CONSTRAINT fk_country
	FOREIGN KEY(country_id)
	REFERENCES country(id)
);

CREATE TABLE card_number(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	card_number INT,
	customer_id INT,
	card_type_id INT,
	CONSTRAINT fk_customer
	FOREIGN KEY(customer_id)
	REFERENCES customer(id),
	CONSTRAINT fk_card_type
	FOREIGN KEY(card_type_id)
	REFERENCES card_type(id)
);

CREATE TABLE card_transaction(
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	date DATE,
	amount NUMERIC(12,2),
	card_number_id INT,
	CONSTRAINT fk_card_number
	FOREIGN KEY(card_number_id)
	REFERENCES card_number(id)
)