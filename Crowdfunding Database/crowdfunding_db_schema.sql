CREATE TABLE category(
	category_id VARCHAR NOT NULL,
	category VARCHAR NOT NULL,
	PRIMARY KEY(category_id)
);
SELECT * FROM category;


CREATE TABLE subcategory(
	subcategory_id VARCHAR NOT NULL,
	subcategory VARCHAR NOT NULL,
	PRIMARY KEY(subcategory_id)
);
SELECT * FROM subcategory;


CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	CONSTRAINT pk_contacts PRIMARY KEY(contact_id)
);
SELECT * FROM contacts LIMIT 10;


CREATE TABLE campaign(
	cf_id INT NOT NULL, 
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	CONSTRAINT pk_campaign PRIMARY KEY(cf_id)
);
SELECT * FROM campaign LIMIT 10;


