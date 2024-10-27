-- Insert data into the customers table
INSERT INTO customers (customer_id, customer_name, email_address, country) VALUES
((select count(customer_id)+1 from customers),'John Doe', 'john.doe@example.com', 'USA');
INSERT INTO customers (customer_id, customer_name, email_address, country) VALUES
((select count(customer_id)+1 from customers),'Jane Smith', 'jane.smith@example.com', 'Canada');
INSERT INTO customers (customer_id, customer_name, email_address, country) VALUES
((select count(customer_id)+1 from customers),'David Lee', 'david.lee@example.com', 'UK');
INSERT INTO customers (customer_id, customer_name, email_address, country) VALUES
((select count(customer_id)+1 from customers),'Sarah Brown', 'sarah.brown@example.com', 'Australia');
commit;

-- Insert data into the products table
INSERT INTO products (product_id, product_name, price, category) VALUES
((select count(product_id)+1 from products),'Laptop', 1200, 'Electronics');
INSERT INTO products (product_id, product_name, price, category) VALUES
((select count(product_id)+1 from products),'Keyboard', 75, 'Electronics');
INSERT INTO products (product_id, product_name, price, category) VALUES
((select count(product_id)+1 from products),'Mouse', 25, 'Electronics');
INSERT INTO products (product_id, product_name, price, category) VALUES
((select count(product_id)+1 from products),'T-shirt', 20, 'Clothing');
INSERT INTO products (product_id, product_name, price, category) VALUES
((select count(product_id)+1 from products),'Jeans', 50, 'Clothing');
commit;

-- Insert data into the sales_transactions table
INSERT INTO sales_transactions (transaction_id, customer_id, product_id, purchase_date, quantity_purchased) VALUES
((select count(transaction_id)+1 from sales_transactions), 1, 1, to_date('2024-01-15', 'yyyy-mm-dd'), 1);
INSERT INTO sales_transactions (transaction_id, customer_id, product_id, purchase_date, quantity_purchased) VALUES
((select count(transaction_id)+1 from sales_transactions), 2, 2, to_date('2024-02-20', 'yyyy-mm-dd'), 2);
INSERT INTO sales_transactions (transaction_id, customer_id, product_id, purchase_date, quantity_purchased) VALUES
((select count(transaction_id)+1 from sales_transactions), 3, 3, to_date('2024-03-10', 'yyyy-mm-dd'), 1);
INSERT INTO sales_transactions (transaction_id, customer_id, product_id, purchase_date, quantity_purchased) VALUES
((select count(transaction_id)+1 from sales_transactions), 4, 4, to_date('2024-04-05', 'yyyy-mm-dd'), 3);
INSERT INTO sales_transactions (transaction_id, customer_id, product_id, purchase_date, quantity_purchased) VALUES
((select count(transaction_id)+1 from sales_transactions), 1, 5, to_date('2024-05-12', 'yyyy-mm-dd'), 2);
commit;

-- Insert data into the shipping_details table
INSERT INTO shipping_details (transaction_id, shipping_date, shipping_address, city, country) VALUES
(1, to_date('2024-01-18', 'yyyy-mm-dd'), '123 Main St', 'Anytown', 'USA');
INSERT INTO shipping_details (transaction_id, shipping_date, shipping_address, city, country) VALUES
(2, to_date('2024-02-22', 'yyyy-mm-dd'), '456 Oak Ave', 'Somecity', 'Canada');
INSERT INTO shipping_details (transaction_id, shipping_date, shipping_address, city, country) VALUES
(3, to_date('2024-03-12', 'yyyy-mm-dd'), '789 Pine Ln', 'Otherville', 'UK');
INSERT INTO shipping_details (transaction_id, shipping_date, shipping_address, city, country) VALUES
(4, to_date('2024-04-07', 'yyyy-mm-dd'), '101 Elm Rd', 'Newtown', 'Australia');
INSERT INTO shipping_details (transaction_id, shipping_date, shipping_address, city, country) VALUES
(5, to_date('2024-05-15', 'yyyy-mm-dd'), '202 Maple Dr', 'Oldtown', 'USA');

commit;