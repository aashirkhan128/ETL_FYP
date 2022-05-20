	select* from Test.Production_TransactionHistory_Stg;

select* from Test.Production_WorkOrder_Stg;
select* from Test.Sales_SalesOrderDetail_Stg;
select* from Test.Production_TransactionHistoryArchive_Stg;

CT Test.Production_TransactionHistory_Stg_HIST AS Test.Production_TransactionHistory_Stg WITH DATA;


HELP TABLE Test.Production_TransactionHistory_Stg

SEL COUNT(*) FROM Test.Production_TransactionHistory_Stg_HIST


INSERT INTO Test.Production_TransactionHistory_Stg_HIST

SEL 
TransactionID+8          
,ProductID                     
,ReferenceOrderID+8         
,ReferenceOrderLineID          
,TransactionDate               
,TransactionType               
,Quantity*9            
,ActualCost*9              
,ModifiedDate                  
FROM Test.Production_TransactionHistory_Stg


SEL TransactionID,COUNT(*)
FROM Test.Production_TransactionHistory_Stg
GROUP BY 1

DEL  FROM Test.Production_TransactionHistory_Stg
WHERE TransactionID='TransactionID';

SEL * from Test.Production_TransactionHistory_Stg_HIST 