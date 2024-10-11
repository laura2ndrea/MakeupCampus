-- Inserción de Areas_Empleados
INSERT INTO Areas_Empleados (nombre) VALUES ('Ventas');
INSERT INTO Areas_Empleados (nombre) VALUES ('Bodega');
INSERT INTO Areas_Empleados (nombre) VALUES ('Administración');

-- Inserción de Puestos
INSERT INTO Puestos (nombre, id_area_empleado) VALUES ('Gerente de ventas', 1);
INSERT INTO Puestos (nombre, id_area_empleado) VALUES ('Asesor de ventas', 1);
INSERT INTO Puestos (nombre, id_area_empleado) VALUES ('Supervisor de bodega', 2);
INSERT INTO Puestos (nombre, id_area_empleado) VALUES ('Contador', 3);

-- Inserción de Empleados
INSERT INTO Empleados (nombre, id_puesto, fecha_contratacion) VALUES ('Valeria Ríos', 1, '2022-06-15');
INSERT INTO Empleados (nombre, id_puesto, fecha_contratacion) VALUES ('David Rodríguez', 2, '2023-03-01');
INSERT INTO Empleados (nombre, id_puesto, fecha_contratacion) VALUES ('Camila Gómez', 2, '2021-11-20');
INSERT INTO Empleados (nombre, id_puesto, fecha_contratacion) VALUES ('Paula Sanchéz', 2, '2024-09-20');

-- Inserción de Clientes
INSERT INTO Clientes (id, nombre, correo_electronico, direccion, numero_telefono) 
VALUES (1, 'Laura Méndez', 'laura.mendez@gmail.com', 'Calle 12 #34-56', '3101234567');
INSERT INTO Clientes (id, nombre, correo_electronico, direccion, numero_telefono) 
VALUES (2, 'Alejandro Pérez', 'alejandro.perez@hotmail.com', 'Carrera 45 #23-12', '3159876543');
INSERT INTO Clientes (id, nombre, correo_electronico, direccion, numero_telefono) 
VALUES (3, 'Sofía Morales', 'sofia.morales@yahoo.com', 'Calle 8 #10-20', '3123456789');
INSERT INTO Clientes (id, nombre, correo_electronico, direccion, numero_telefono) 
VALUES (4, 'Carlos Gutiérrez', 'carlos.gutierrez@outlook.com', 'Avenida 30 #22-14', '3209876543');
INSERT INTO Clientes (id, nombre, correo_electronico, direccion, numero_telefono) 
VALUES (5, 'Mariana López', 'mariana.lopez@msn.com', 'Carrera 7 #65-40', '3198765432');

-- Inserción de Ventas
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-07 11:45:00', 3, 4, 150.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-08 09:30:00', 3, 2, 275.50);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-09 14:15:00', 3, 3, 120.75);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-03 13:00:00', 4, 2, 80.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-04 12:30:00', 4, 3, 245.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-05 17:45:00', 4, 4, 100.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-06 10:15:00', 5, 2, 190.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-07 16:30:00', 5, 3, 325.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-08 11:00:00', 5, 4, 210.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-01 10:30:00', 1, 4, 250.00);
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) 
VALUES ('2024-10-05 15:00:00', 2, 2, 320.50);

-- Inserción de Marcas
INSERT INTO Marcas (id, nombre) VALUES (1, 'Glamour Pro');
INSERT INTO Marcas (id, nombre) VALUES (2, 'Bella Beauty');

-- Inserción de Productos 
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Lipstick Matte', 'Labial de acabado mate', 25.50, 100, 1);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Eyeliner Waterproof', 'Delineador de ojos resistente al agua', 18.00, 150, 2);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Blush Rosado', 'Rubor en polvo tono rosado', 15.75, 200, 1);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Perfume Floral Dream', 'Perfume con aroma floral', 85.00, 50, 2);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Perfume Ocean Breeze', 'Perfume con aroma a océano', 90.50, 45, 1);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Set de Brochas', 'Set de 10 brochas para maquillaje', 45.00, 60, 2);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Espejo Compacto', 'Espejo compacto con diseño elegante', 10.00, 120, 2);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Crema Hidratante', 'Crema hidratante para piel seca', 35.00, 80, 2);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Serum Anti-envejecimiento', 'Serum con antioxidantes', 60.00, 70, 1);
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) 
VALUES ('Limpiador Facial', 'Limpiador suave para piel sensible', 20.50, 90, 2);

-- Inserción de Ventas_Productos
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (1, 1, 2, 2 * 25.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (1, 4, 1, 1 * 85.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (1, 8, 1, 1 * 35.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (2, 2, 1, 1 * 18.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (2, 5, 1, 1 * 90.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (2, 9, 1, 1 * 20.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (3, 3, 1, 1 * 15.75); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (3, 6, 1, 1 * 45.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (3, 10, 1, 1 * 20.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (4, 1, 1, 1 * 25.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (5, 4, 1, 1 * 85.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (6, 7, 1, 1 * 45.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (7, 2, 1, 1 * 18.00); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (8, 5, 1, 1 * 90.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (9, 9, 1, 1 * 20.50); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (10, 3, 1, 1 * 15.75); 
INSERT INTO Ventas_Productos (id_venta, id_producto, cantidad, subtotal) 
VALUES (11, 6, 1, 1 * 45.00); 

-- Inserción de Tipos_Accesorios
INSERT INTO Tipos_Accesorios (nombre) VALUES ('Brochas');
INSERT INTO Tipos_Accesorios (nombre) VALUES ('Espejos');

-- Inserción de Accesorios 
INSERT INTO Accesorios (nombre, id_tipo_accesorio, id_producto) 
VALUES ('Set de Brochas', 1, 6);
INSERT INTO Accesorios (nombre, id_tipo_accesorio, id_producto) 
VALUES ('Espejo Compacto', 2, 7);

-- Inserción de Aromas
INSERT INTO Aromas (nombre) VALUES ('Floral');
INSERT INTO Aromas (nombre) VALUES ('Cítrico');
INSERT INTO Aromas (nombre) VALUES ('Marino');

-- Inserción de Perfumes 
INSERT INTO Perfumes (nombre, id_producto) 
VALUES ('Perfume Floral Dream', 4);
INSERT INTO Perfumes (nombre, id_producto) 
VALUES ('Perfume Ocean Breeze', 5);

-- Inserción de Perfumes_Aromas
INSERT INTO Perfumes_Aromas (id_aroma, id_perfume) VALUES (1, 1);
INSERT INTO Perfumes_Aromas (id_aroma, id_perfume) VALUES (2, 2);
INSERT INTO Perfumes_Aromas (id_aroma, id_perfume) VALUES (3, 2);

-- Inserción de Tipos_Cosmeticos
INSERT INTO Tipos_Cosmeticos (nombre) VALUES ('Labiales');
INSERT INTO Tipos_Cosmeticos (nombre) VALUES ('Máscaras');
INSERT INTO Tipos_Cosmeticos (nombre) VALUES ('Blush');

-- Inserción de Tonos_Colores
INSERT INTO Tonos_Colores (color_tono, acabado) VALUES ('Rojo Intenso', 'Mate');
INSERT INTO Tonos_Colores (color_tono, acabado) VALUES ('Negro', 'Mate');
INSERT INTO Tonos_Colores (color_tono, acabado) VALUES ('Rosa Claro', 'Natural');

-- Inserción de Cosmeticos
INSERT INTO Cosmeticos (id_tipo_cosmetico, id_tono_color, fecha_expiracion, id_producto) 
VALUES (1, 1, '2025-10-01', 1);
INSERT INTO Cosmeticos (id_tipo_cosmetico, id_tono_color, fecha_expiracion, id_producto) 
VALUES (2, 2, '2025-12-01', 2); 
INSERT INTO Cosmeticos (id_tipo_cosmetico, id_tono_color, fecha_expiracion, id_producto) 
VALUES (3, 3, '2025-09-15', 3); 

-- Inserción de Skincare
INSERT INTO Skincare (fecha_expiracion, id_producto) 
VALUES ('2025-12-31', 8); 
INSERT INTO Skincare (fecha_expiracion, id_producto) 
VALUES ('2026-01-15', 9); 
INSERT INTO Skincare (fecha_expiracion, id_producto) 
VALUES ('2025-11-10', 10); 

-- Inserción de Tipos_Pieles
INSERT INTO Tipos_Pieles (nombre) VALUES ('Grasa');
INSERT INTO Tipos_Pieles (nombre) VALUES ('Seca');
INSERT INTO Tipos_Pieles (nombre) VALUES ('Normal');

-- Inserción de Skincare_TiposPieles
INSERT INTO Skincare_TiposPieles (id_skincare, id_tipo_piel) VALUES (1, 1);
INSERT INTO Skincare_TiposPieles (id_skincare, id_tipo_piel) VALUES (2, 2);
INSERT INTO Skincare_TiposPieles (id_skincare, id_tipo_piel) VALUES (3, 1);
INSERT INTO Skincare_TiposPieles (id_skincare, id_tipo_piel) VALUES (3, 3);

-- Inserción de Componentes
INSERT INTO Componentes (nombre) VALUES ('Ácido Hialurónico');
INSERT INTO Componentes (nombre) VALUES ('Vitamina C');

-- Inserción de Skincare_Componentes
INSERT INTO Skincare_Componentes (id_skincare, id_componente) VALUES (1, 1);
INSERT INTO Skincare_Componentes (id_skincare, id_componente) VALUES (2, 2);
INSERT INTO Skincare_Componentes (id_skincare, id_componente) VALUES (3, 2);

-- Inserción de Empresas
INSERT INTO Empresas (nombre) VALUES ('Cosmeticos Lux');
INSERT INTO Empresas (nombre) VALUES ('Belleza Total');

-- Inserción de Proveedores
INSERT INTO Proveedores (nombre, telefono, direccion, id_empresa) 
VALUES ('Lucía Martínez', 3216549870, 'Avenida 45 #12-34', 1);
INSERT INTO Proveedores (nombre, telefono, direccion, id_empresa) 
VALUES ('Carlos Gómez', 3109876543, 'Calle 10 #11-45', 2); 

-- Inserción de Compras
INSERT INTO Compras (id_proveedor, fecha_orden, total) 
VALUES (1, '2024-09-20 14:00:00', 500.00);
INSERT INTO Compras (id_proveedor, fecha_orden, total) 
VALUES (2, '2024-09-21 10:30:00', 700.00);

-- Inserción de Compras_Productos 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (1, 1, 5, 100.00); 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (1, 3, 2, 150.00); 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (1, 5, 4, 250.00); 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (2, 2, 3, 210.00); 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (2, 4, 1, 190.00); 
INSERT INTO Compras_Productos (id_compra, id_producto, cantidad, subtotal) 
VALUES (2, 6, 6, 300.00);

-- Inserción de Proveedores_Empresas
INSERT INTO Proveedores_Empresas (id_proveedor, id_empresa) VALUES (1, 1);
INSERT INTO Proveedores_Empresas (id_proveedor, id_empresa) VALUES (2, 2);

-- Inserciones de Proveedores_Productos 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (1, 1); 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (1, 3); 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (1, 5); 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (2, 2); 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (2, 4); 
INSERT INTO Proveedores_Productos (id_proveedor, id_producto) 
VALUES (2, 6);







