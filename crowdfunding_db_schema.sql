CREATE TABLE category (
    category_ids VARCHAR NOT NULL PRIMARY KEY,
    category VARCHAR NOT NULL
);

CREATE TABLE subcategory (
    subcategory_ids VARCHAR NOT NULL PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

CREATE TABLE contacts (
    contact_ids INT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_ids),
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal DECIMAL,
    pledge DECIMAL,
    outcome VARCHAR NOT NULL,
    backers_count INT,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date DATE,
    end_date DATE,
    staff_pick BOOLEAN,
    spotlight BOOLEAN,
    category_ids VARCHAR NOT NULL,
    FOREIGN KEY (category_ids) REFERENCES category(category_ids)
    subcategory_ids VARCHAR NOT NULL,
    FOREIGN KEY (subcategory_ids) REFERENCES subcategory(subcategory_ids)
);

SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;