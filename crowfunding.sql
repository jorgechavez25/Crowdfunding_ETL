create table campaign(   
	"cf_id" FLOAT NOT null,   	
	"contact_id" FLOAT NOT null,   	
	"company_name" VARCHAR(75),   	
	"description" VARCHAR(100),   	
	"goal" FLOAT NOT null,   
	"pledged" FLOAT NOT null,   	
	"outcome" VARCHAR(30),   	
	"backers_count" INT NOT null,   	
	"country" VARCHAR(2),   	
	"currency" VARCHAR(3),   
	"launched_date" VARCHAR(30),   	
	"end_date" VARCHAR(30),   	
	"category_id" VARCHAR(5),   	
	"subcategory_id" VARCHAR(15),
	PRIMARY KEY ("category_id","subcategory_id","contact_id"));   	   
	
	create table subcategory( 
	"subcategory_id" VARCHAR(20) NOT NULL PRIMARY KEY,   	
	"sub-category" VARCHAR(30) NOT null );
	
	create table category(
		"category_id" VARCHAR(30) NOT null PRIMARY KEY,
		"category" VARCHAR(30) NOT null);
	
	create table contacts(   	
		"contact_id" FLOAT NOT null PRIMARY KEY,   	
		"first_name" VARCHAR(30) NOT null,   	
		"last_name" VARCHAR(30) NOT null ,   	
		"email" VARCHAR(75) NOT null);
		
	ALTER TABLE campaign    ADD CONSTRAINT fk_campaign_category FOREIGN KEY (category_id) REFERENCES category(category_id);	       
	ALTER TABLE campaign    ADD CONSTRAINT fk_campaign_subcategory FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id);	   	   
	ALTER TABLE campaign    ADD CONSTRAINT fk_campaign_contact FOREIGN KEY (contact_id) REFERENCES contacts(contact_id);
	
	SELECT * FROM campaign;     
	SELECT * FROM contacts;       
	SELECT * FROM category;       
	SELECT * FROM subcategory;
	