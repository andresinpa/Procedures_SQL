CALL hola_mundo;

CALL muestra_numero;

CALL concaternar;

CALL concatenar_con_comentarios;

CALL concatenar_2;

CALL exhibir_variable;

CALL new_procedure;

CALL atribuir_valores;

CALL manipulacion;

CALL incluir_producto;

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor del mar';

CALL actualizar_edad;

CALL incluir_producto_parametros('100800', 'Sabor del mar', '700 ml', 'Naranja', 'Botella vidrio', '2.25');

SELECT * FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '100800';

CALL incluir_producto_parametros('100801', 'Sabor del mar', '700 ml', 'Naranja', 'Botella vidrio', '4.25');

SELECT * FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1004327';

CALL mostrar_sabor('1004327');

