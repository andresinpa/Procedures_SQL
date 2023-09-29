CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_2`()
BEGIN
	SELECT CONCAT('Hola ', '¿Cómo estas?') as RESULTADO;
END