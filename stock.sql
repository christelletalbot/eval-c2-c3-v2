DROP DATABASE IF EXISTS stock;

CREATE DATABASE stock CHARACTER SET 'UTF8';

USE stock;

--tables--

CREATE TABLE article (
  id integer NOT NULL,
  name varchar(20) NOT NULL,
  selling_price integer NOT NULL,
  quantity integer NOT NULL,
  unit_type varchar(30) NOT NULL,
  category_name varchar(30) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE article_movement (
  article_id integer NOT NULL,
  movement_id integer NOT NULL,
  quantity integer NOT NULL
)ENGINE=InnoDB;


CREATE TABLE buying_price (
  article_id integer NOT NULL,
  supplier_id integer NOT NULL
)ENGINE=InnoDB;


CREATE TABLE category (
  name varchar(30) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE movement (
  id integer NOT NULL,
  dates datetime NOT NULL,
  direction smallint NOT NULL,
  type_movement varchar(30) NOT NULL
)ENGINE=InnoDB;


CREATE TABLE supplier (
  id integer NOT NULL,
  name varchar (50) NOT NULL,
  address varchar (50) NOT NULL,
  phone varchar(20) NOT NULL
) ENGINE=InnoDB;


CREATE TABLE type_movement (
  type varchar(20) NOT NULL
) ENGINE=InnoDB;


CREATE TABLE unit (
  type varchar(30) NOT NULL
) ENGINE=InnoDB;

--create primary key--

ALTER TABLE article
  ADD PRIMARY KEY (id),
  ADD KEY category_name (category_name),
  ADD KEY unit_type (unit_type),
  ADD KEY supplier (supplier);



ALTER TABLE article_movement
  ADD PRIMARY KEY (article_id,movement_id),
  ADD KEY movement_id (movement_id);


ALTER TABLE buying_price
  ADD PRIMARY KEY (article_id,supplier_id);


ALTER TABLE category
  ADD PRIMARY KEY (name);


ALTER TABLE movement
  ADD PRIMARY KEY (id),
  ADD KEY type_movement (type_movement);


ALTER TABLE supplier
  ADD PRIMARY KEY (id);


ALTER TABLE type_movement
  ADD PRIMARY KEY (type);


ALTER TABLE unit
  ADD PRIMARY KEY (type);


ALTER TABLE article
  MODIFY id integer NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE movement
  MODIFY id integer NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;


ALTER TABLE supplier
  MODIFY id integer NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;


ALTER TABLE article
  ADD CONSTRAINT article_ibfk_2 FOREIGN KEY (id) REFERENCES article_movement (article_id),
  ADD CONSTRAINT article_ibfk_4 FOREIGN KEY (category_name) REFERENCES category (name),
  ADD CONSTRAINT article_ibfk_5 FOREIGN KEY (unit_type) REFERENCES unit (type);


ALTER TABLE article_movement
  ADD CONSTRAINT article_movement_ibfk_1 FOREIGN KEY (movement_id) REFERENCES movement (id);


ALTER TABLE buying_price
  ADD CONSTRAINT buying_price_ibfk_1 FOREIGN KEY (article_id) REFERENCES article (id);


ALTER TABLE movement
  ADD CONSTRAINT movement_ibfk_1 FOREIGN KEY (type_movement) REFERENCES type_movement (type);

ALTER TABLE article
  ADD COLUMN suppliername_id integer; 

ALTER TABLE article
  ADD CONSTRAINT article_ibfk_3 FOREIGN KEY (suppliername_id) REFERENCES supplier (id);


