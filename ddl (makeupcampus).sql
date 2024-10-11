CREATE DATABASE IF NOT EXISTS MakeupCampus;

USE MakeupCampus;

CREATE TABLE IF NOT EXISTS Areas_Empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Puestos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_area_empleado INT,
    FOREIGN KEY (id_area_empleado) REFERENCES Areas_Empleados(id)
);

CREATE TABLE IF NOT EXISTS Empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_puesto INT,
    fecha_contratacion DATE NOT NULL,
    FOREIGN KEY (id_puesto) REFERENCES Puestos(id)
);

CREATE TABLE IF NOT EXISTS Clientes (
	id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL UNIQUE,
	direccion VARCHAR(100) NOT NULL,
    numero_telefono VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Ventas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_de_venta DATETIME NOT NULL,
    id_cliente INT,
    id_empleado INT,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id)
);

CREATE TABLE IF NOT EXISTS Marcas (
	id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Productos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    id_marca INT,
    FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);

CREATE TABLE IF NOT EXISTS Ventas_Productos (
	id_venta INT,
    id_producto INT,
	cantidad INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_venta, id_producto),    
    FOREIGN KEY (id_venta) REFERENCES Ventas(id),    
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Tipos_Accesorios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Accesorios (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_tipo_accesorio INT,
    id_producto INT,
    FOREIGN KEY (id_tipo_accesorio) REFERENCES Tipos_Accesorios(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Aromas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Perfumes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Perfumes_Aromas (
	id_aroma INT,    
    id_perfume INT,  
	PRIMARY KEY (id_aroma, id_perfume),    
    FOREIGN KEY (id_aroma) REFERENCES Aromas(id),    
    FOREIGN KEY (id_perfume) REFERENCES Perfumes(id)
);

CREATE TABLE IF NOT EXISTS Tipos_Cosmeticos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Tonos_Colores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    color_tono VARCHAR(100) NOT NULL,
    acabado VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cosmeticos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_tipo_cosmetico INT,
	id_tono_color  INT,
	fecha_expiracion DATE,
	id_producto INT,
	FOREIGN KEY (id_tipo_cosmetico) REFERENCES Tipos_Cosmeticos(id),
    FOREIGN KEY (id_tono_color) REFERENCES Tonos_Colores(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Skincare (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha_expiracion DATE,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Tipos_Pieles (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Skincare_TiposPieles (
	id_skincare INT,    
    id_tipo_piel INT,    
    PRIMARY KEY (id_skincare, id_tipo_piel),    
    FOREIGN KEY (id_skincare) REFERENCES Skincare(id),    
    FOREIGN KEY (id_tipo_piel) REFERENCES Tipos_Pieles(id)
);

CREATE TABLE IF NOT EXISTS Componentes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Skincare_Componentes (
    id_skincare INT,
    id_componente INT,
    PRIMARY KEY (id_skincare, id_componente),   
	FOREIGN KEY (id_skincare) REFERENCES Skincare(id),
	FOREIGN KEY (id_componente) REFERENCES Componentes(id)
);

CREATE TABLE IF NOT EXISTS Empresas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Proveedores (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR (100) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id)
);

CREATE TABLE IF NOT EXISTS Compras (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_proveedor INT,
    fecha_orden DATETIME NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id)
);

CREATE TABLE IF NOT EXISTS Compras_Productos (
	id_compra INT,
	id_producto INT,
    cantidad INT NOT NULL, 
    subtotal DECIMAL (10,2) NOT NULL, 
	PRIMARY KEY (id_compra, id_producto),    
    FOREIGN KEY (id_compra) REFERENCES Compras(id),    
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);

CREATE TABLE IF NOT EXISTS Proveedores_Empresas (
	id_proveedor INT,
    id_empresa INT,
	PRIMARY KEY (id_proveedor, id_empresa),    
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id),
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id)
);

CREATE TABLE IF NOT EXISTS Proveedores_Productos (
	id_proveedor INT,
    id_producto INT,
	PRIMARY KEY (id_proveedor, id_producto),    
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id),
    FOREIGN KEY (id_producto) REFERENCES Productos(id)
);
