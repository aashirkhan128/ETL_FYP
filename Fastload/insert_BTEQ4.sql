.LOGON 192.168.168.128 /dbc,dbc;


INSERT INTO core.SalesOrderDetail
SEL * FROM staging.Sales_SalesOrderDetail_Stg_HIST;



.LOGOFF;
