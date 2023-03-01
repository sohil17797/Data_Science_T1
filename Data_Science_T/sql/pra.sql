page no 21.

1. CLIENT_MASTER

create table CLIENT_MASTER(
    CLIENTNO Varchar(6), 
    NAME Varchar(20),
    CITY varchar(15),
    PINCODE numeric(8),
    STATE varchar(15),
    BALDUE DEC(10,0) 
);

PRODUCT_MASTER

create table PRODUCT_MASTER(
    PRODUCTNO varchar(6) , 
    DESCRIPTION varchar(15), 
    PROFITPERCENT numeric(8), 
    varchar(10), 
    QTYONHAND numeric(8), 
    REORDERLVL numeric(8), 
    SELLPRICE numeric(8,2), 
    COSTPRICE numeric(8,2),
    constraint pk_pm PRIMARY KEY(PRODUCTNO)
);

SALESMAN_MASTER


create table SALESMAN_MASTER(
    SALESMANNO varchar(6), 
    SALESMANNAME varchar(20), 
    ADDRESS1 varchar(30), 
    ADDRESS2 varchar(30), 
    CITY varchar(30), 
    PINCODE numeric(8), 
    STATE varchar(20),
    SALAMT numeric(8,2), 
    TGTTOGET numeric(6,2), 
    YTDSALES numeric(6,2), 
    REMARKS varchar(60),
    constraint pk_sm PRIMARY KEY(SALESMANNO)
    
);

2. a) Data for CLIENT_MASTER table

insert into CLIENT_MASTER Values('C00001','ivan bayroos','Mumbai','400054','Maharastra','15000');
insert into CLIENT_MASTER Values('C00002','Mamta Muzumdar','Madras','780001','Tamil Nadu','0');
insert into CLIENT_MASTER Values('C00003','Chhaya Bankar','Mumbai','400057','Maharastra','5000');
insert into CLIENT_MASTER Values('C00004','Ashwini Joshi','Banglore','560001','Karnataka','0');
insert into CLIENT_MASTER Values('C00005','Hansel colaco','Mumbai','400060','Maharastra','2000');
insert into CLIENT_MASTER Values('C00006','Deepak Sharma','Manglore','560050','Karnataka','0');

b) Data for PRODUCT_MASTER table

insert into PRODUCT_MASTER Values('P00001', 'T-Shirts', '5', 'Piece', '200', '50', '350', '250');
insert into PRODUCT_MASTER Values('P0345', 'Shirts', '6', 'Piece', '150', '50', '500', '350');
insert into PRODUCT_MASTER Values('P06734', 'Cotton Jeans', '5', 'Piece', '100', '20', '600', '450');
insert into PRODUCT_MASTER Values('P07865', 'Jeans', '5', 'Piece', '100', '20', '750', '500');
insert into PRODUCT_MASTER Values('P07868', 'Trousers', '2', 'Piece', '150', '50', '850', '550');
insert into PRODUCT_MASTER Values('P07885', 'Pull Overs', '2.5', 'Piece', '80', '30', '700', '450');
insert into PRODUCT_MASTER Values('P07965', 'Denim Shirts', '4', 'Piece', '100', '40', '350', '250');
insert into PRODUCT_MASTER Values('P07975', 'Lyera Tops', '5', 'Piece', '70', '30', '300', '175');
insert into PRODUCT_MASTER Values('P08865', 'Skirts', '5', 'Piece', '75', '30', '450', '300');

c) Data for SALESMAN_MASTER table

insert into SALESMAN_MASTER Values('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', '400002', 'Maharashtra', '3000', '100', '50', 'Good');
insert into SALESMAN_MASTER Values('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', '400001', 'Maharashtra', '3000', '200', '100', 'Good');
insert into SALESMAN_MASTER Values('S00003', 'Raj', 'P-47', 'Bandra', 'Mumbai', '400032', 'Maharashtra', '3000', '200', '100', 'Good');
insert into SALESMAN_MASTER Values('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', '400044', 'Maharashtra', '3500', '200', '100', 'Good');

5 
a. delete from salesman_master where SALAMT <= 3500;
b. delete from PRODUCT_MASTER where QTYONHAND = 100;
c. delete from CLIENT_MASTER where state = 'Tamil Nadu';

6
a. alter table CLIENT_MASTER add Telephone numeric(10);
b. alter table PRODUCT_MASTER alter column sellprice numeric(10,2);

7
a. DROP TABLE Client_Master;

8
a. rename table salesman_master to sman_mast;


Page no 48.

1
a. select * from client_master where name like "%a%"
b. select * from client_master where city like "M%"
c. select * from client_master where city = "Bangalore" or "mangalore"
d. select * from client_master where BalDue > 10000
e. select * from sales_order where month(orderdate) = 6;
f. select * from client_master where CLIENTNO = 'C00001' or 'C00002';
g. select DESCRIPTION from PRODUCT_MASTER where SELLPRICE > 500 and <= 750;
h. select *,sellprice*1.18 "with GST" from PRODUCT_MASTER where SELLPRICE > 500;
i. select name, CITY, state from client_master where not STATE= "Maharashtra";
j. select count(ORDERNO) from sales_order_details;
k. select avg(sellprice) from product_master; 
l. select max(sellprice) "Max price", min(sellprice) "Min price" from PRODUCT_MASTER;
m. select count(productno) from product_master where SELLPRICE <=500;
n. select DESCRIPTION from product_master where QTYONHAND < REORDERLVL; --data missing--

Page no. 67

1 
a. select pm.DESCRIPTION, sod.QTYORDERED
    from PRODUCT_MASTER pm, sales_order_details sod,
    where pm.productno = sod.productno
    group by pm.DESCRIPTION;

2.
a. select cm.name,pm.DESCRIPTION 
from SALES_ORDER_DETAILS sod,SALES_ORDER so, PRODUCT_MASTER pm,CLIENT_MASTER cm
where pm.productno = sod.productno
and cm.CLIENTNO = so.CLIENTNO
and so.orderno = sod.orderno
and cm.name = 'ivan bayroos';

b. 

c. select distinct pm.productno, pm.description
from product_master pm, sales_order_details sod
where pm.productno = sod.productno; 

d. select distinct pm.DESCRIPTION,cm.NAME,sod.QTYORDERED 
from PRODUCT_MASTER pm, sales_order_details sod, salesman_master sm, sales_order so, client_master cm 
where 
 so.CLIENTNO = cm.CLIENTNO 
and pm.PRODUCTNO = sod.PRODUCTNO 
and sod.ORDERNO = so.ORDERNO 
and pm.DESCRIPTION = 'Trousers';

e. 
select cm.name, sod.QTYORDERED, cm.clientno, pm.description
from product_master pm, sales_order_details sod, client_master cm, sales_order so
where pm.productno = sod.productno
and sod.orderno = so.orderno
and so.CLIENTNO = cm.CLIENTNO
and pm.DESCRIPTION = 'T-Shirts' 
and sod.QTYORDERED > 5;

f. select pm.DESCRIPTION, sm.SALESMANNAME
from client_master cm, sales_order so, salesman_master sm, sales_order_details sod, product_master pm
where 
cm.CLIENTNO = so.CLIENTNO
and so.ORDERNO = sod.ORDERNO
and sod.PRODUCTNO = pm.PRODUCTNO
and so.SALESMANNO = sm.SALESMANNO
and cm.NAME = 'ivan bayroos' or cm.NAME = 'Ashwini Joshi';

g. 
select pm.DESCRIPTION, sod.QTYORDERED
from PRODUCT_MASTER pm, SALES_ORDER_DETAILS sod, SALES_ORDER so, CLIENT_MASTER cm
where 
pm.PRODUCTNO = sod.PRODUCTNO
and sod.ORDERNO = so.ORDERNO
and so.CLIENTNO = cm.CLIENTNO
and cm.CLIENTNO = 'C00001' , 'C00002';

3.

//issue