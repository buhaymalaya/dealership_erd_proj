CREATE TABLE staff(

    staff_id SERIAL PRIMARY KEY,
    staff_fname VARCHAR(50),
    staff_lname VARCHAR(50),
    dealership_id INTEGER,
    FOREIGN KEY (dealership_id) REFERENCES dealership(dealership_id)
);

CREATE TABLE dealership(

    dealership_id SERIAL PRIMARY KEY,
    dealer_name VARCHAR,
    dealer_address VARCHAR,
    dealer_phone INTEGER

);

CREATE TABLE customer(

    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dealership_id INTEGER,
    FOREIGN KEY (dealership_id) REFERENCES dealership(dealership_id)
);

-- If editions are needed, follow syntax:

-- ALTER TABLE movie
-- DROP name;

-- ALTER TABLE movie
-- ADD movie_name VARCHAR;

CREATE TABLE invoice(

    invoice_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    total_sale NUMERIC(10,2),
    invoice_date TIMESTAMP
);

CREATE TABLE service(

    service_ticket SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    staff_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    history VARCHAR(100),
    service_date TIMESTAMP
);