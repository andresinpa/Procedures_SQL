SELECT * FROM tabla_de_clientes;

SELECT FECHA_DE_NACIMIENTO FROM tabla_de_clientes
WHERE DNI = '50534475787';

CALL edad_clientes('5648641702');

/************************************************************/

SELECT * FROM tabla_de_productos;

SELECT PRECIO_DE_LISTA FROM tabla_de_productos
WHERE CODIGO_DEL_PRODUCTO = '1002767';

CALL precio_producto('1004327');
CALL precio_producto('1000889');

/********************************************************************************/
SELECT DISTINCT SABOR FROM tabla_de_productos;

/* 
	Maracuya -> Delicioso
    Limon -> Delicioso
    Frutilla -> Delicioso
    Uva -> Delicioso
    Sandia -> Normal
    Mango -> Normal
    Los demás -> Comunes
*/

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO= '1004327';

CALL define_sabor('1004327');

/*******************************************************************/

SELECT SABOR, CODIGO_DEL_PRODUCTO FROM tabla_de_productos;

CALL define_sabor_con_error('100432GD7');

/*************************************************************************/
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto_case`(vcodigo VARCHAR(20))
BEGIN
	DECLARE vresultado VARCHAR(40);
    DECLARE vprecio FLOAT;
    SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos
	WHERE CODIGO_DEL_PRODUCTO = vcodigo;
    CASE
		WHEN vprecio >= 12
			THEN SET vresultado = 'Producto costoso';
		WHEN vprecio >= 7 and vprecio <=12
			THEN SET vresultado = 'Producto asequible';
		WHEN vprecio < 7
			THEN SET vresultado = 'Producto barato';
    END CASE;
    SELECT vresultado;
END
$$

CALL precio_producto_case('1004327');


/******************************************/
CREATE TABLE tb_looping (ID INT);
SELECT * FROM tb_looping;

CALL looping(1,10);

/**********************************************************************/

CALL problema_select_into;

/******************************************************************/
CALL cursor_1;

SELECT NOMBRE FROM tabla_de_clientes LIMIT 4;

/***********************************************************************/
CALL cursor_looping;

SELECT NOMBRE FROM tabla_de_clientes;

/***************************************************************/
SELECT * FROM tabla_de_clientes;

/*******************************************************************/
call cursor_looping_varios_campos;

/**************************************************************************/
SET GLOBAL log_bin_trust_function_creators  = 1;
SELECT f_define_sabor('Maracuya');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS TIPO FROM tabla_de_productos;
SELECT NOMBRE_DEL_PRODUCTO, SABOR FROM tabla_de_productos WHERE f_define_sabor(SABOR) = 'Muy delicioso';