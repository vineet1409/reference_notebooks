--select BusinessEntityID, JobTitle from HumanResources.Employee
--where JobTitle in ('Research and Development Manager','Engineering Manager');
--where BusinessEntityID > 50 and BusinessEntityID <200;

--select SubTotal,TaxAmt,SubTotal+TaxAmt as 'SubTotalwithTax' 
--from Purchasing.PurchaseOrderHeader; # from --> where ---> select

--select FirstName + MiddleName + LastName as 'FullName' 
--from Person.Person
--where (FirstName + MiddleName + LastName) is NOT NULL;


--select BusinessEntityID
--from HumanResources.Employee
--where MaritalStatus = 'S' and Gender = 'F';

--select * from Person.StateProvince
--where name like 'Ala%';
--where name like '%O';
--where name like 'Al____';


--select City,PostalCode
--from Person.Address
--ORDER BY City asc, PostalCode asc;

select SalesOrderID, SUM(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID;


select SalesOrderID, AVG(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID;



select SalesOrderID, COUNT(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID;



select SalesOrderID, MAX(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID;


select SalesOrderID, MIN(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID;


select FirstName, RIGHT(FirstName,3) as 'extractfromright'
from Person.Person;

select FirstName, LEFT(FirstName,2) as 'extractfromleft'
from Person.Person;


select FirstName, SUBSTRING(FirstName,3,4) as 'extractsubstring'
from Person.Person;


select OrderDate,MONTH(OrderDate) as 'extractmonth'
from Sales.SalesOrderHeader;


select OrderDate,YEAR(OrderDate) as 'extractyear'
from Sales.SalesOrderHeader;

select OrderDate,DAY(OrderDate) as 'extractday'
from Sales.SalesOrderHeader;


select SalesOrderID, SUM(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
group by SalesOrderID
HAVING SUM(UnitPrice)> 10000; -- note u cannot use where with aggregate clause unless its a subquery

select distinct TOP 100  PurchaseOrderID
from Purchasing.PurchaseOrderDetail
where PurchaseOrderID >=1000
order by PurchaseOrderID desc;


select SalesOrderID, SUM(UnitPrice) as 'totalunitpriceperID' 
from sales.SalesOrderDetail
where SalesOrderID > 50000
group by SalesOrderID
HAVING SUM(UnitPrice)> 10000
ORDER BY SalesOrderID desc;


select * 
from Purchasing.PurchaseOrderDetail as pod
	INNER JOIN
Purchasing.PurchaseOrderHeader as poh
ON pod.PurchaseOrderID = poh.PurchaseOrderID

DELETE TOP(2) from Purchasing.PurchaseOrderDetail

-- DROP deletes the table from our DB
