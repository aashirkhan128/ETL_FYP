.LOGON 192.168.168.128 /dbc,dbc;


CREATE SET TABLE core.WorkOrder ,FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO,
     MAP = TD_MAP1
     (
      WorkOrderID INTEGER,
      ProductID INTEGER,
      OrderQty DECIMAL(18,2) ,
      StockedQty DECIMAL(18,2),
      ScrappedQty DECIMAL(18,2),
      StartDate DATE FORMAT 'YYYY-MM-DD',
      EndDate DATE FORMAT 'YYYY-MM-DD',
      DueDate DATE FORMAT 'YYYY-MM-DD',
      ScrapReasonID INTEGER,
      ModifiedDate DATE FORMAT 'YYYY-MM-DD')
PRIMARY INDEX core.WorkOrder ( WorkOrderID );

INSERT INTO core.WorkOrder
SEL * FROM staging.Production_WorkOrder_Stg;




.LOGOFF;

11:04 PM 12/21/2021
