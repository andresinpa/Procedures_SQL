CREATE DEFINER=`root`@`localhost` FUNCTION `f_define_sabor`(vsabor VARCHAR(40)) RETURNS varchar(40) CHARSET utf8mb4
BEGIN
	DECLARE vretorno VARCHAR(20) DEFAULT '';
    CASE vsabor
		WHEN 'Maracuya' THEN SET vretorno =  'Muy delicioso';
		WHEN 'Limon' THEN SET vretorno =  'Muy delicioso';
		WHEN 'Frutilla' THEN SET vretorno =  'Muy delicioso';
		WHEN 'Sandia' THEN SET vretorno = 'Normal';
		WHEN 'Mango' THEN SET vretorno = 'Normal';
		ELSE SET vretorno = 'jugos comunes';
    END CASE;
RETURN vretorno;
END