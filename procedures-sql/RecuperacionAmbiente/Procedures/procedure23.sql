CREATE DEFINER=`root`@`localhost` PROCEDURE `exhibir_variable`()
BEGIN
	DECLARE texto CHAR(20) DEFAULT 'Hola Mundo!!!!!';
    SELECT texto;
END