CREATE TABLE IF NOT EXISTS transaction(
    id SERIAL PRIMARY KEY,
    customer_id int,
    amount INT
);

-- TRUNCATE TABLE transaction

INSERT INTO transaction(customer_id, amount)
VALUES
('101', 500),
('101', 300),
('102', 150);


select t.customer_id,t.amount, (select avg(t2.amount) from transaction t2
where t.customer_id = t2.customer_id ) as average  from transaction t
where t.amount  >= (select avg(t2.amount) from transaction t2
where t.customer_id = t2.customer_id ) ;





-- select t.customer_id,t.amount  from transaction t
-- where (select avg(t2.amount) from transaction t2);
