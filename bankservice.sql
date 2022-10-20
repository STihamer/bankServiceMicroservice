DROP DATABASE IF EXISTS beerservice;
DROP USER IF EXISTS `beer_service`@`%`;
CREATE DATABASE IF NOT EXISTS beerservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `beer_service`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `beerservice`.* TO `beer_service`@`%`;
FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS beersinventoryervice;
DROP USER IF EXISTS `beer_inventory_service`@`%`;
CREATE DATABASE IF NOT EXISTS beerinventoryservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `beer_inventory_service`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `beerinventoryservice`.* TO `beer_inventory_service`@`%`;
FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS beerorderservice;
DROP USER IF EXISTS `beer_order_service`@`%`;
CREATE DATABASE IF NOT EXISTS beerorderservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `beer_order_service`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `beerorderservice`.* TO `beer_order_service`@`%`;
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS somethingjpa;
use  somethingjpa;
create table person
(
    id         integer      not null,
    name       varchar(255) not null,
    location   varchar(255),
    birth_date timestamp,
    primary key (id)
);

insert into person(id, name, location, birth_date)
values (10001, 'Ranga', 'Hyderabad', curdate()),
       (10002, 'Rangaaa', 'Hyderabad', curdate()),
       (10003, 'Rangabb', 'Hyderabad', curdate());



DROP DATABASE IF EXISTS beersinventoryervice;
DROP USER IF EXISTS `beer_inventory_service`@`%`;
CREATE DATABASE IF NOT EXISTS beerinventoryservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS `beer_inventory_service`@`%` IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW,
CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `beerinventoryservice`.* TO `beer_inventory_service`@`%`;
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS bankservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use bankservice;

create table customer (
customer_id int primary key auto_increment,
name varchar(100) not null,
email varchar(100) not null,
mobile_number varchar(20) not null,
create_dt date default null);
insert into customer (name, email, mobile_number, create_dt)
values("one", "one@freemail.hu", "00112211", curdate());

create table accounts (
customer_id int not null,
account_number int auto_increment primary key,
account_type varchar(200) not null,
branch_address varchar(100) not null,
create_dt date default null);

insert into accounts(customer_id, account_type, branch_address, create_dt)
values(1, "economy", "New York", curdate());



Create table loans(
loan_number int not null auto_increment,
customer_id int not null,
start_dt date not null,
loan_type varchar(100) not null,
total_loan int not null,
amount_paid int not null,
outstanding_amount int not null,
create_dt date default null,
primary key (loan_number));

insert into loans (customer_id, start_dt, loan_type, total_loan, amount_paid, outstanding_amount, create_dt)
values(1,'2020-10-13', 'Home', 200000, 50000, 15000, '2020-10-13');

insert into loans (customer_id, start_dt, loan_type, total_loan, amount_paid, outstanding_amount, create_dt)
values(1,'2020-10-14', 'Vehicle', 400000, 10000, 30000, '2020-10-11');

