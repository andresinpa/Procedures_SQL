CREATE DEFINER=`root`@`localhost` PROCEDURE `atribuir_valores`()
BEGIN
	DECLARE numero INTEGER default 892;
    SELECT numero;
    SET numero = 423;
    SELECT numero;
    
END