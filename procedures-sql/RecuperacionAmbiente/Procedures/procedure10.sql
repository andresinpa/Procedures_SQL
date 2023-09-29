CREATE DEFINER=`root`@`localhost` PROCEDURE `define_sabor_con_error`(vcodigo VARCHAR(20))
BEGIN
	DECLARE vsabor VARCHAR(20);

	DECLARE mensaje_error VARCHAR(50);
	DECLARE CONTINUE handler for 1339
    SET mensaje_error = 'Error no se define en ningun caso';
    SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
    CASE vsabor
		WHEN 'Maracuya' THEN SELECT 'Muy delicioso';
		WHEN 'Limon' THEN SELECT 'Muy delicioso';
		WHEN 'Frutilla' THEN SELECT 'Muy delicioso';
		WHEN 'Sandia' THEN SELECT 'Normal';
		WHEN 'Mango' THEN SELECT 'Normal';
    END CASE;
    SELECT mensaje_error;
END