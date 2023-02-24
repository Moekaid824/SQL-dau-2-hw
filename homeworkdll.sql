DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE tickets(
    tickets_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    description_info VARCHAR(50)
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    food VARCHAR(50),
    drinks VARCHAR(50)
);

CREATE TABLE movies(
    movies_id SERIAL PRIMARY KEY,
    film VARCHAR(50),
    category_info VARCHAR(50),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    tickets_id INTEGER,
    FOREIGN KEY (tickets_id) REFERENCES tickets(tickets_id),
    concessions_id INTEGER,
    FOREIGN KEY (concessions_id) REFERENCES concessions(concessions_id)
);

ALTER TABLE movies
ADD customer_id INTEGER;