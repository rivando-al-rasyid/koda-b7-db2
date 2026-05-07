CREATE TABLE IF NOT EXISTS transactionelectro(
    id SERIAL PRIMARY KEY,
    customer_id int,
    product varchar,
    quantity INT,
    price_per_unit int
);

-- TRUNCATE TABLE transaction

INSERT INTO transactionelectro(customer_id,product,quantity,price_per_unit)
VALUES
(101,'keyboard',2,25),
(102,'mouse',1,15),
(101,'monitor',1,200),
(103,'keyboard',1,25),
(101,'mouse',3,15)

with calculate AS (
    SELECT customer_id, product ,  sum(quantity) AS totalquan,sum(quantity * price_per_unit)  as totaltrans
    from transactionelectro
        group by customer_id ,product )

SELECT customer_id,product, totaltrans
FROM calculate
where product = 'keyboard' and totaltrans > 30;






-- select t.customer_id,t.amount  from transaction t
-- where (select avg(t2.amount) from transaction t2);
