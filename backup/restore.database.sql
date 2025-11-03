RESTORE FILELISTONLY FROM DISK = N'/backup/CoderHouse.bak';


RESTORE DATABASE [CoderHouse]
FROM DISK = N'/backup/CoderHouse.bak'
WITH 
    MOVE 'CoderHouse' TO '/var/opt/mssql/data/CoderHouse.mdf',
    MOVE 'CoderHouse_Log' TO '/var/opt/mssql/data/CoderHouse_log.ldf',
    NOUNLOAD,
    STATS = 5;