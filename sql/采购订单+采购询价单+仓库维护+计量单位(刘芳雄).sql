/*采购询价表*/
create table buyxun(
BillNO varchar(20) primary key,
BilDate Date,
CustomerID varchar(20),
ValidDate Date,
PriceofTax Number(1),
CurrID varchar(20),
Maker varchar(20),
Permitter varchar(20),
SalesID varchar(20),
AStatus Number(1)
);

/*采购询价明细表*/
create table buyxunxi(
BillNO varchar(20) primary key,
BillDate date,
SerNo number(22),
ProdID varchar(20),
ProdClassID varchar(20),
UnitName varchar(20),
ProdName varchar(20),
sQuantity number(22),
OldPrice Number(*,2),
Discount Number(*,2),
sPrice Number(*,2),
Amount Number(*,2),
TaxRate Number(*,4),
TaxAmt Number(*,2),
VFToal Number(*,2),
SourceTranFlag Varchar(20),
SourceTranBi Varchar(20)
);


/*采购订单表*/
create table buyOrder(
BillNO Varchar(20) primary key,
BillDate Date,
BillStatus Number(1),
CustomerID Varchar(20),
AddressID Varchar(20),
PriceOfTax Number(1),
SalesName Varchar(20),
DepartID Varchar(20),
Maker Varchar(20),
Permitter Varchar(20),
AStatus Number(1)


);

/*采购订单详细表*/
create table buyOrderxi(
SerNo number(22) primary key,
ProdID Varchar(20),
ProdClassID Varchar(20),
ProdClassName Varchar(20),
UnitName Varchar(20),
sQuantity number(22),
OldPrice Number(*,2),
Discount Number(*,2),
sPrice Number(*,2) ,
Amount Number(*,2),
TaxRate Number(*,4),
TaxAmt Number(*,2),
VFTotal Number(*,2),
PreInDate Date,
QtyRemain number(22),
TranType Varchar(20),
FromNO Varchar(20)

);

/*仓库维护表*/
create table wareHouse(
wareID Varchar(20) primary key ,
wareName Varchar(20),
contentPer Varchar(20),
contentPhone Varchar(20),
contentAdre Varchar(20),
remark Varchar(255)

);

/*计量单位维护表*/
create table unit(
unitID Varchar(20) primary key,
unitName Varchar(20),
remark Varchar(255) 
);
select * from unit;
select * from buyxun;
select * from  buyxunxi;
select * from buyOrderxi;
select * from buyorder;
select * from wareHouse;
