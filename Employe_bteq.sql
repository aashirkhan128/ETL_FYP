.LOGON 192.168.168.128 /dbc,dbc;


Insert into CORE.HR_Employee
 Select 
 cast(BusinessEntityID as int)
,cast(NationalIDNumber as int)              
,cast (LoginID as varchar(50))
,cast (OrganizationNode as varchar(50))   
,cast (OrganizationalLevel as int)        
,cast (JobTitle as varchar(50))           
,cast (BirthDate as  varchar(50))      
,cast (MaritalStatus as varchar(5)) 
,cast (Gender as varchar(5))
,cast (HireDate as varchar(30))
,cast (SalariedFlag as varchar(10))
,cast (VaccationHours as int)
,cast (SickLeaveHours as int)
,cast (CurrentFlag as varchar(10))
,cast (rowguid as varchar(100))
,cast(substr(ModifiedDate,1,10) as DATE FORMAT 'yyyy-mm-dd' ) AS ModifiedDate
 from Staging.HR_Employee_stg;

.LOGOFF;
