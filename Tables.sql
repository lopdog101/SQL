CREATE TABLE Products (
	id int PRIMARY KEY,
	name_prod varchar(255) NOT NULL,
);

CREATE TABLE Category (
	id INT PRIMARY KEY,
	name_cat NVARCHAR(255) NOT NULL
);

CREATE TABLE ProdCateg (
	prod_id  INT not null,
	categ_id INT not null
);


SELECT p.name_prod 'Products', p.name_cat 'Category' FROM Products p
LEFT JOIN ProdCateg ON Products.id = ProdCateg.id
INNER JOIN Category cat ON cat.id = prodcat.category_id;