Drop Database AD_Bikestores;

-- Creating a new database with name Bikestores
Create or Replace Database AD_Bikestores; 

Use AD_Bikestores;

Drop Schema sales;
Drop Schema production;

-- Creating Schema Sales and Production.
Create or Replace Schema sales;
Create or Replace Schema production;

-- Creating Table Brand.
Create or Replace Table production.brands
(
	brand_id INT PRIMARY KEY,
    brand_name VARCHAR (100)
);

Delete From production.brands;

Select count(*) From production.brands;-- 9 rows

Select * From  production.brands;

-- Creating Table Categories.
Create or Replace Table production.categories
(
	category_id INT PRIMARY KEY,
    category_name VARCHAR (100)
);

Select count(*) from production.categories;-- 7 rows
Select * From production.categories;

-- Creating Table products.
Create or Replace Table production.products
(
	product_id INT PRIMARY KEY, 
    product_name VARCHAR (200), 
    brand_id INT, 
    category_id INT, 
    model_year INT , 
    list_price DECIMAL (10,2)
);

INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(1,'Trek 820 - 2016',9,6,2016,379.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(2,'Ritchey Timberwolf Frameset - 2016',5,6,2016,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(3,'Surly Wednesday Frameset - 2016',8,6,2016,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(4,'Trek Fuel EX 8 29 - 2016',9,6,2016,2899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(5,'Heller Shagamaw Frame - 2016',3,6,2016,1320.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(6,'Surly Ice Cream Truck Frameset - 2016',8,6,2016,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(7,'Trek Slash 8 27.5 - 2016',9,6,2016,3999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(8,'Trek Remedy 29 Carbon Frameset - 2016',9,6,2016,1799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(9,'Trek Conduit+ - 2016',9,5,2016,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(10,'Surly Straggler - 2016',8,4,2016,1549);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(11,'Surly Straggler 650b - 2016',8,4,2016,1680.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(12,'Electra Townie Original 21D - 2016',1,3,2016,549.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(13,'Electra Cruiser 1 (24-Inch) - 2016',1,3,2016,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(14,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,3,2016,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(15,'Electra Moto 1 - 2016',1,3,2016,529.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(16,'Electra Townie Original 7D EQ - 2016',1,3,2016,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(17,'Pure Cycles Vine 8-Speed - 2016',4,3,2016,429);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(18,'Pure Cycles Western 3-Speed - Women''s - 2015/2016',4,3,2016,449);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(19,'Pure Cycles William 3-Speed - 2016',4,3,2016,449);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(20,'Electra Townie Original 7D EQ - Women''s - 2016',1,3,2016,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(21,'Electra Cruiser 1 (24-Inch) - 2016',1,1,2016,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(22,'Electra Girl''s Hawaii 1 (16-inch) - 2015/2016',1,1,2016,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(23,'Electra Girl''s Hawaii 1 (20-inch) - 2015/2016',1,1,2016,299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(24,'Electra Townie Original 21D - 2016',1,2,2016,549.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(25,'Electra Townie Original 7D - 2015/2016',1,2,2016,499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(26,'Electra Townie Original 7D EQ - 2016',1,2,2016,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(27,'Surly Big Dummy Frameset - 2017',8,6,2017,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(28,'Surly Karate Monkey 27.5+ Frameset - 2017',8,6,2017,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(29,'Trek X-Caliber 8 - 2017',9,6,2017,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(30,'Surly Ice Cream Truck Frameset - 2017',8,6,2017,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(31,'Surly Wednesday - 2017',8,6,2017,1632.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(32,'Trek Farley Alloy Frameset - 2017',9,6,2017,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(33,'Surly Wednesday Frameset - 2017',8,6,2017,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(34,'Trek Session DH 27.5 Carbon Frameset - 2017',9,6,2017,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(35,'Sun Bicycles Spider 3i - 2017',7,6,2017,832.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(36,'Surly Troll Frameset - 2017',8,6,2017,832.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(37,'Haro Flightline One ST - 2017',2,6,2017,379.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(38,'Haro Flightline Two 26 Plus - 2017',2,6,2017,549.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(39,'Trek Stache 5 - 2017',9,6,2017,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(40,'Trek Fuel EX 9.8 29 - 2017',9,6,2017,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(41,'Haro Shift R3 - 2017',2,6,2017,1469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(42,'Trek Fuel EX 5 27.5 Plus - 2017',9,6,2017,2299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(43,'Trek Fuel EX 9.8 27.5 Plus - 2017',9,6,2017,5299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(44,'Haro SR 1.1 - 2017',2,6,2017,539.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(45,'Haro SR 1.2 - 2017',2,6,2017,869.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(46,'Haro SR 1.3 - 2017',2,6,2017,1409.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(47,'Trek Remedy 9.8 - 2017',9,6,2017,5299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(48,'Trek Emonda S 4 - 2017',9,7,2017,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(49,'Trek Domane SL 6 - 2017',9,7,2017,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(50,'Trek Silque SLR 7 Women''s - 2017',9,7,2017,5999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(51,'Trek Silque SLR 8 Women''s - 2017',9,7,2017,6499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(52,'Surly Steamroller - 2017',8,7,2017,875.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(53,'Surly Ogre Frameset - 2017',8,7,2017,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(54,'Trek Domane SL Disc Frameset - 2017',9,7,2017,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(55,'Trek Domane S 6 - 2017',9,7,2017,2699.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(56,'Trek Domane SLR 6 Disc - 2017',9,7,2017,5499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(57,'Trek Emonda S 5 - 2017',9,7,2017,1999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(58,'Trek Madone 9.2 - 2017',9,7,2017,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(59,'Trek Domane S 5 Disc - 2017',9,7,2017,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(60,'Sun Bicycles ElectroLite - 2017',7,5,2017,1559.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(61,'Trek Powerfly 8 FS Plus - 2017',9,5,2017,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(62,'Trek Boone 7 - 2017',9,4,2017,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(63,'Trek Boone Race Shop Limited - 2017',9,4,2017,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(64,'Electra Townie Original 7D - 2017',1,3,2017,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(65,'Sun Bicycles Lil Bolt Type-R - 2017',7,3,2017,346.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(66,'Sun Bicycles Revolutions 24 - 2017',7,3,2017,250.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(67,'Sun Bicycles Revolutions 24 - Girl''s - 2017',7,3,2017,250.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(68,'Sun Bicycles Cruz 3 - 2017',7,3,2017,449.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(69,'Sun Bicycles Cruz 7 - 2017',7,3,2017,416.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(70,'Electra Amsterdam Original 3i - 2015/2017',1,3,2017,659.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(71,'Sun Bicycles Atlas X-Type - 2017',7,3,2017,416.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(72,'Sun Bicycles Biscayne Tandem 7 - 2017',7,3,2017,619.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(73,'Sun Bicycles Brickell Tandem 7 - 2017',7,3,2017,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(74,'Electra Cruiser Lux 1 - 2017',1,3,2017,439.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(75,'Electra Cruiser Lux Fat Tire 1 Ladies - 2017',1,3,2017,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(76,'Electra Girl''s Hawaii 1 16" - 2017',1,3,2017,299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(77,'Electra Glam Punk 3i Ladies'' - 2017',1,3,2017,799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(78,'Sun Bicycles Biscayne Tandem CB - 2017',7,3,2017,647.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(79,'Sun Bicycles Boardwalk (24-inch Wheels) - 2017',7,3,2017,402.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(80,'Sun Bicycles Brickell Tandem CB - 2017',7,3,2017,761.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(81,'Electra Amsterdam Fashion 7i Ladies'' - 2017',1,3,2017,1099.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(82,'Electra Amsterdam Original 3i Ladies'' - 2017',1,3,2017,659.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(83,'Trek Boy''s Kickster - 2015/2017',9,1,2017,149.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(84,'Sun Bicycles Lil Kitt''n - 2017',7,1,2017,109.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(85,'Haro Downtown 16 - 2017',2,1,2017,329.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(86,'Trek Girl''s Kickster - 2017',9,1,2017,149.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(87,'Trek Precaliber 12 Boys - 2017',9,1,2017,189.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(88,'Trek Precaliber 12 Girls - 2017',9,1,2017,189.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(89,'Trek Precaliber 16 Boys - 2017',9,1,2017,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(90,'Trek Precaliber 16 Girls - 2017',9,1,2017,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(91,'Trek Precaliber 24 (21-Speed) - Girls - 2017',9,1,2017,349.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(92,'Haro Shredder 20 - 2017',2,1,2017,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(93,'Haro Shredder 20 Girls - 2017',2,1,2017,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(94,'Haro Shredder Pro 20 - 2017',2,1,2017,249.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(95,'Electra Girl''s Hawaii 1 16" - 2017',1,1,2017,299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(96,'Electra Moto 3i (20-inch) - Boy''s - 2017',1,1,2017,349.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(97,'Electra Savannah 3i (20-inch) - Girl''s - 2017',1,1,2017,349.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(98,'Electra Straight 8 3i (20-inch) - Boy''s - 2017',1,1,2017,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(99,'Electra Sugar Skulls 1 (20-inch) - Girl''s - 2017',1,1,2017,299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(100,'Electra Townie 3i EQ (20-inch) - Boys'' - 2017',1,1,2017,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(101,'Electra Townie 7D (20-inch) - Boys'' - 2017',1,1,2017,339.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(102,'Electra Townie Original 7D - 2017',1,2,2017,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(103,'Sun Bicycles Streamway 3 - 2017',7,2,2017,551.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(104,'Sun Bicycles Streamway - 2017',7,2,2017,481.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(105,'Sun Bicycles Streamway 7 - 2017',7,2,2017,533.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(106,'Sun Bicycles Cruz 3 - 2017',7,2,2017,449.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(107,'Sun Bicycles Cruz 7 - 2017',7,2,2017,416.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(108,'Sun Bicycles Cruz 3 - Women''s - 2017',7,2,2017,449.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(109,'Sun Bicycles Cruz 7 - Women''s - 2017',7,2,2017,416.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(110,'Sun Bicycles Drifter 7 - 2017',7,2,2017,470.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(111,'Sun Bicycles Drifter 7 - Women''s - 2017',7,2,2017,470.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(112,'Trek 820 - 2018',9,6,2018,379.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(113,'Trek Marlin 5 - 2018',9,6,2018,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(114,'Trek Marlin 6 - 2018',9,6,2018,579.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(115,'Trek Fuel EX 8 29 - 2018',9,6,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(116,'Trek Marlin 7 - 2017/2018',9,6,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(117,'Trek Ticket S Frame - 2018',9,6,2018,1469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(118,'Trek X-Caliber 8 - 2018',9,6,2018,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(119,'Trek Kids'' Neko - 2018',9,6,2018,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(120,'Trek Fuel EX 7 29 - 2018',9,6,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(121,'Surly Krampus Frameset - 2018',8,6,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(122,'Surly Troll Frameset - 2018',8,6,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(123,'Trek Farley Carbon Frameset - 2018',9,6,2018,999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(124,'Surly Krampus - 2018',8,6,2018,1499);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(125,'Trek Kids'' Dual Sport - 2018',9,6,2018,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(126,'Surly Big Fat Dummy Frameset - 2018',8,6,2018,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(127,'Surly Pack Rat Frameset - 2018',8,6,2018,469.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(128,'Surly ECR 27.5 - 2018',8,6,2018,1899);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(129,'Trek X-Caliber 7 - 2018',9,6,2018,919.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(130,'Trek Stache Carbon Frameset - 2018',9,6,2018,919.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(131,'Heller Bloodhound Trail - 2018',3,6,2018,2599);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(132,'Trek Procal AL Frameset - 2018',9,6,2018,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(133,'Trek Procaliber Frameset - 2018',9,6,2018,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(134,'Trek Remedy 27.5 C Frameset - 2018',9,6,2018,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(135,'Trek X-Caliber Frameset - 2018',9,6,2018,1499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(136,'Trek Procaliber 6 - 2018',9,6,2018,1799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(137,'Heller Shagamaw GX1 - 2018',3,6,2018,2599);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(138,'Trek Fuel EX 5 Plus - 2018',9,6,2018,2249.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(139,'Trek Remedy 7 27.5 - 2018',9,6,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(140,'Trek Remedy 9.8 27.5 - 2018',9,6,2018,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(141,'Trek Stache 5 - 2018',9,6,2018,1599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(142,'Trek Fuel EX 8 29 XT - 2018',9,6,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(143,'Trek Domane ALR 3 - 2018',9,7,2018,1099.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(144,'Trek Domane ALR 4 Disc - 2018',9,7,2018,1549.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(145,'Trek Domane ALR 5 Disc - 2018',9,7,2018,1799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(146,'Trek Domane SLR 6 - 2018',9,7,2018,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(147,'Trek Domane ALR 5 Gravel - 2018',9,7,2018,1799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(148,'Trek Domane SL 8 Disc - 2018',9,7,2018,5499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(149,'Trek Domane SLR 8 Disc - 2018',9,7,2018,7499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(150,'Trek Emonda SL 7 - 2018',9,7,2018,4499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(151,'Trek Domane ALR 4 Disc Women''s - 2018',9,7,2018,1549.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(152,'Trek Domane SL 5 Disc Women''s - 2018',9,7,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(153,'Trek Domane SL 7 Women''s - 2018',9,7,2018,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(154,'Trek Domane SLR 6 Disc Women''s - 2018',9,7,2018,5499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(155,'Trek Domane SLR 9 Disc - 2018',9,7,2018,11999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(156,'Trek Domane SL Frameset - 2018',9,7,2018,6499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(157,'Trek Domane SL Frameset Women''s - 2018',9,7,2018,6499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(158,'Trek CrossRip 1 - 2018',9,7,2018,959.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(159,'Trek Emonda ALR 6 - 2018',9,7,2018,2299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(160,'Trek Emonda SLR 6 - 2018',9,7,2018,4499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(161,'Surly ECR - 2018',8,7,2018,1899);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(162,'Trek Emonda SL 6 Disc - 2018',9,7,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(163,'Surly Pack Rat - 2018',8,7,2018,1349);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(164,'Surly Straggler 650b - 2018',8,7,2018,1549);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(165,'Trek 1120 - 2018',9,7,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(166,'Trek Domane AL 2 Women''s - 2018',9,7,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(167,'Surly ECR Frameset - 2018',8,7,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(168,'Surly Straggler - 2018',8,7,2018,1549);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(169,'Trek Emonda SLR 8 - 2018',9,7,2018,6499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(170,'Trek CrossRip 2 - 2018',9,7,2018,1299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(171,'Trek Domane SL 6 - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(172,'Trek Domane ALR Disc Frameset - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(173,'Trek Domane ALR Frameset - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(174,'Trek Domane SLR Disc Frameset - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(175,'Trek Domane SLR Frameset - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(176,'Trek Madone 9 Frameset - 2018',9,7,2018,3199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(177,'Trek Domane SLR 6 Disc - 2018',9,7,2018,5499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(178,'Trek Domane AL 2 - 2018',9,7,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(179,'Trek Domane AL 3 - 2018',9,7,2018,919.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(180,'Trek Domane AL 3 Women''s - 2018',9,7,2018,919.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(181,'Trek Domane SL 5 - 2018',9,7,2018,2199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(182,'Trek Domane SL 5 Disc - 2018',9,7,2018,2499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(183,'Trek Domane SL 5 Women''s - 2018',9,7,2018,2199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(184,'Trek Domane SL 6 Disc - 2018',9,7,2018,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(185,'Trek Conduit+ - 2018',9,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(186,'Trek CrossRip+ - 2018',9,5,2018,4499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(187,'Trek Neko+ - 2018',9,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(188,'Trek XM700+ Lowstep - 2018',9,5,2018,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(189,'Trek Lift+ Lowstep - 2018',9,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(190,'Trek Dual Sport+ - 2018',9,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(191,'Electra Loft Go! 8i - 2018',1,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(192,'Electra Townie Go! 8i - 2017/2018',1,5,2018,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(193,'Trek Lift+ - 2018',9,5,2018,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(194,'Trek XM700+ - 2018',9,5,2018,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(195,'Electra Townie Go! 8i Ladies'' - 2018',1,5,2018,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(196,'Trek Verve+ - 2018',9,5,2018,2299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(197,'Trek Verve+ Lowstep - 2018',9,5,2018,2299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(198,'Electra Townie Commute Go! - 2018',1,5,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(199,'Electra Townie Commute Go! Ladies'' - 2018',1,5,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(200,'Trek Powerfly 5 - 2018',9,5,2018,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(201,'Trek Powerfly 5 FS - 2018',9,5,2018,4499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(202,'Trek Powerfly 5 Women''s - 2018',9,5,2018,3499.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(203,'Trek Powerfly 7 FS - 2018',9,5,2018,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(204,'Trek Super Commuter+ 7 - 2018',9,5,2018,3599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(205,'Trek Super Commuter+ 8S - 2018',9,5,2018,4999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(206,'Trek Boone 5 Disc - 2018',9,4,2018,3299.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(207,'Trek Boone 7 Disc - 2018',9,4,2018,3999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(208,'Trek Crockett 5 Disc - 2018',9,4,2018,1799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(209,'Trek Crockett 7 Disc - 2018',9,4,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(210,'Surly Straggler - 2018',8,4,2018,1549);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(211,'Surly Straggler 650b - 2018',8,4,2018,1549);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(212,'Electra Townie Original 21D - 2018',1,3,2018,559.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(213,'Electra Cruiser 1 - 2016/2017/2018',1,3,2018,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(214,'Electra Tiger Shark 3i - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(215,'Electra Queen of Hearts 3i - 2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(216,'Electra Super Moto 8i - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(217,'Electra Straight 8 3i - 2018',1,3,2018,909.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(218,'Electra Cruiser 7D - 2016/2017/2018',1,3,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(219,'Electra Moto 3i - 2018',1,3,2018,639.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(220,'Electra Cruiser 1 Ladies'' - 2018',1,3,2018,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(221,'Electra Cruiser 7D Ladies'' - 2016/2018',1,3,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(222,'Electra Cruiser 1 Tall - 2016/2018',1,3,2018,269.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(223,'Electra Cruiser Lux 3i - 2018',1,3,2018,529.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(224,'Electra Cruiser Lux 7D - 2018',1,3,2018,479.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(225,'Electra Delivery 3i - 2016/2017/2018',1,3,2018,959.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(226,'Electra Townie Original 21D EQ - 2017/2018',1,3,2018,679.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(227,'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018',1,3,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(228,'Electra Cruiser 7D Tall - 2016/2018',1,3,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(229,'Electra Cruiser Lux 1 - 2016/2018',1,3,2018,429.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(230,'Electra Cruiser Lux 1 Ladies'' - 2018',1,3,2018,429.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(231,'Electra Cruiser Lux 3i Ladies'' - 2018',1,3,2018,529.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(232,'Electra Cruiser Lux 7D Ladies'' - 2018',1,3,2018,479.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(233,'Electra Cruiser Lux Fat Tire 7D - 2018',1,3,2018,639.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(234,'Electra Daydreamer 3i Ladies'' - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(235,'Electra Koa 3i Ladies'' - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(236,'Electra Morningstar 3i Ladies'' - 2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(237,'Electra Relic 3i - 2018',1,3,2018,849.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(238,'Electra Townie Balloon 8D EQ - 2016/2017/2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(239,'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(240,'Electra Townie Commute 27D Ladies - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(241,'Electra Townie Commute 8D - 2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(242,'Electra Townie Commute 8D Ladies'' - 2018',1,3,2018,699.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(243,'Electra Townie Original 21D EQ Ladies'' - 2018',1,3,2018,679.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(244,'Electra Townie Original 21D Ladies'' - 2018',1,3,2018,559.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(245,'Electra Townie Original 3i EQ - 2017/2018',1,3,2018,659.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(246,'Electra Townie Original 3i EQ Ladies'' - 2018',1,3,2018,639.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(247,'Electra Townie Original 7D EQ - 2018',1,3,2018,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(248,'Electra Townie Original 7D EQ Ladies'' - 2017/2018',1,3,2018,599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(249,'Electra White Water 3i - 2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(250,'Electra Townie Go! 8i - 2017/2018',1,3,2018,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(251,'Electra Townie Commute Go! - 2018',1,3,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(252,'Electra Townie Commute Go! Ladies'' - 2018',1,3,2018,2999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(253,'Electra Townie Go! 8i Ladies'' - 2018',1,3,2018,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(254,'Electra Townie Balloon 3i EQ - 2017/2018',1,3,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(255,'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(256,'Electra Townie Commute 27D - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(257,'Electra Amsterdam Fashion 3i Ladies'' - 2017/2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(258,'Electra Amsterdam Royal 8i - 2017/2018',1,3,2018,1259.9);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(259,'Electra Amsterdam Royal 8i Ladies - 2018',1,3,2018,1199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(260,'Electra Townie Balloon 3i EQ Ladies'' - 2018',1,3,2018,799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(261,'Electra Townie Balloon 7i EQ - 2018',1,3,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(262,'Trek MT 201 - 2018',9,1,2018,249.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(263,'Strider Classic 12 Balance Bike - 2018',6,1,2018,89.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(264,'Strider Sport 16 - 2018',6,1,2018,249.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(265,'Strider Strider 20 Sport - 2018',6,1,2018,289.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(266,'Trek Superfly 20 - 2018',9,1,2018,399.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(267,'Trek Precaliber 12 Girl''s - 2018',9,1,2018,199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(268,'Trek Kickster - 2018',9,1,2018,159.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(269,'Trek Precaliber 12 Boy''s - 2018',9,1,2018,199.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(270,'Trek Precaliber 16 Boy''s - 2018',9,1,2018,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(271,'Trek Precaliber 16 Girl''s - 2018',9,1,2018,209.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(272,'Trek Precaliber 20 6-speed Boy''s - 2018',9,1,2018,289.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(273,'Trek Precaliber 20 6-speed Girl''s - 2018',9,1,2018,289.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(274,'Trek Precaliber 20 Boy''s - 2018',9,1,2018,229.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(275,'Trek Precaliber 20 Girl''s - 2018',9,1,2018,229.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(276,'Trek Precaliber 24 (7-Speed) - Boys - 2018',9,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(277,'Trek Precaliber 24 21-speed Boy''s - 2018',9,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(278,'Trek Precaliber 24 21-speed Girl''s - 2018',9,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(279,'Trek Precaliber 24 7-speed Girl''s - 2018',9,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(280,'Trek Superfly 24 - 2017/2018',9,1,2018,489.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(281,'Electra Cruiser 7D (24-Inch) Ladies'' - 2016/2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(282,'Electra Cyclosaurus 1 (16-inch) - Boy''s - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(283,'Electra Heartchya 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(284,'Electra Savannah 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(285,'Electra Soft Serve 1 (16-inch) - Girl''s - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(286,'Electra Starship 1 16" - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(287,'Electra Straight 8 1 (16-inch) - Boy''s - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(288,'Electra Straight 8 1 (20-inch) - Boy''s - 2018',1,1,2018,389.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(289,'Electra Superbolt 1 20" - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(290,'Electra Superbolt 3i 20" - 2018',1,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(291,'Electra Sweet Ride 1 (20-inch) - Girl''s - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(292,'Electra Sweet Ride 3i (20-inch) - Girls'' - 2018',1,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(293,'Electra Tiger Shark 1 (20-inch) - Boys'' - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(294,'Electra Tiger Shark 3i (20-inch) - Boys'' - 2018',1,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(295,'Electra Treasure 1 20" - 2018',1,1,2018,319.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(296,'Electra Treasure 3i 20" - 2018',1,1,2018,369.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(297,'Electra Under-The-Sea 1 16" - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(298,'Electra Water Lily 1 (16-inch) - Girl''s - 2018',1,1,2018,279.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(299,'Electra Townie Original 21D - 2018',1,2,2018,559.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(300,'Electra Townie Balloon 3i EQ Ladies'' - 2018',1,2,2018,799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(301,'Electra Townie Balloon 7i EQ - 2018',1,2,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(302,'Electra Townie Original 1 - 2018',1,2,2018,449.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(303,'Electra Townie Go! 8i - 2017/2018',1,2,2018,2599.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(304,'Electra Townie Original 21D EQ - 2017/2018',1,2,2018,679.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(305,'Electra Townie Balloon 3i EQ - 2017/2018',1,2,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(306,'Electra Townie Balloon 7i EQ Ladies'' - 2017/2018',1,2,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(307,'Electra Townie Balloon 8D EQ - 2016/2017/2018',1,2,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(308,'Electra Townie Balloon 8D EQ Ladies'' - 2016/2017/2018',1,2,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(309,'Electra Townie Commute 27D - 2018',1,2,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(310,'Electra Townie Commute 27D Ladies - 2018',1,2,2018,899.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(311,'Electra Townie Commute 8D - 2018',1,2,2018,749.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(312,'Electra Townie Commute 8D Ladies'' - 2018',1,2,2018,699.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(313,'Electra Townie Original 1 Ladies'' - 2018',1,2,2018,449.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(314,'Electra Townie Original 21D EQ Ladies'' - 2018',1,2,2018,679.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(315,'Electra Townie Original 21D Ladies'' - 2018',1,2,2018,559.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(316,'Trek Checkpoint ALR 4 Women''s - 2019',9,7,2019,1699.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(317,'Trek Checkpoint ALR 5 - 2019',9,7,2019,1999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(318,'Trek Checkpoint ALR 5 Women''s - 2019',9,7,2019,1999.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(319,'Trek Checkpoint SL 5 Women''s - 2019',9,7,2019,2799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(320,'Trek Checkpoint SL 6 - 2019',9,7,2019,3799.99);
INSERT INTO production.products(product_id, product_name, brand_id, category_id, model_year, list_price) VALUES(321,'Trek Checkpoint ALR Frameset - 2019',9,7,2019,3199.99);

Select count(*) from production.products;--321 rows
Select * from production.products;

-- Creating Table Stocks.
Create or Replace Table production.stocks
(
	store_id INT, 
    product_id INT, 
    quantity INT,
    PRIMARY KEY (store_id,product_id)
);

Select * From production.stocks;
Select count(*) From production.stocks; -- 939 rows

-- Creating Table customers
Create or Replace Table sales.customers
(
	customer_id INT Identity(1,1) PRIMARY KEY,
    first_name VARCHAR (50), 
    last_name VARCHAR (50), 
    phone VARCHAR (20), 
    email VARCHAR (50), 
    street VARCHAR(100), 
    city VARCHAR(50), 
    state VARCHAR(50), 
    zip_code VARCHAR(10)
);

Select * From sales.customers;
Select count(*) From sales.customers; -- 1445 rows

-- Creating Table Stores.
Create or Replace Table sales.stores
(
	store_id INT Identity(1,1) PRIMARY KEY,
    store_name VARCHAR (100), 
	phone VARCHAR (20), 
	email VARCHAR (50), 
	street VARCHAR (100), 
	city VARCHAR (50), 
	state VARCHAR (50), 
	zip_code VARCHAR(10)
);

Select * From sales.stores;
Select count(*) From sales.stores;--3 rows

-- Creating Table staffs.
Create or Replace Table sales.staffs
(
	staff_id INT PRIMARY KEY, 
    first_name VARCHAR (50), 
    last_name VARCHAR (50), 
    email VARCHAR (50), 
    phone VARCHAR (50), 
    active INT, 
    store_id INT, 
    manager_id INT
);

INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(1,'Fabiola','Jackson','fabiola.jackson@bikes.shop','(831) 555-5554',1,1,NULL);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(2,'Mireya','Copeland','mireya.copeland@bikes.shop','(831) 555-5555',1,1,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(3,'Genna','Serrano','genna.serrano@bikes.shop','(831) 555-5556',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(4,'Virgie','Wiggins','virgie.wiggins@bikes.shop','(831) 555-5557',1,1,2);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(5,'Jannette','David','jannette.david@bikes.shop','(516) 379-4444',1,2,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(6,'Marcelene','Boyer','marcelene.boyer@bikes.shop','(516) 379-4445',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(7,'Venita','Daniel','venita.daniel@bikes.shop','(516) 379-4446',1,2,5);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(8,'Kali','Vargas','kali.vargas@bikes.shop','(972) 530-5555',1,3,1);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(9,'Layla','Terrell','layla.terrell@bikes.shop','(972) 530-5556',1,3,7);
INSERT INTO sales.staffs(staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES(10,'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557',1,3,7);

Select * from sales.staffs;
Select count(*) from sales.staffs; -- 10 rows

-- Creating Table orders.
Create or Replace Table sales.orders
(
	order_id INT PRIMARY KEY, 
    customer_id INT, 
    order_status INT, 
    order_date DATE, 
    required_date DATE, 
    shipped_date VARCHAR(30), 
    store_id INT,
    staff_id INT
);

Select * From sales.orders;
Select count(*) From sales.orders; -- 1615 rows

-- Creating Table order_items.
Create or Replace Table sales.order_items
(
	order_id INT, 
    item_id INT, 
    product_id INT, 
    quantity INT, 
    list_price INT,
    discount DECIMAL (5,2),
    PRIMARY KEY (order_id,item_id)
);

Select * from sales.order_items;
Select count(*) from sales.order_items; -- 4722 rows

/* 1.Design the complete database + schema + tables for the diagram shown above using appropriate
data type for every column along with any contraints (checks + PK) mentioned in the task
description and load the below data into the requisite tables.*/


/* 2. Once the table has got created , there is a requirement of FOREIGN KEY implementation coming
into picture where one needs to add(ALTER TABLE COMMAND) below foreign key on the table
mentioned pointing to another table (READ ABOUT FOREIGN KEY) as : */

-- sales.staffs (store_id) -> sales.stores(storeid

Alter Table sales.staffs ADD Foreign Key (store_id) References sales.stores(store_id);

-- sales.staffs (manager_id) -> sales.staffs (staff_id)

Alter Table sales.staffs ADD Foreign Key (manager_id) References sales.staffs(staff_id);

-- production.products (category_id) -> production.categories (category_id)

Alter Table production.products ADD Foreign Key (category_id) References production.categories(category_id);

-- production.products(brand_id) -> production.brands (brand_id)

Alter Table production.products ADD Foreign Key (brand_id) References production.brands (brand_id);

-- sales.orders (customer_id) -> sales.customers (customer_id)

Alter Table sales.orders ADD Foreign Key (customer_id) References sales.customers (customer_id);

-- sales.orders(store_id) -> sales.stores (store_id)

Alter Table sales.orders ADD Foreign Key (store_id) References sales.stores (store_id);

-- sales.orders (staff_id) -> sales.staffs (staff_id)

Alter Table sales.orders ADD Foreign Key (staff_id) References sales.staffs (staff_id);

-- sales.order_items(order_id) -> sales.orders (order_id)

Alter Table sales.order_items ADD Foreign Key (order_id) References sales.orders (order_id);

-- sales.order_items (product_id) -> production.products (product_id)

Alter Table sales.order_items ADD Foreign Key (product_id) References production.products (product_id);

-- production.stocks (store_id) -> sales.stores (store_id)

Alter Table production.stocks ADD Foreign Key (store_id) References sales.stores (store_id);

-- production.stocks (product_id) -> production.products (product_id)

Alter Table production.stocks ADD Foreign Key (product_id) References production.products (product_id);


--- 3. Does any of the table has missing or NULL value ? If yes which are those and what are their counts ?

Select * from production.brands;-- Zero NULL or Blank values

Select * from production.categories;-- Zero NULL or Blank values

Select * From production.products;-- Zero NULL or Blank values

Select * From production.stocks;-- Zero NULL or Blank values

Select * from sales.customers;
Select count(*) from sales.customers where phone IS NULL; -- column phone has 1267 NULL or blank values

Select * From sales.order_items;-- Zero NULL or Blank values

Select * from sales.orders;
Select count(*) from sales.orders where shipped_date is NULL; -- column shipped_date has 170 NULL or blankvalues

Select * From sales.staffs;
Select count(*) from sales.staffs where manager_id IS NULL; -- column manager_ID has 1 Null or blank Values

Select * From sales.stores;-- Zero NULL or Blank values

-- 4)Does the datasets has any DUPLICATE(identical rows) ? If yes – can you just keep the first record and remove all rest if its possible without using any JOINS or WINDOW function

Select brand_id,brand_name,count(*) From production.brands
group by 1,2
having count(*)>1; -- No rows returned so no duplicate

Select category_id,category_name,count(*) from production.categories
group by 1,2
having count(*) >1; -- No rows returned so no duplicate

Select product_id, product_name, brand_id, category_id, model_year, list_price,count(*) From production.products
Group by 1,2,3,4,5,6
Having count(*)>1;-- No rows returned so no duplicate

Select store_id, product_id, quantity,count(*) From production.stocks
Group by 1,2,3
Having count(*)>1; -- No rows returned so no duplicate

Select customer_id,first_name, last_name, phone, email, street, city, state, zip_code,count(*) from sales.customers 
Group By 1,2,3,4,5,6,7,8,9
Having count(*) > 1; -- No rows returned so no duplicate

Select order_id, item_id, product_id, quantity, list_price,discount,count(*) From sales.order_items
Group by 1,2,3,4,5,6
Having count(*) >1; -- No rows returned so no duplicate

Select order_id, customer_id, order_status, order_date, required_date, shipped_date, store_id,staff_id,count(*) from sales.orders
Group by 1,2,3,4,5,6,7,8
Having count(*) > 1; -- No rows returned so no duplicate

Select staff_id, first_name, last_name, email, phone, active, store_id, manager_id,count(*) From sales.staffs
Group by 1,2,3,4,5,6,7,8
Having count(*)>1; -- No rows returned so no duplicate

Select store_id, store_name, phone, email, street, city, state, zip_code,count(*) From sales.stores
Group by 1,2,3,4,5,6,7,8
Having count(*)>1; -- No rows returned so no duplicate

-- 3.How many unique tables are present in each schema and under each table how many records are we having ? (Write SQL Script for the same – I don’t need answer like 3/5/4 etc)

Show Tables IN AD_BIKESTORES.PRODUCTION;
Show Tables IN AD_BIKESTORES.SALES;

Select count(*) From production.brands;-- 9 rows
Select count(*) from production.categories;-- 7 rows
Select count(*) from production.products;--321 rows
Select count(*) From production.stocks; -- 939 rows
Select count(*) From sales.customers; -- 1445 rows
Select count(*) From sales.stores;--3 rows
Select count(*) From sales.orders; -- 1615 rows
Select count(*) from sales.order_items; -- 4722 rows
Select count(*) from sales.staffs; -- 10 rows

-- 4.How many total serving customer BikeStore has ?

Select count(distinct customer_id) from sales.customers; -- Total 1445 customers are there for Bikestores

-- 5.How many total orders are there ?
Select count(distinct order_id) from sales.orders; -- Total 1615 orders


-- 8. How many orders each customer has placed (give me top 10 customers)
Select customer_id,count(order_id) from sales.orders
Group by 1
Order by 2 Desc limit 10;

-- 9. Which are the TOP 3 selling product ?
Select product_id,sum(quantity) from sales.order_items
Group by 1
Order by 2 Desc limit 3;

-- 10. Which was the first and last order placed by the customer who has placed maximum number of orders ?
Select customer_id, sum(order_id) from sales.orders
Group by 1
Order by 2 Desc limit 1;-- Customer_id 3 has max order.

Select customer_id,max(order_date) As last_order_date,min(order_date) as first_order_date from sales.orders
where customer_id = 3
Group by 1;

-- 12. Which product has orders more than 200 ?
Select product_id,sum(quantity) from sales.order_items
Group by 1
Having 2 > 200;

-- 13.Add a column TOTAL_PRICE with appropriate data type into the sales.order_items
ALter Table sales.order_items ADD total_price Int;

-- 14.Calculate TOTAL_PRICE = quantity * list price and Update the value for all rows in the sales.order_items table.
Update sales.order_items
SET total_price = quantity*list_price;

-- 14.What is the value of the TOTAL_PRICE paid for all the sales.order_items ?
Select sum(total_price) from sales.order_items; -- 8579054 


Select * From production.brands;-- 9 rows
Select * from production.categories;-- 7 rows
Select * from production.products;--321 rows
Select * From production.stocks; -- 939 rows
Select * From sales.customers; -- 1445 rows
Select * From sales.stores;--3 rows
Select * From sales.orders; -- 1615 rows
Select * from sales.order_items; -- 4722 rows
Select * from sales.staffs;