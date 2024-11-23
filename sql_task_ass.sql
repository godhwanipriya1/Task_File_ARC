create table product_data (
	ProductID varchar(25),
	ProductCategory	varchar(25),
	Price float,
	Supplier varchar(25),
	ProductionCost float)
	
select * from product_data

create table inventory(
	ProductID varchar(25),
	Region varchar(25),
	StockLevel int,
	ReorderPoint int,
	LeadTime int)

select * from inventory

select p.productcategory, i.region, i.stocklevel
from product_data as p
inner join inventory as i
on p.productid = i.productid
where i.stocklevel < i.reorderpoint;

select sum(p.price * i.stocklevel) as TotalInventoryValue
from product_data as p
inner join inventory as i 
ON p.productid = i.productid;

select p.productcategory, i.region, i.leadtime
from product_data as p
inner join inventory as i
on p.productid = i.productid
where i.leadtime > 7;

select supplier, AVG(productioncost) AS AvgProductionCost
from product_data
group by supplier;

select * from product_data



