SELECT prod_id, prod_name, prod_price from task3_1.products
where prod_price::NUMERIC = 2.50;--1

select prod_id, prod_name, prod_price from task3_1.products
where prod_name = 'fuses';--2

Insert into task3_1.products(prod_name)
values ('fuses');
select prod_id, prod_name, prod_price from task3_1.products
where lower(prod_name) = 'fuses';--3

select prod_id,prod_name,prod_price from task3_1.products
where prod_price::NUMERIC < 10;--4

select prod_id,prod_name,prod_price from task3_1.products
where prod_price::NUMERIC <= 10;--5

select prod_id, prod_name, prod_price from task3_1.products
where vend_id != 1003;--6

select prod_id, prod_name, prod_price from task3_1.products
where prod_price::NUMERIC between 5 and 10;--7

select cust_name, cust_state, cust_email,cust_zip, cust_city,
cust_country, cust_adress, concat_ws(',',cust_zip,cust_country,cust_state,cust_city,cust_adress) as 'Полный адрес'
where cust_email is NULL;--8

select cust_name, cust_state, cust_email,cust_zip, cust_city,
cust_country, cust_adress, concat_ws(',',cust_zip,cust_country,cust_state,cust_city,cust_adress) as 'Полный адрес'
where cust_email is not NULL;--9

select prod_id, prod_name, prod_price from task3_1.products
where prod_id::int != 1003 and prod_price::numeric <= 10;--10

select prod_id, prod_name, prod_price from task3_1.products
where prod_id::int = 1002 or  prod_id::int = 1003;--11.1

select prod_id, prod_name, prod_price from task3_1.products
where prod_id::int between 1002 and 1003;--11.2

--12
select vend_id ,prod_name, prod_price from SKHEMA.products
where (vend_id = '1003' or vend_id = '1002') and prod_price >='10,0000';

--13
select prod_id ,vend_id ,prod_name, prod_price from SKHEMA.products
where vend_id = '1003' or vend_id = '1004'order by prod_name ;

--14
select vend_id ,prod_id ,prod_name, prod_price from SKHEMA.products
where (vend_id = '1003' or vend_id = '1004') and
char_length(prod_name)>5 order by prod_name ;

--15
select vend_id ,prod_id ,upper (prod_name), prod_price from SKHEMA.products
where (vend_id != '1003' and vend_id != '1002') order by prod_id ;

select vend_id, prod_id, upper(prod_name), prod_price FROM SKHEMA.products
WHERE not (vend_id = '1002' OR vend_id = '1003') order BY prod_name asc;

select prod_name from task3_1.products where product_name like 'jet%';--16
select prod_name from task3_1.products where prod_name like '%anvil%';--17

select prod_name from task3_1.products where prod_name like '_ton anvil%';--18
select prod_name from task3_1.products where prod_name like '%ton%';--19

select cust_contact from task3_1.customers
where cust_contact like 'E%' or cust_contact like 'J%' Order by cust_contact DESC;--20

select cust_contact,concat_ws(',',cust_zip,cust_country,cust_state,cust_city,cust_adress) as 'Полный адрес' from task3_1.customers
where cust_contact not like 'E%' or cust_contact not like 'J%' Order by cust_contact DESC;--21
