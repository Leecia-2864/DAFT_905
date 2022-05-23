DROP DATABASE IF EXISTS Business;
CREATE DATABASE Business;
USE Business; 

CREATE TABLE customers (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    customers_id INTEGER,
    name VARCHAR(255) UNIQUE NOT NULL,
    phone_number varchar(20),
    email VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    postal VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE cars (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    vin_id VARCHAR(255) NOT NULL,
    manufacturer VARCHAR(255)  NOT NULL,
    model VARCHAR(255),
    year VARCHAR(255),
    color VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE salesperson (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    staff_id INTEGER ,
    name VARCHAR(255) NOT NULL,
    store VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE invoices(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    invoice_id INTEGER NOT NULL ,
    date varchar(20),
    car VARCHAR(255) NOT NULL,
    customer VARCHAR(255) NOT NULL,
    salesperson VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
    );
    
    
INSERT INTO cars( vin_id, manufacturer, model, year, color)
VALUES ('K096I98581DHSNUP', 'Volkswagen',  'Tiguan', 2019 , 'Blue' ),
 ('ZM8G7BEUQZ97IH46V', 'Peugeot',  'Rifter', 2019 , 'Red' ),
 ('RKXVNNIHLVVZOUB4M', 'Ford',  'Fusion', 2018 , 'White' ),
 ('HKNDGS7CU31E9Z7JW', 'Toyota',  'RAV4', 2018 , 'Silver' ),
('DAM41UDN3CHU2WVF6', 'Volvo',  'V60', 2019 , 'Gray' ),
 ('DAM41UDN3CHU2WVF6', 'Volvo',  'V60 Cross Country', 2019 , 'Gray' );
 
 INSERT INTO customers( customers_id, name, phone_number, email, address, city,state, country, postal)
VALUES (10001,'Pablo Picasso', '+34 636 17 63 82' , '-', 'Paseo de la Chopera, 14',  'Madrid', 'Madrid' , 'Spain', 28045 ),
(20001,'Abraham Lincoln', '+1 305 907 7086' , '-','120 SW 8th St',  'Miami', 'Florida' , 'United States', 33130 ),
 (30001,'Napoléon Bonaparte', '+33 1 79 75 40 00' , '-','40 Rue du Colisée',  'Paris', 'Île-de-France' , 'France', 75008 );

INSERT INTO salesperson( staff_id, name, store)
VALUES ('00001', 'Petey Cruiser' , 'Madrid ' ),
 ('00002', 'Anna Sthesia' , 'Barcelona  ' ),
 ('00003', 'Paul Molive' , 'Berlin' ),
 ('00004', 'Gail Forcewind' , 'Paris' ),
 ('00005', 'Paige Turner' , 'Mimia ' ),
 ('00006', 'Bob Frapples' , 'Mexico City' ),
 ('00005', 'Walter Melon' , 'Amsterdam' ),
 ('00005', 'Shonda Leer' , 'São Paulo' );
 
INSERT INTO invoices( invoice_id, date, car, customer,salesperson)
VALUES (852399038, '22-08-2018', 0, 1, 3 ),
 ( 731166526, '31-12-2018', 3, 0, 5 ),
 (271135104, '22-01-2019', 2, 2, 7 );
 

