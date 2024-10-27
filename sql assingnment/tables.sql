CREATE TABLE customers (
    customer_id number PRIMARY KEY,
    customer_name varchar2(100) not null,
    email_address varchar2(100),
    country varchar2(100)
);

-- Products Table
CREATE TABLE products (
    product_id number PRIMARY KEY,
    product_name varchar2(100) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    category varchar2(100)
);

-- Sales Transactions Table
CREATE TABLE sales_transactions (
    transaction_id number PRIMARY KEY,
    customer_id number REFERENCES customers(customer_id),
    product_id number REFERENCES products(product_id),
    purchase_date DATE NOT NULL,
    quantity_purchased INT NOT NULL
);

-- Shipping Details Table
CREATE TABLE shipping_details (
    transaction_id number PRIMARY KEY REFERENCES sales_transactions(transaction_id),
    shipping_date DATE NOT NULL,
    shipping_address varchar2(300) NOT NULL,
    city varchar2(100),
    country varchar2(100)
);