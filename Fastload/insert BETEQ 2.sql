.LOGON 192.168.168.128 /dbc,dbc;


INSERT INTO core.TransactionHistoryArchive
SEL * FROM staging.Production_TransactionHistoryArchive_Stg_HIST;




.LOGOFF;
