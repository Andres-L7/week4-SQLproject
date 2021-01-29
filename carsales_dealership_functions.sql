--Sale_invoice Function to add data
CREATE OR REPLACE FUNCTION add_sale_invoice(_date_sold DATE, _amount NUMERIC, _msrp NUMERIC, _customer_id INTEGER, _vin_id INTEGER)
RETURNS void
AS $$
BEGIN
	INSERT INTO sale_invoice(date_sold,amount,msrp,customer_id,vin_id)
	VALUES(_date_sold,_amount,_msrp,_customer_id,_vin_id);
END;
$$
LANGUAGE plpgsql;
--Add data in sale invoice
SELECT add_sale_invoice('1/2/2020',15000,25000,1,1);
SELECT add_sale_invoice('1/3/2020',25000,30000,2,2);

--Service_invoice Function to add data
CREATE OR REPLACE FUNCTION add_service_invoice(_date_serviced DATE, _customer_id INTEGER, _part_id INTEGER, _vin_id INTEGER)
RETURNS void
AS $$
BEGIN
	INSERT INTO service_invoice(date_serviced,customer_id,part_id,vin_id)
	VALUES(_date_serviced,_customer_id,_part_id,_vin_id);
END;
$$
LANGUAGE plpgsql;
--Add data in service invoice
SELECT add_service_invoice('1/25/2020',1,1,1);
SELECT add_service_invoice('1/26/2020',2,2,2);

--Salesperson_invoice Function to add data
CREATE OR REPLACE FUNCTION add_salesperson_invoice(_salesperson_id INTEGER, _invoice_num INTEGER)
RETURNS void
AS $$
BEGIN
	INSERT INTO salesperson_invoice(salesperson_id,invoice_num)
	VALUES(_salesperson_id,_invoice_num);
END;
$$
LANGUAGE plpgsql;
--Add data in salesperson invoice
SELECT add_salesperson_invoice(1,1);
SELECT add_salesperson_invoice(2,2);

--Labor Function to add data
CREATE OR REPLACE FUNCTION add_labor(_invoice_id INTEGER, _mechanic_id INTEGER, _services_id INTEGER, _labor_cost NUMERIC)
RETURNS void
AS $$
BEGIN
	INSERT INTO labor(invoice_id,mechanic_id,services_id,labor_cost)
	VALUES(_invoice_id,_mechanic_id,_services_id,_labor_cost);
END;
$$
LANGUAGE plpgsql;
--Add data in labor
SELECT add_labor(1,1,1,24.49);
SELECT add_labor(2,2,2,19.49);
