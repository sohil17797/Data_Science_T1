



select name,baldue from client_master where city = 'Mumbai' ;


delete from client_master ;

delete from client_master where city = 'Mumbai' ;


update client_master set ADDRESS1 = "shantiniketan";

update client_master set ADDRESS1 = "boriwali" where city = "Mumbai";




primary key 
------------
uniqe column
dont allow duplicate Values
only one pk per table
composite primary key 16 

create table bag(color varchar(10), size varchar(10),style varchar(10),primary key(color,style,size))

3           3            3              27
color       size         style
red         30L         urban
green         30L         urban
blue         30L         urban


 studePersonalInfo                            primary
grno        name    ADDRESS1    contact 
1           raj     surat       9865986598     
2           rajesh     surat       9865986598     
3           raj     surat       9865986598     
5
5
pk



studentResult               detailed table
grno
1
2
3
4
5




FK


(




constraint con_name primary key (),
constraint con_name foreign key (cur_table_col) references referencetable(referencestable column),
constraint con_name foreign key (cur_table_col) references referencetable(referencestable column),

)
1.
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

2.

b)
here we have duplicate entry of first row


create table CLIENT_MASTER(CLIENTNO Varchar(6), NAME Varchar(20),ADDRESS1 VARCHAR(30), ADDRESS2 varchar(30),CITY varchar(15),PINCODE numeric(8),STATE varchar(15),BALDUE DEC(10,0) );
-- select * from CLIENT_MASTER;
insert into CLIENT_MASTER Values('C00001','ivan bayroos','Mumbai','400054','Maharastra','15000');
insert into CLIENT_MASTER Values('C00002','Mamta Muzumdar','Madras','780001','Tamil Nadu','0');
insert into CLIENT_MASTER Values('C00003','Chhaya Bankar','Mumbai','400057','Maharastra','5000');
insert into CLIENT_MASTER Values('C00004','Ashwini Joshi','Banglore','560001','Karnataka','0');
insert into CLIENT_MASTER Values('C00005','Hansel colaco','Mumbai','400060','Maharastra','2000');
insert into CLIENT_MASTER Values('C00006','Deepak Sharma','Manglore','560050','Karnataka','0');


insert into PRODUCT_MASTER Values('P00001', 'T-Shirts', '5', 'Piece', '200', '50', '350', '250');
insert into PRODUCT_MASTER Values('P0345', 'Shirts', '6', 'Piece', '150', '50', '500', '350');
insert into PRODUCT_MASTER Values('P06734', 'Cotton Jeans', '5', 'Piece', '100', '20', '600', '450');
insert into PRODUCT_MASTER Values('P07865', 'Jeans', '5', 'Piece', '100', '20', '750', '500');
insert into PRODUCT_MASTER Values('P07868', 'Trousers', '2', 'Piece', '150', '50', '850', '550');
insert into PRODUCT_MASTER Values('P07885', 'Pull Overs', '2.5', 'Piece', '80', '30', '700', '450');
insert into PRODUCT_MASTER Values('P07965', 'Denim Shirts', '4', 'Piece', '100', '40', '350', '250');
insert into PRODUCT_MASTER Values('P07975', 'Lyera Tops', '5', 'Piece', '70', '30', '300', '175');
insert into PRODUCT_MASTER Values('P08865', 'Skirts', '5', 'Piece', '75', '30', '450', '300');

c)
insert into SALESMAN_MASTER Values('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', '400002', 'Maharashtra', '3000', '100', '50', 'Good');
insert into SALESMAN_MASTER Values('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', '400001', 'Maharashtra', '3000', '200', '100', 'Good');
insert into SALESMAN_MASTER Values('S00003', 'Raj', 'P-47', 'Bandra', 'Mumbai', '400032', 'Maharashtra', '3000', '200', '100', 'Good');
insert into SALESMAN_MASTER Values('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', '400044', 'Maharashtra', '3500', '200', '100', 'Good');

2 b)

 insert into SALES_ORDER Values('O19001', 'C00001', '2004-06-12', 'Surat','S00001', 'F', 'N', '2006-07-12', 'In Process');
insert into SALES_ORDER Values('O19002', 'C00002', '2004-06-25', 'Mumbai','S00002', 'P', 'N', '2006-06-27', 'Cancelled');
insert into SALES_ORDER Values('O46865', 'C00003', '2004-02-18', 'Delhi','S00003', 'F', 'Y', '2006-02-20', 'Fullfilled');
insert into SALES_ORDER Values('19003', 'C00001', '2004-04-03', 'Pune','S00001', 'F', 'Y', '2006-04-07', 'Fullfilled');
insert into SALES_ORDER Values('O46866', 'C00004', '2004-05-20', 'Rajkot','S00002', 'P', 'N', '2006-05-22', 'Cancelled');
insert into SALES_ORDER Values('O19008', 'C00005', '2004-05-24', 'Mumbai','S00004', 'F', 'N', '2006-07-26', 'In Process');

c)
insert into SALES_ORDER_DETAILS Values('O19001', 'P00001', '4', '4','525');
insert into SALES_ORDER_DETAILS Values('O19001', 'P07965', '2', '1','8400');
insert into SALES_ORDER_DETAILS Values('O19001', 'P07885', '2', '1','5250');
insert into SALES_ORDER_DETAILS Values('O19002', 'P00001', '10', '0','525');
insert into SALES_ORDER_DETAILS Values('O46865', 'P07868', '3', '3','3150');
insert into SALES_ORDER_DETAILS Values('O46865', 'P07885', '3', '1','5250');

CREATE TABLE CUST_MSTR (
"CUST_NO" VARCHAR(10) PRIMARY KEY,
"FNAME" VARCHAR(25), "MNAME" VARCHAR(25),
"LNAME" VARCHAR(25), "DOB_INC" DATE,
"OCCUP" VARCHAR(25), "PHOTOGRAPH" VARCHAR(2S),
"SIGNATURE" VARCHAR(25), "PANCOPY" VARCHAR(l),
"FORM60" VARCHAR(1));

create table SALES_ORDER (
    ORDERNO varchar(6),
    CLIENTNO varchar(6),
    ORDERDATE DATE,
    DELYADDR varchar(25),
    SALESMANNO varchar(6),
    DELYTYPE varchar(1),
    BILLYN varchar(1),
    DELYDATE DATE,
    ORDERSTATUS varchar(10),
    constraint pk_so PRIMARY KEY (ORDERNO),
    constraint fk_so_cm foreign key (CLIENTNO) references CLIENT_MASTER(CLIENTNO),
    constraint fk_so_sm foreign key (SALESMANNO) references SALESMAN_MASTER(SALESMANNO),
    constraint ck_so_on check (ORDERNO like 'O%'),
    constraint ck_so_deltyp check (DELYTYPE in ('P','F')),
    constraint ck_so_orderstatus check (ORDERSTATUS in ('In Process', 'Fulfilled', 'BackOrder', 'Cancelled'))
);

create table SALES_ORDER_DETAILS (
    ORDERNO varchar(6),
    PRODUCTNO varchar(6),
    QTYORDERED numeric(8),
    QTYDISP numeric(8),
    PRODUCTRATE numeric(10,2),

    constraint sod_on foreign key (ORDERNO) references SALES_ORDER(ORDERNO), 
    constraint sod_pn foreign key (PRODUCTNO) references PRODUCT_MASTER(PRODUCTNO)   
);


select cm.name,cm.city,so.ORDERNO,sm.SALESMANNAME  from 
CLIENT_MASTER cm
inner join SALES_ORDER so
inner join SALESMAN_MASTER sm
on cm.CLIENTNO = so.CLIENTNO 
on so.ORDERNO=  sm.ORDERNO;

select cm.name,cm.city,so.ORDERNO,sm.SALESMANNAME  
from CLIENT_MASTER cm,SALES_ORDER so,SALESMAN_MASTER sm
where cm.CLIENTNO = so.CLIENTNO
and so.ORDERNO = sm.ORDERNO;
where cm.name = 



select CLIENT_MASTER.NAME
	,CLIENT_MASTER.CLIENTNO
	,SALES_ORDER.ORDERNO
	,SALES_ORDER_DETAILS.PRODUCTNO
	,PRODUCT_MASTER.DESCRIPTION
from CLIENT_MASTER
inner join SALES_ORDER on CLIENT_MASTER.CLIENTNO = SALES_ORDER.CLIENTNO
inner join SALES_ORDER_DETAILS on SALES_ORDER.ORDERNO = SALES_ORDER_DETAILS.ORDERNO
inner join PRODUCT_MASTER on SALES_ORDER_DETAILS.PRODUCTNO = PRODUCT_MASTER.PRODUCTNO
where CLIENT_MASTER.CLIENTNO='C00001'


select cm.name,pm.DESCRIPTION 
from SALES_ORDER_DETAILS sod,SALES_ORDER so, PRODUCT_MASTER pm,CLIENT_MASTER cm
where pm.productno = sod.productno
and cm.CLIENTNO = so.CLIENTNO
and so.orderno = sod.orderno
and cm.name = 'ivan bayroos';

select pm.DESCRIPTION,sod.QTYORDERED,sd.DELYDATE
from PRODUCT_MASTER pm, SALES_ORDER_DETAILS sod, SALES_ORDER sd
where 

 MySQL  localhost:3306 ssl  ml  SQL > desc client_master;
+----------+---------------+------+-----+---------+-------+
| Field    | Type          | Null | Key | Default | Extra |
+----------+---------------+------+-----+---------+-------+
| CLIENTNO | varchar(6)    | NO   | PRI | NULL    |       |
| NAME     | varchar(20)   | YES  |     | NULL    |       |
| ADDRESS1 | varchar(30)   | YES  |     | NULL    |       |
| ADDRESS2 | varchar(30)   | YES  |     | NULL    |       |
| CITY     | varchar(15)   | YES  |     | NULL    |       |
| PINCODE  | decimal(8,0)  | YES  |     | NULL    |       |
| STATE    | varchar(15)   | YES  |     | NULL    |       |
| BALDUE   | decimal(10,0) | YES  |     | NULL    |       |
+----------+---------------+------+-----+---------+-------+
8 rows in set (0.0043 sec)
 MySQL  localhost:3306 ssl  ml  SQL > desc product_master;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| PRODUCTNO     | varchar(6)   | NO   | PRI | NULL    |       |
| DESCRIPTION   | varchar(15)  | YES  |     | NULL    |       |
| PROFITPERCENT | decimal(8,0) | YES  |     | NULL    |       |
| UNITMEASURE   | varchar(10)  | YES  |     | NULL    |       |
| QTYONHAND     | decimal(8,0) | YES  |     | NULL    |       |
| REORDERLVL    | decimal(8,0) | YES  |     | NULL    |       |
| SELLPRICE     | decimal(8,2) | YES  |     | NULL    |       |
| COSTPRICE     | decimal(8,2) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.0025 sec)
 MySQL  localhost:3306 ssl  ml  SQL > desc sales_order;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| ORDERNO     | varchar(6)  | NO   | PRI | NULL    |       |
| CLIENTNO    | varchar(6)  | YES  | MUL | NULL    |       |
| ORDERDATE   | date        | YES  |     | NULL    |       |
| DELYADDR    | varchar(25) | YES  |     | NULL    |       |
| SALESMANNO  | varchar(6)  | YES  | MUL | NULL    |       |
| DELYTYPE    | varchar(1)  | YES  |     | NULL    |       |
| BILLYN      | varchar(1)  | YES  |     | NULL    |       |
| DELYDATE    | date        | YES  |     | NULL    |       |
| ORDERSTATUS | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
9 rows in set (0.0027 sec)
 MySQL  localhost:3306 ssl  ml  SQL > desc sales_order_details;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| ORDERNO     | varchar(6)    | YES  | MUL | NULL    |       |
| PRODUCTNO   | varchar(6)    | YES  | MUL | NULL    |       |
| QTYORDERED  | decimal(8,0)  | YES  |     | NULL    |       |
| QTYDISP     | decimal(8,0)  | YES  |     | NULL    |       |
| PRODUCTRATE | decimal(10,2) | YES  |     | NULL    |       |
+-------------+---------------+------+-----+---------+-------+
5 rows in set (0.0031 sec)
 MySQL  localhost:3306 ssl  ml  SQL > desc salesman_master;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| SALESMANNO   | varchar(6)   | NO   | PRI | NULL    |       |
| SALESMANNAME | varchar(20)  | YES  |     | NULL    |       |
| ADDRESS1     | varchar(30)  | YES  |     | NULL    |       |
| ADDRESS2     | varchar(30)  | YES  |     | NULL    |       |
| CITY         | varchar(30)  | YES  |     | NULL    |       |
| PINCODE      | decimal(8,0) | YES  |     | NULL    |       |
| STATE        | varchar(20)  | YES  |     | NULL    |       |
| SALAMT       | decimal(8,2) | YES  |     | NULL    |       |
| TGTTOGET     | decimal(6,2) | YES  |     | NULL    |       |
| YTDSALES     | decimal(6,2) | YES  |     | NULL    |       |
| REMARKS      | varchar(60)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+




select pm.DESCRIPTION,cm.NAME,pm.QTYORDERED
from PRODUCT_MASTER pm, sales_order_details sod, salesman_master sm, sales_order so, client_master cm
where 
 so.CLIENTNO = cm.CLIENTNO
and pm.PRODUCTNO = sod.PRODUCTNO
and sod.ORDERNO = so.ORDERNO
and pm.DESCRIPTION = 'T-Shirts'

select distinct pm.DESCRIPTION,cm.NAME,sod.QTYORDERED 
from PRODUCT_MASTER pm, sales_order_details sod, salesman_master sm, sales_order so, client_master cm 
where 
 so.CLIENTNO = cm.CLIENTNO 
and pm.PRODUCTNO = sod.PRODUCTNO 
and sod.ORDERNO = so.ORDERNO 
and pm.DESCRIPTION = 'T-Shirts';

select pm.DESCRIPTION, sm.SALESMANNAME
from client_master cm, sales_order so, salesman_master sm, sales_order_details sod, product_master pm
where 
cm.CLIENTNO = so.CLIENTNO
and so.ORDERNO = sod.ORDERNO
and sod.PRODUCTNO = pm.PRODUCTNO
and so.SALESMANNO = sm.SALESMANNO
-- and cm.NAME in ('ivan bayroos', 'Ashwini Joshi');
and cm.NAME = 'ivan bayroos' or cm.NAME = 'Ashwini Joshi';

select cm.NAME
from PRODUCT_MASTER pm, sales_order_details sod, salesman_master sm, sales_order so, client_master cm
where 
so.CLIENTNO = cm.CLIENTNO
and pm.PRODUCTNO = sod.PRODUCTNO
and sod.ORDERNO = so.ORDERNO
and so.CLIENTNO = cm.CLIENTNO
and pm.DESCRIPTION = 'T-Shirts';

select pm.DESCRIPTION, sod.QTYORDERED
from PRODUCT_MASTER pm, SALES_ORDER_DETAILS sod, SALES_ORDER so, CLIENT_MASTER cm
where 
pm.PRODUCTNO = sod.PRODUCTNO
and sod.ORDERNO = so.ORDERNO
and so.CLIENTNO = cm.CLIENTNO
and cm.CLIENTNO = 'C00001' , 'C00002';







 select city,sum(baldue) "Baldue" 
 from client_master 
 where baldue>4000 
 group by(city);
 having 


lastname name 
patel    rohan
patel    rohan
patel


select cm.NAME, avg(sod.QTYDISP)
from CLIENT_MASTER cm, sales_order_details sod, sales_order so
where sod.ORDERNO = so.ORDERNO
and so.CLIENTNO = cm.CLIENTNO
group by cm.NAME
having max(sod.QTYORDERED*sod.PRODUCTRATE)>1500;

select city,sum(baldue) "Baldue" from client_master where baldue>4000 group by city,state;

select sum(baldue) "Baldue" from client_master group by(city);

select min(ytdsales)  "min sales" from salesman_master;
select floor(3.14);
select ceil(3.14);
select sum(ytdsales) "year end sales" from salesman_master;

select productno, DESCRIPTION
from product_master 
where productno not in (select productno from sales_order_details);



SELECT PRIMARY_KEY 
FROM information_schema.table_constraints
WHERE table_name='CLIENT_MASTER2';


SELECT TABLE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME
FROM information_schema.table_constraints
WHERE table_name='CLIENT_MASTER2';

alter table CLIENT_MASTER2 drop PRIMARY KEY;

modify

alter : https://dev.mysql.com/doc/refman/8.0/en/alter-table.html

create view vw_1500 as
select cm.NAME, avg(sod.QTYDISP)
from CLIENT_MASTER cm, sales_order_details sod, sales_order so
where sod.ORDERNO = so.ORDERNO
and so.CLIENTNO = cm.CLIENTNO
group by cm.NAME
having max(sod.QTYORDERED*sod.PRODUCTRATE)>1500;

SELECT TABLE_NAME, CONSTRAINT_TYPE, CONSTRAINT_NAME FROM information_schema.table_constraints WHERE table_name='SALES_ORDER';
alter table CLIENT_MASTER2 add constraint pk_cm PRIMARY KEY (CLIENTNO);

rename table client_master2 to client_mater ;

alter table bag add srno varchar(10);

select * from product_master order by description;
select * from product_master order by description,qtyonhand;
select * from product_master order by description desc;

select productno, DESCRIPTION from product_master  where productno  in (select productno from sales_order_details);

select productno, DESCRIPTION
from product_master
where productno not in (select productno from sales_order_details);


DELIMITER &&  
CREATE PROCEDURE get_merit_student ()  
BEGIN  
    SELECT * FROM student_info WHERE marks > 70;  
    SELECT COUNT(stud_code) AS Total_Student FROM student_info;    
END &&  
DELIMITER ;  


DELIMITER &&
CREATE PROCEDURE gst()
BEGIN
    SELECT * FROM PRODUCT_MASTER WHERE SELLPRICE > 500;
20, 21, 67
PAGE 48

viw vs PROCEDURE vs function diff

SELECT *,sellprice*1.18 "WithGST" FROM PRODUCT_MASTER WHERE SELLPRICE > 500;


select * from sales_order where month=

select cm.name, sod.QTYORDERED
from product_master pm, sales_order_details sod, client_master cm, sales_order so
where pm.productno = sod.productno
and sod.orderno = so.orderno
and so.CLIENTNO = cm.CLIENTNO
and pm.DESCRIPTION = 'Pull Overs';

