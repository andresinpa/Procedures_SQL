CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`()
BEGIN
	DECLARE v VARCHAR(20) default 'Caracteres variables';
    DECLARE i INTEGER DEFAULT 544;
    DECLARE d DECIMAL(5,3) DEFAULT 32.343;
    DECLARE f DATE DEFAULT '2002-01-01';
    DECLARE ts TIMESTAMP DEFAULT current_timestamp(); 
    SELECT v;
    SELECT i;
    SELECT d;
    SELECT f;
    SELECT ts;
END