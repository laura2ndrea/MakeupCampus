-- Inserciones en la tabla Empresas
INSERT INTO Empresas (nombre) VALUES 
('Empresa Cosmética A'),
('Empresa Cosmética B'),
('Empresa Cosmética C'),
('Empresa Cosmética D'),
('Empresa Cosmética E'),
('Empresa Cosmética F'),
('Empresa Cosmética G'),
('Empresa Cosmética H'),
('Empresa Cosmética I'),
('Empresa Cosmética J');

-- Inserciones en la tabla Marcas
INSERT INTO Marcas (id_marca, nombre) VALUES
(1, 'Marca A'),
(2, 'Marca B'),
(3, 'Marca C'),
(4, 'Marca D'),
(5, 'Marca E'),
(6, 'Marca F'),
(7, 'Marca G'),
(8, 'Marca H'),
(9, 'Marca I'),
(10, 'Marca J');

-- Inserciones en la tabla Productos
INSERT INTO Productos (nombre, descripcion, precio, stock, id_marca) VALUES 
('Labial Rojo', 'Labial mate color rojo', 12.50, 100, 1),
('Sombras Neutras', 'Paleta de sombras tonos neutros', 25.00, 50, 2),
('Rímel Volumen', 'Rímel para aumentar el volumen de las pestañas', 15.00, 200, 3),
('Base Líquida', 'Base líquida para maquillaje de larga duración', 20.00, 150, 4),
('Polvo Traslúcido', 'Polvo traslúcido para fijar el maquillaje', 10.00, 100, 5),
('Delineador Líquido', 'Delineador líquido resistente al agua', 8.50, 120, 6),
('Rubor Durazno', 'Rubor color durazno', 9.00, 130, 7),
('Corrector de Ojeras', 'Corrector de ojeras en barra', 11.50, 110, 8),
('Iluminador en Polvo', 'Iluminador para dar brillo al rostro', 12.00, 90, 9),
('Labial Nude', 'Labial mate color nude', 13.50, 80, 10);

-- Inserciones en la tabla Tipos_Cosmeticos
INSERT INTO Tipos_Cosmeticos (nombre) VALUES 
('Maquillaje para labios'),
('Maquillaje para ojos'),
('Maquillaje para rostro'),
('Maquillaje para cejas'),
('Maquillaje para pestañas'),
('Maquillaje en polvo'),
('Corrector'),
('Iluminador'),
('Bronceador'),
('Rubor');

-- Inserciones en la tabla Componentes
INSERT INTO Componentes (nombre) VALUES 
('Ácido Hialurónico'),
('Colágeno'),
('Glicerina'),
('Extracto de Aloe Vera'),
('Aceite de Jojoba'),
('Vitamina E'),
('Ácido Láctico'),
('Extracto de Manzanilla'),
('Extracto de Té Verde'),
('Manteca de Karité');

-- Inserciones en la tabla Areas_empleados
INSERT INTO Areas_empleados (nombre) VALUES 
('Ventas'),
('Almacén'),
('Atención al Cliente'),
('Recursos Humanos'),
('Administración'),
('Marketing'),
('Logística'),
('Compras'),
('Desarrollo de Producto'),
('Finanzas');

-- Inserciones en la tabla Puestos
INSERT INTO Puestos (nombre, id_area_empleado) VALUES 
('Cajero', 1),
('Encargado de Inventario', 2),
('Atención Telefónica', 3),
('Especialista en Reclutamiento', 4),
('Gerente de Ventas', 5),
('Coordinador de Marketing', 6),
('Analista Logístico', 7),
('Jefe de Compras', 8),
('Desarrollador de Producto', 9),
('Contador', 10);

-- Inserciones en la tabla Empleados
INSERT INTO Empleados (nombre, id_puesto, fecha_contratacion) VALUES 
('Juan Pérez', 1, '2022-01-15'),
('Laura Gómez', 2, '2023-03-10'),
('Carlos Díaz', 3, '2023-04-05'),
('Ana María Ramírez', 4, '2022-06-25'),
('Pedro Torres', 5, '2021-09-13'),
('Marta Sánchez', 6, '2023-07-01'),
('Jorge García', 7, '2021-08-21'),
('Paula Álvarez', 8, '2020-11-10'),
('Ricardo López', 9, '2021-02-19'),
('Sofía Herrera', 10, '2023-05-12');

-- Inserciones en la tabla Clientes
INSERT INTO Clientes (id_cliente, nombre, correo_electronico, direccion) VALUES 
(1, 'Ana Torres', 'ana.torres@example.com', 'Calle 123'),
(2, 'Carlos Martínez', 'carlos.martinez@example.com', 'Avenida 45'),
(3, 'Lorena González', 'lorena.gonzalez@example.com', 'Carrera 56'),
(4, 'Javier Morales', 'javier.morales@example.com', 'Calle 67'),
(5, 'Diana Ramírez', 'diana.ramirez@example.com', 'Calle 32'),
(6, 'Andrés Lara', 'andres.lara@example.com', 'Avenida 12'),
(7, 'Gabriela Ortiz', 'gabriela.ortiz@example.com', 'Carrera 20'),
(8, 'Ricardo Gómez', 'ricardo.gomez@example.com', 'Calle 45'),
(9, 'María López', 'maria.lopez@example.com', 'Avenida 98'),
(10, 'Fernando Pérez', 'fernando.perez@example.com', 'Calle 33');

-- Inserciones en la tabla Proveedores
INSERT INTO Proveedores (nombre, telefono, direccion, id_empresa) VALUES 
('Proveedor A', 123456789, 'Calle Comercio 1', 1),
('Proveedor B', 987654321, 'Avenida Comercio 2', 2),
('Proveedor C', 123123123, 'Calle Comercio 3', 3),
('Proveedor D', 987987987, 'Avenida Comercio 4', 4),
('Proveedor E', 123456987, 'Calle Comercio 5', 5),
('Proveedor F', 987321654, 'Avenida Comercio 6', 6),
('Proveedor G', 654987321, 'Calle Comercio 7', 7),
('Proveedor H', 321654987, 'Avenida Comercio 8', 8),
('Proveedor I', 147258369, 'Calle Comercio 9', 9),
('Proveedor J', 963852741, 'Avenida Comercio 10', 10);

-- Inserciones en la tabla Proveedores_productos
INSERT INTO Proveedores_productos (id_producto, id_proveedor) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserciones en la tabla Ventas
INSERT INTO Ventas (fecha_de_venta, id_cliente, id_empleado, total) VALUES 
('2024-10-11 14:00:00', 1, 1, 37.50),
('2024-10-11 15:30:00', 2, 2, 25.00),
('2024-10-11 16:45:00', 3, 3, 45.00),
('2024-10-11 17:00:00', 4, 4, 60.00),
('2024-10-12 09:30:00', 5, 5, 75.00),
('2024-10-12 10:00:00', 6, 6, 50.00),
('2024-10-12 11:15:00', 7, 7, 35.00),
('2024-10-12 12:45:00', 8, 8, 40.00),
('2024-10-12 14:00:00', 9, 9, 65.00),
('2024-10-12 15:30:00', 10, 10, 80.00);

-- Inserciones en la tabla Ventas_produtos
INSERT INTO Ventas_produtos (cantidad, subtotal, id_venta, id_producto) VALUES 
(1, 12.50, 1, 1),
(1, 25.00, 2, 2),
(2, 30.00, 3, 3),
(1, 20.00, 4, 4),
(3, 45.00, 5, 5),
(1, 10.00, 6, 6),
(2, 18.00, 7, 7),
(1, 12.50, 8, 8),
(2, 25.00, 9, 9),
(1, 13.50, 10, 10);
