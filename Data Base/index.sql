CREATE TABLE Cars (
  id INTEGER PRIMARY KEY,
  brand VARCHAR(50),
  model VARCHAR(50),
  value DOUBLE
);

CREATE TABLE Sales (
  id INTEGER PRIMARY KEY,
  car_id INTEGER,
  client_id INTEGER,
  seal_date DATE,
  value DOUBLE,
  FOREIGN KEY (car_id) REFERENCES Cars(id),
  FOREIGN KEY (client_id) REFERENCES Clients(id)
);

CREATE TABLE Clients (
  id INTEGER PRIMARY KEY,
  Name VARCHAR(200),
  email VARCHAR(200),
  phone INTEGER,
  address VARCHAR(200)
);