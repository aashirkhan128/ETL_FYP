.LOGON 192.168.168.128 /dbc,dbc;


Insert into CORE.Production_Product
 Select 
cast(ProductID as int),
"Name",
ProductNumber,
MakeFlag,
FinishedGoodsFlag,
Color,
SafetyStockLevel,
cast (ReorderPoint as int),
cast (StandardCost as decimal(18,2)),
cast (ListPrice as decimal(18,2)),
"Size",
SizeUnitMeasureCode,
WeightUnitMeasureCode,
cast (Weight as decimal(18,2)),
cast (DaysToManufacture as int),
ProductLine,
Calass,
"Style" ,
cast (ProductSubcategoryID as int),
cast (ProductModelID as int),
cast(substr(SellStartDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) as SellStartDate,
cast(substr(SellEndDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS SellEndDate,
cast(substr(DiscontinuedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' )AS DiscontinuedDate ,
rowguid,
cast(substr(ModifiedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS ModifiedDate
 from Staging.Product_stg;

.LOGOFF;
