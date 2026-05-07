CREATE TABLE IF NOT EXISTS products(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    price INT
);

INSERT INTO products(name, price)
VALUES ('Laptop', 1000),
('mouse', 50),
('Laptop', 200);



select distinct (p.name),p.price  from products p
where p.price = (select max(p.price) from products p) ;


