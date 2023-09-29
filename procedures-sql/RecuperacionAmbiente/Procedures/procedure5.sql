CREATE DEFINER=`root`@`localhost` PROCEDURE `concaternar`()
BEGIN
	SELECT CONCAT('Hola mundo', '', '!!!!') AS RESULTADO;
END