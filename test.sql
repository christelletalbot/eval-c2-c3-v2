INSERT INTO category (name) 
VALUES	('liquide'), 
		('solide');


INSERT INTO unit (type) 
VALUES 	('litre'), 
		('pack'), 
		('carton'), 
		('kg');


INSERT INTO type_movement (type) 
VALUES 	('entree'), 
	    ('sortie');


INSERT INTO movement (id, dates, direction, type_movement) 
VALUES	('1', '2018-09-18', '0', 'entree'),
		('2', '2018-09-18', '0', 'sortie'),
		('3', '2018-09-16', '1', 'entree'),
		('4', '2018-09-16', '1', 'sortie'),
		('5', '2018-09-15', '0', 'entree');


INSERT INTO supplier (name, address, phone)
VALUES	('Promocash', 'place de Paris', '0101010101'),
		('Metro', 'rue de Marseille', '0102030405'),
		('Carrefour', 'rue de Rodez', '0103040505'),		
		('Leclerc', 'place de Lyon', '0104050607');


INSERT INTO article_movement (article_id, movement_id, quantity) 
VALUES 	('1', '1', '2'), 
		('2', '2', '4'),  
		('3', '3', '6');

INSERT INTO article (id, name, selling_price, quantity, unit_type, category_name, suppliername_id) 
VALUES 	('1', 'lait', '8', '50', 'pack', 'liquide', '1'), 
		('2', 'sprit', '10', '25', 'litre', 'liquide', '2'), 
		('3', 'risotto', '5', '20', 'kg', 'solide', '2');
		

INSERT INTO buying_price (article_id, supplier_id) 
VALUES 	('1', '1'), 
		('2', '2'), 
		('3', '3');