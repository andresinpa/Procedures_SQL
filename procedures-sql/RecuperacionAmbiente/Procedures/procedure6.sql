CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_1`()
BEGIN
	DECLARE vnombre VARCHAR(50);
    DECLARE c CURSOR FOR SELECT NOMBRE FROM tabla_de_clientes LIMIT 4;
    OPEN c;
    FETCH c INTO vnombre;
    SELECT vnombre;
    FETCH c INTO vnombre;
    SELECT vnombre;
    FETCH c INTO vnombre;
    SELECT vnombre;
    FETCH c INTO vnombre;
    SELECT vnombre;
    CLOSE c;
END