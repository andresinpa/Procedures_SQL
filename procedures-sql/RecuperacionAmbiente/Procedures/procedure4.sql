CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_con_comentarios`()
BEGIN	
	/*
		Este es un ejemplo de comentario.
        al interior de un procedure
    */
    -- Comentario de un stored procedure
    #O comentar asi
	SELECT CONCAT('Hola a todos', ' ', 'Este procedure concatena strings') AS RESULTADO;
    
END