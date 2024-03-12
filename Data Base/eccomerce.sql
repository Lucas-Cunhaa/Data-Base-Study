CREATE TABLE products(
	id INTEGER PRIMARY KEY,
	product_name VARCHAR(100), 
	price DECIMAL(10, 2), 
	category VARCHAR(100)
);
CREATE TABLE seals (
	id INTEGER PRIMARY KEY,
	client_id INTEGER,
	product_id INTEGER, 
	quantity  INTEGER ,
	seal_date DATE,
	FOREIGN KEY (client_id) REFERENCES clients(id),
	FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE clients (
	id INTEGER PRIMARY KEY,
	client_name VARCHAR(100),
	email VARCHAR(100)
);

INSERT INTO products 
	VALUES(1, 'Mouse', 100, 'informatic' );
	VALUES(2, 'KeyBord', 140, 'informatic' );
	VALUES(3, 'Headset', 130, 'informatic' );

INSERT INTO clients
	VALUES(1, 'Lucas', 'lucas123@gmail.com' );
	VALUES(2, 'Gustavo', 'gugas123@gmail.com' );

INSERT INTO seals 
    VALUES(1, 1, 1, 35, '24/07/2023')
	VALUES(2, 1, 2, 35, '24/07/2023')
	VALUES(3, 2, 1, 35, '24/07/2023')
	VALUES(4, 1, 3, 35, '24/07/2023');

SELECT * FROM products;

SELECT product_id FROM seals
WHERE product_id = 1;



SELECT clients.client_name 
FROM clients 
INNER JOIN seals ON  seals.client_id = clients.id;

SELECT * 
FROM seals
INNER JOIN products ON  products.id = seals.product_id

