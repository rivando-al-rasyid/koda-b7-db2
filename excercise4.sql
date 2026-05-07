CREATE TABLE IF NOT EXISTS product(
    id SERIAL PRIMARY KEY,
    product varchar,
    price int
);

CREATE TABLE IF NOT EXISTS sales(
    id SERIAL PRIMARY KEY,
    product_id int REFERENCES product(id),
    quantity INT
);

insert into product( product, price)
VALUES
    ('laptop',1000 ),
    ('phone',600),
    ('tablet',400);

insert into sales(product_id, quantity)
VALUES
    (1,5),
    (2,10),
    (3,7),
    (1,3);


with countsales AS (
    select product_id, sum(quantity) as totalquan
    from sales
        group by product_id
            HAVING SUM(quantity) > 7
        )

select product.product , totalquan  from product
join countsales on product_id = product.id
