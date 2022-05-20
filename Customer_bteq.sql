.LOGON 192.168.168.128 /dbc,dbc;


Insert into CORE.Sales_Customer
 Select 
  cast (CustomerID as int)
,cast (PersonID as int)              
,cast (StoreID as int)
,cast (TerritoryID as int)   
,cast (AccountNumber as varchar(20))        
,cast (rowguid as varchar(100))
,cast(substr(ModifiedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS ModifiedDate
 from Staging.Sales_Customer_stg;


.LOGOFF;
