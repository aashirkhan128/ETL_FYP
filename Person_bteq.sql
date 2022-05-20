.LOGON 192.168.168.128 /dbc,dbc;


Insert into CORE.Person
 Select 
  cast (BusinessEntityID as int)
,cast (PersonType as varchar(5))              
,cast (NameStyle as  varchar(10))
,cast (Titlle as varchar(10))   
,cast (FirstName as varchar(20))        
,cast (MiddleName as varchar(10))           
,cast (LastName as varchar(20))      
,cast (Suffix as varchar(5)) 
,cast (EmailPromotion as int)
,cast (Demographics as varchar(1000))
,cast (rowguid as varchar(100))
,cast(substr(ModifiedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS ModifiedDate
 from Staging.Person_stg;



.LOGOFF;
