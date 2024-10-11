-- 1. Listar todos los productos de cosméticos de un tipo específico
DELIMITER $$
CREATE PROCEDURE CosmeticosPorTipo(IN tipoCosmetico VARCHAR(100))
BEGIN
    SELECT P.nombre, P.descripcion, P.precio, P.stock
    FROM Productos P
    JOIN Cosmeticos C ON P.id = C.id_producto
    JOIN Tipos_Cosmeticos T ON C.id_tipo_cosmetico = T.id
    WHERE T.nombre = tipoCosmetico;
END $$
DELIMITER ;

CALL CosmeticosPorTipo('Labiales');

-- 2. Obtener todos los productos en una categoría con stock inferior a un valor dado
DELIMITER $
CREATE PROCEDURE ProductosStock(IN categoria VARCHAR(100), IN stock_min INT)
BEGIN
    IF categoria = 'Cosmeticos' THEN
        SELECT * FROM Productos P
        JOIN Cosmeticos C ON P.id = C.id_producto
        WHERE P.stock < stock_min;
    ELSEIF categoria = 'Skincare' THEN
        SELECT * FROM Productos P
        JOIN Skincare S ON P.id = S.id_producto
        WHERE P.stock < stock_min;
    ELSEIF categoria = 'Perfumes' THEN
        SELECT * FROM Productos P
        JOIN Perfumes P2 ON P.id = P2.id_producto
        WHERE P.stock < stock_min;
    ELSEIF categoria = 'Accesorios' THEN
        SELECT * FROM Productos P
        JOIN Accesorios A ON P.id = A.id_producto
        WHERE P.stock < stock_min;
    END IF;
END $
DELIMITER ;

CALL ProductosStock('Skincare', 100);

-- 3. Mostrar todas las ventas realizadas por un cliente específico en un rango de fechas
DELIMITER $
CREATE PROCEDURE VentaClienteRango(IN cliente_nombre VARCHAR(100), IN fecha_inicio DATETIME, IN fecha_fin DATETIME)
BEGIN
    SELECT V.*
    FROM Ventas V
    JOIN Clientes C ON V.id_cliente = C.id
    WHERE C.nombre = cliente_nombre AND V.fecha_de_venta BETWEEN fecha_inicio AND fecha_fin;
END $
DELIMITER ;

CALL VentaClienteRango('Laura Méndez', '2023-01-01', '2024-10-03');

-- 4. Calcular el total de ventas realizadas por un empleado en un mes dado
DELIMITER $
CREATE PROCEDURE VentasEmpleado(IN empleado_nombre VARCHAR(100), IN mes INT, IN anio INT)
BEGIN
    SELECT SUM(V.total) AS total_ventas
    FROM Ventas V
    JOIN Empleados E ON V.id_empleado = E.id
    WHERE E.nombre = empleado_nombre 
    AND MONTH(V.fecha_de_venta) = mes 
    AND YEAR(V.fecha_de_venta) = anio;
END $
DELIMITER ;

CALL VentasEmpleado('Camila Gómez', 10, 2024);

-- 5. Listar los productos más vendidos en un período determinado
DELIMITER $
CREATE PROCEDURE ProductosMasVendidosPeriodo(IN fecha_inicio DATETIME, IN fecha_fin DATETIME)
BEGIN
    SELECT P.nombre, SUM(VP.cantidad) AS total_vendido
    FROM Ventas_Productos VP
    JOIN Ventas V ON VP.id_venta = V.id
    JOIN Productos P ON VP.id_producto = P.id
    WHERE V.fecha_de_venta BETWEEN fecha_inicio AND fecha_fin
    GROUP BY P.nombre
    ORDER BY total_vendido DESC;
END $
DELIMITER ;

CALL ProductosMasVendidosPeriodo('2024-01-01', '2024-10-31');

-- 6. Consultar el stock disponible de un producto por su nombre o identificador
DELIMITER $
CREATE PROCEDURE ConsultarStock(IN producto_nombre VARCHAR(100))
BEGIN
    SELECT nombre, stock
    FROM Productos
    WHERE nombre = producto_nombre;
END $
DELIMITER ;

CALL ConsultarStock('Eyeliner Waterproof');

-- 7. Mostrar las órdenes de compra realizadas a un proveedor específico en el último año
DELIMITER $
CREATE PROCEDURE OrdenesCompraProveedor(IN proveedor_id INT)
BEGIN
    SELECT *
    FROM Compras
    WHERE id_proveedor = proveedor_id 
    AND fecha_orden >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
END $
DELIMITER ;

CALL OrdenesCompraProveedor(2);

-- 8. Listar los empleados que han trabajado más de un año en la tienda
DELIMITER $
CREATE PROCEDURE EmpleadosAnio(IN fecha_actual DATE)
BEGIN
    SELECT *
    FROM Empleados
    WHERE DATEDIFF(fecha_actual, fecha_contratacion) > 365;
END $
DELIMITER ;

CALL EmpleadosAnio(CURDATE());

-- 9. Obtener la cantidad total de productos vendidos en un día específico
DELIMITER $
CREATE PROCEDURE ProductosVendidosDia(IN fecha_especifica DATE)
BEGIN
    SELECT SUM(VP.cantidad) AS total_vendidos
    FROM Ventas_Productos VP
    JOIN Ventas V ON VP.id_venta = V.id
    WHERE DATE(V.fecha_de_venta) = fecha_especifica;
END $
DELIMITER ;

CALL ProductosVendidosDia('2024-10-07');

-- 10. Consultar las ventas de un producto específico (por nombre o ID) y cuántas unidades se vendieron
DELIMITER $
CREATE PROCEDURE VentasProductoEspecifico(IN producto_nombre VARCHAR(100))
BEGIN
    SELECT P.nombre, SUM(VP.cantidad) AS total_cantidad, SUM(VP.subtotal) as total_ventas
    FROM Ventas_Productos VP
    JOIN Ventas V ON VP.id_venta = V.id
    JOIN Productos P ON VP.id_producto = P.id
    WHERE P.nombre = producto_nombre
    GROUP BY P.nombre;
END $
DELIMITER ;

CALL VentasProductoEspecifico('Serum Anti-envejecimiento');