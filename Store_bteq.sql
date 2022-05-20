.LOGON 192.168.168.128 /dbc,dbc;


Insert into CORE.Sales_Stores
 Select 
 cast (BusinessEntityID as int)
,cast (Name as varchar(30))              
,cast (SalesPersonID as int)
,cast (Demographics as varchar(1000))            
,cast (rowguid as varchar(100))
,cast(substr(ModifiedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS ModifiedDate
 from Staging.Sales_Store_stg;



.LOGOFF;
