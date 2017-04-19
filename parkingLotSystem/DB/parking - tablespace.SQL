spool c:\DBCreateInfoParkingDB.log;

-- �������ռ�
CREATE TABLESPACE ParkingDB
DATAFILE 'ParkingDB.dat' SIZE 100M AUTOEXTEND ON NEXT  10M MAXSIZE UNLIMITED;
-- �����û�
--connect internal
CREATE USER park  IDENTIFIED BY park;
  
ALTER USER park IDENTIFIED BY park;
ALTER USER park DEFAULT   TABLESPACE ParkingDB;
ALTER USER park DEFAULT 	ROLE ALL;
GRANT CONNECT TO park;
GRANT RESOURCE TO park;
GRANT create table to park;
GRANT create trigger to park;
--disconnect
spool out;
Exit;




