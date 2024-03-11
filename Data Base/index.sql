CREATE TABLE cars (
  id INTEGER PRIMARY KEY,
  brand VARCHAR(50),
  model VARCHAR(50),
  value DOUBLE
);

CREATE TABLE sales (
  id INTEGER PRIMARY KEY,
  car_id INTEGER,
  client_id INTEGER,
  seal_date DATE,
  value DOUBLE,
  FOREIGN KEY (car_id) REFERENCES Cars(id),
  FOREIGN KEY (client_id) REFERENCES Clients(id)
);

CREATE TABLE clients (
  id INTEGER PRIMARY KEY,
  Name VARCHAR(200),
  email VARCHAR(200),
  phone INTEGER,
  address VARCHAR(200)
);
CREATE TABLE prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2)
);
ALTER TABLE clients 
  ADD COLUMN age INTEGER ;

DROP TABLE prices

INSERT INTO cars(id, car_id, brand, model, car_year, color, price)
VALUES(1, 1, 'Tesla', 'Model Y', 2020, 'Blue', 48990);

INSERT INTO clients(id, name, email, phone, adress, age)
VALUES(2, 'Lucas Cunha', 'lucas.cunhagalvao@gmail.com', '5583998822014', '25 Notre Dame Ave', 20)

INSERT INTO seals (id, car_id, client_id, phone, seal_date, seal_value)
VALUES(3, 1, 2, '83998822014', '24/03/2025', 43698)
