CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping`()
BEGIN
	DECLARE fin_c INT DEFAULT 0;
	DECLARE vnombre VARCHAR(50);
    DECLARE c CURSOR FOR SELECT NOMBRE FROM tabla_de_clientes;
    DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET fin_c = 1;
    
    OPEN c;
    WHILE fin_c = 0
    DO
		FETCH c INTO vnombre;
        IF fin_c = 0
        THEN SELECT vnombre;
        END IF;
	END WHILE;
	CLOSE c;
END