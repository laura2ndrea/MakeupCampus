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
-- Inserciones en la tabla Tipos_cosmeticos
INSERT INTO Tipos_cosmeticos (nombre) VALUES
('Maquillaje para labios'),
('Maquillaje para ojos'),
('Base de maquillaje'),
('Rubor'),
('Corrector');


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

-- Inserciones en la tabla Compras
INSERT INTO Compras (id_compra, id_proveedor, fecha_orden, total) VALUES 
(1, 1, '2024-09-10 10:30:00', 500.00),
(2, 2, '2024-09-11 11:45:00', 300.00),
(3, 3, '2024-09-12 14:20:00', 450.00),
(4, 4, '2024-09-13 09:15:00', 600.00),
(5, 5, '2024-09-14 08:50:00', 550.00),
(6, 6, '2024-09-15 16:30:00', 700.00),
(7, 7, '2024-09-16 13:25:00', 320.00),
(8, 8, '2024-09-17 11:40:00', 470.00),
(9, 9, '2024-09-18 15:00:00', 380.00),
(10, 10, '2024-09-19 10:10:00', 420.00);

-- Inserciones en la tabla Compras_productos
INSERT INTO Compras_productos (id_compra, id_producto) VALUES 
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

-- Inserciones en la tabla Tipos_accesorios
INSERT INTO Tipos_accesorios (nombre) VALUES 
('Brocha de maquillaje'),
('Espejo compacto'),
('Pinzas para cejas'),
('Esponja de maquillaje'),
('Bolsas de cosméticos'),
('Limas de uñas'),
('Set de brochas'),
('Organizador de maquillaje'),
('Cepillo facial'),
('Espejo de aumento');

-- Inserciones en la tabla Accesorios
INSERT INTO Accesorios (nombre, id_tipo_accesorio, id_producto) VALUES 
('Brocha profesional', 1, 1),
('Espejo de bolsillo', 2, 2),
('Pinzas de precisión', 3, 3),
('Esponja Beauty Blender', 4, 4),
('Bolsa de cosméticos mediana', 5, 5),
('Lima de uñas de cristal', 6, 6),
('Set de brochas premium', 7, 7),
('Organizador acrílico', 8, 8),
('Cepillo facial exfoliante', 9, 9),
('Espejo de aumento LED', 10, 10);

-- Inserciones en la tabla Skincare
INSERT INTO Skincare (fecha_expiracion, id_producto) VALUES 
('2025-12-01', 1),
('2026-06-15', 2),
('2025-11-10', 3),
('2026-01-20', 4),
('2025-10-30', 5),
('2026-05-15', 6),
('2025-09-25', 7),
('2026-03-18', 8),
('2025-08-05', 9),
('2026-07-12', 10);

-- Inserciones en la tabla Skincare_Componentes
INSERT INTO Skincare_Componentes (id_skincare, id_componente) VALUES 
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

-- Inserciones en la tabla Tipos_piel
INSERT INTO Tipos_piel (nombre) VALUES 
('Piel seca'),
('Piel grasa'),
('Piel mixta'),
('Piel sensible'),
('Piel normal'),
('Piel madura'),
('Piel acnéica'),
('Piel deshidratada'),
('Piel con rosácea'),
('Piel con manchas');

-- Inserciones en la tabla Skincare_Tipo_piel
INSERT INTO Skincare_Tipo_piel (id_skincare, id_tipo_piel) VALUES 
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

-- Inserciones en la tabla Perfumes
INSERT INTO Perfumes (nombre, id_producto) VALUES 
('Perfume Floral', 1),
('Perfume Cítrico', 2),
('Perfume Amaderado', 3),
('Perfume Dulce', 4),
('Perfume Especiado', 5),
('Perfume Herbal', 6),
('Perfume Fresco', 7),
('Perfume Oriental', 8),
('Perfume Acuático', 9),
('Perfume Gourmand', 10);

-- Inserciones en la tabla Aromas
INSERT INTO Aromas (nombre) VALUES 
('Rosa'),
('Limón'),
('Sándalo'),
('Vainilla'),
('Canela'),
('Lavanda'),
('Menta'),
('Incienso'),
('Algas marinas'),
('Café');

-- Inserciones en la tabla Perfumes_Aromas
INSERT INTO Perfumes_Aromas (id_aroma, id_perfume) VALUES 
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

-- Inserciones en la tabla Tonos_Colores
-- Inserciones en la tabla Tonos_Colores
INSERT INTO Tonos_Colores (color_tono, acabado) VALUES 
('Rojo', 'Mate'),
('Nude', 'Brillante');


-- Inserciones en la tabla Cosmeticos
INSERT INTO Cosmeticos (id_tipo_cosmetico, id_tono_color, fecha_expiracion, id_producto) VALUES 
(1, 1, '2025-12-01', 1),
(2, 2, '2026-06-15', 2),
(1, 1, '2025-10-25', 3),
(2, 2, '2025-11-30', 4),
(3, 1, '2026-02-20', 5),
(3, 2, '2026-03-10', 6),
(4, 1, '2025-09-18', 7),
(4, 2, '2025-08-12', 8),
(5, 1, '2026-04-25', 9),
(5, 2, '2026-07-01', 10);
