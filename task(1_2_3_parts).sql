/*SELECT * FROM task3_1.products;--1

SELECT prod_name FROM task3_1.products;--2

SELECT prod_id, prod_name, prod_price FROM task3_1.products;--3

SELECT DISTINCT vend_id FROM task3_1.products;--4

SELECT prod_name FROM task3_1.products LIMIT 5;--5

SELECT prod_name FROM task3_1.products LIMIT 5 OFFSET 2;--6

SELECT prod_name FROM task3_1.products OFFSET 4;--7

SELECT prod_name FROM task3_1.products ORDER BY prod_name ASC;--8

SELECT prod_id, prod_name, prod_price FROM task3_1.products ORDER BY prod_price ASC,prod_name ASC;--9

SELECT prod_id, prod_name, prod_price FROM task3_1.products ORDER BY prod_price DESC;--10

SELECT prod_id, prod_name, prod_price FROM task3_1.products ORDER BY prod_price DESC, prod_name ASC;--11

SELECT vend_name || ',' || vend_country from task3_1.vendors;
select concat(vend_name , ',', vend_country) as "full" from task3_1.vendors;--12


select concat(vend_name , ',', vend_country) as "Наименование (место нахождение)" from task3_1.vendors;

SELECT
concat_ws (', ', vend_name, vend_country) AS "Наименование (место нахождение)"
FROM
task3_1.vendors;--13

SELECT prod_id, quanity,item_price from task3_1.orderitems;--14

SELECT (quanity*item_price) as expended_price from task3_1.orderitems;--15

select length("Наименование (место нахождения)") as "кол-во символов" from
select concat_ws(',',vend_name,vend_country) as "Наименование (место нахождения)" ,
FROM
task3_1.vendors;--16.1

select vend_name || vend_country as "Наименование(место нахождения)", character_length(concat(vend_name, vend_country)) as"кол-во символов"
from SKHEMA.vendors;--16.2

select concat (vend_name, vend_country)as "Наименование(место нахождения)", length(concat(vend_name, vend_country)) as"кол-во символов"
from SKHEMA.vendors;--16.3

select initcap(note_text) from task3_1.product_notes;--17

select lower(Prod_id) from task3_1.products;--18

select concat(vend_name, vend_country) as "Наименование(место нахождение)",
upper(concat(vend_name, vend_country)) as "Регистр" from task3_1.vendors;--19.1

select vend_name ||','|| vend_country as "Наименование(место нахождения)",
upper(concat(vend_name, vend_country)) as "Регистр" from task3_1.vendors;--19.2

select prod_desc, into prod_desc
from task3_1.PRODUCTS;--20

select prod_desk,translate(prod_desc, ' ', '') as "Результат" from task3_1.products;--21.1
select prod_desk, rtrim(prod_desc, ' ', '') as "Результат" from task3_1.products;--21.2
------------------------------2 Часть--------------------------------------—
select prod_desc,ltrim(prod_desc, 'T') as "Результат"
from task3_1.PRODUCTS;--22

select prod_desc,ltrim(prod_desc, 'Jet') as "Результат"
from task3_1.PRODUCTS;--23

select prod_desc,ltrim(prod_desc, 'Jet, t, S, . ') as "Результат"
from task3_1.PRODUCTS;--24.1

select prod_desc, ltrim(prod_desc,'J,e,t, t, S, .') as "Результат" from task3_1.PRODUCTS;--24.2

select prod_desc,rtrim(prod_desc, 'e') as "Результат"
from task3_1.PRODUCTS;--25

select prod_desc, rtrim(prod_desc,'ook') as "Результат" from task3_1.PRODUCTS;--26.1
select prod_desc, btrim(prod_desc,'ook') as "Результат" from task3_1.PRODUCTS;--26.2

select prod_desc, rtrim(prod_desc,'e,l,k,g') as "Результат" from task3_1.PRODUCTS;--27

select prod_desc, overlay(prod_desc placing "YYY" from 4 for 6) from task3_1.products;--28

SELECT vend_city,strpos(vend_city, 'A') as "Позиция" from task3_1.vendors;--29.1*/

select vend_address,strpos(vend_address,'Str') as "Позиция" from task3_1.vendors ORDER by "Позиция" ASC;--30.1

select vend_address, POSITION('Str' in vend_address) as "Позиция" from task3_1.vendors ORDER by "Позиция" ASC;--30.2

select substring(note_text from 13 for 22) as "Результат" FROM task3_1.productnotes;--31

select substring(note_text from 1 for 22) as "Результат" FROM task3_1.productnotes;--32

select substring(note_text from 1 for -22) as "Результат" FROM task3_1.productnotes;--33

select right(note_text , 14) as "Результат" FROM task3_1.productnotes;--34

select right(note_text , -17) as "Результат" FROM task3_1.productnotes;--35

select vend_name, repeat(vend_name, 3) as "Повтор" FROM task3_1.vendors;--36

select vend_name, reverse(vend_name) as "Повтор" FROM task3_1.vendors;--37

select cust_email, split_part(cust_email, '@', 1) as "Часть первая", split_part(cust_email, '@', 2)
as "Часть вторая" from task3_1.customers;--38

select cust_name, split_part(cust_name , ' ', 1) as "Часть первая", split_part(cust_name , ' ', 2)
as "Часть вторая" from task3_1.customers;--39

select age (timestamp'2022-10-23', timestamp'1812-08-03');--40

select order_date, age ( current_date, order_date)
as "Интервал" from task3_1.orders;--41

--42.
select current_date;

--43
select current_time;
