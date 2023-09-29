CREATE DEFINER=`root`@`localhost` PROCEDURE `edad_clientes`(vdni VARCHAR(20))
BEGIN
	DECLARE vresultado VARCHAR(50);
    DECLARE vfecha DATE;
    SELECT FECHA_DE_NACIMIENTO INTO vfecha FROM tabla_de_clientes WHERE DNI = vdni;
    IF
		vfecha < '19950101'
    THEN
		SET vresultado = 'cliente viejo';
	else
		SET vresultado = 'cliente joven';
	END IF;
	SELECT vresultado;
END