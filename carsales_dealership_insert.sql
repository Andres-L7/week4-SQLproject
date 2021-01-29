--data into Customer table
INSERT INTO customer(customer_id, first_name, last_name, birth_date, email)
VALUES(1, 'Andres', 'Leanos', '9/12/1992','andres.leanos@gmail.com');

INSERT INTO customer(customer_id, first_name, last_name, birth_date, email)
VALUES(2, 'Bruce', 'Wayne', '7/07/1947','thisnotbatman@yahoo.com');

--data into Car table
INSERT INTO car(vin_id, color, make, model, _year)
VALUES(1, 'Black', 'Subaru', 'WRX','2015');

INSERT INTO car(vin_id, color, make, model, _year)
VALUES(2, 'Purple', 'Mazda', 'MX-5','2020');

--data into Salesperson table
INSERT INTO salesperson(salesperson_id, first_name, last_name, sales_hire_date)
VALUES(1, 'George', 'Hamilton', '8/14/2015');

INSERT INTO salesperson(salesperson_id, first_name, last_name, sales_hire_date)
VALUES(2, 'Harry', 'Robertson', '8/15/2015');

--data into Mechanic table
INSERT INTO mechanic(mechanic_id, first_name, last_name, mech_hire_date)
VALUES(1, 'Geo', 'Ham', '8/13/2015');

INSERT INTO mechanic(mechanic_id, first_name, last_name, mech_hire_date)
VALUES(2, 'Joe', 'Slaughter', '8/13/2015');

--data into Parts table
INSERT INTO parts(part_id, part_name, part_cost, part_quantity)
VALUES(1, 'Battery', 59.99, 20);

INSERT INTO parts(part_id, part_name, part_cost, part_quantity)
VALUES(2, 'Starter', 19.99, 30);

--data into Services table
INSERT INTO services(services_id, services_name)
VALUES(1, 'Oil Change');

INSERT INTO services(services_id, services_name)
VALUES(2, 'Tire Change');
