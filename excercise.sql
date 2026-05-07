CREATE TABLE IF NOT EXISTS products(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price INT
);


INSERT INTO products(name, price)
VALUES
('Keyboard', 80),
('Monitor', 300),
('Desk', 250),
('Office Chair', 150),
('Headphones', 120),
('USB-C Hub', 45),
('Webcam', 60),
('Smartphone', 800),
('Tablet', 400),
('Wireless Charger', 30),
('External Hard Drive', 110),
('Mousepad', 15),
('HDMI Cable', 10),
('Microphone', 90),
('Speakers', 130),
('Router', 85),
('Ethernet Cable', 8),
('Smartwatch', 250),
('Printer', 180),
('Ink Cartridge', 40);


select distinct (p.name),p.price  from products p
where p.price = (select max(p.price) from products p) ;

select distinct (p.name),p.price  from products p
where p.price > (select avg(p.price) from products p) ;
