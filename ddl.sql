CREATE DATABASE IF NOT EXISTS Tienda_de_Maquillaje;

USE Tienda_de_Maquillaje;



CREATE TABLE IF NOT EXISTS Empresas (
	id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Marcas (
	id_marca INT PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Productos (
	id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    id_marca INT,
    FOREIGN KEY (id_marca) REFERENCES Marcas(id_marca)
);

CREATE TABLE IF NOT EXISTS Tipos_Cosmeticos (
	id_compra_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL)
;

CREATE TABLE IF NOT EXISTS Componentes (
	id_componente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Areas_empleados (
	id_area_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Puestos (
	id_puesto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_area_empleado INT,
    FOREIGN KEY (id_area_empleado) REFERENCES Areas_empleados(id_area_empleado)
);

CREATE TABLE IF NOT EXISTS Empleados (
	id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_puesto INT,
    fecha_contratacion DATE, 
    FOREIGN KEY (id_puesto) REFERENCES Puestos(id_puesto)
);


CREATE TABLE IF NOT EXISTS Clientes (
	id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo_electronico VARCHAR(100) NOT NULL UNIQUE,
	direccion VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Proveedores (
	id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono INT NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    id_empresa INT,
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id_empresa)
);

CREATE TABLE IF NOT EXISTS Proveedores_productos (
	id_producto INT,
	id_proveedor INT,
	PRIMARY KEY (id_producto, id_proveedor),    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),    
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

CREATE TABLE IF NOT EXISTS Proveedores_empresas (
	id_empresa INT,
	id_proveedor INT,
	PRIMARY KEY (id_empresa, id_proveedor),    
    FOREIGN KEY (id_empresa) REFERENCES Empresas(id_empresa),    
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

CREATE TABLE IF NOT EXISTS Ventas (
	id_venta INT PRIMARY KEY AUTO_INCREMENT,
    fecha_de_venta DATETIME NOT NULL,
    id_cliente INT,
    id_empleado INT,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

CREATE TABLE IF NOT EXISTS Ventas_produtos (
	cantidad INT NOT NULL,
    subtotal DECIMAL(10,2),
    id_venta INT,
	id_producto INT,
    PRIMARY KEY (id_venta, id_producto),    
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE IF NOT EXISTS Compras (
	id_compra INT PRIMARY KEY,
    id_proveedor INT,
    fecha_orden DATETIME NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedores(id_proveedor)
);

CREATE TABLE IF NOT EXISTS Compras_productos (
	id_compra INT,
	id_producto INT,
	PRIMARY KEY (id_compra, id_producto),    
    FOREIGN KEY (id_compra) REFERENCES Compras(id_compra),    
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE IF NOT EXISTS Tipos_accesorios (
	id_tipo_accesorio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Accesorios (
	id_accesorio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_tipo_accesorio INT,
    id_producto INT,
    FOREIGN KEY (id_tipo_accesorio) REFERENCES Tipos_accesorios(id_tipo_accesorio),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE IF NOT EXISTS Skincare (
	id_skincare INT PRIMARY KEY AUTO_INCREMENT,
    fecha_expiracion DATE,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);
    
CREATE TABLE IF NOT EXISTS Skincare_Componentes (
    id_skincare INT,
    id_componente INT,
    PRIMARY KEY (id_skincare, id_componente),   
	FOREIGN KEY (id_skincare) REFERENCES Skincare(id_skincare),
	FOREIGN KEY (id_componente) REFERENCES Componentes(id_componente)
);

CREATE TABLE IF NOT EXISTS Tipos_piel (
	id_tipo_piel INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Skincare_Tipo_piel (
	id_skincare INT,    
    id_tipo_piel INT,    
    PRIMARY KEY (id_skincare, id_tipo_piel),    
    FOREIGN KEY (id_skincare) REFERENCES Skincare(id_skincare),    
    FOREIGN KEY (id_tipo_piel) REFERENCES Tipos_piel(id_tipo_piel)
);


CREATE TABLE IF NOT EXISTS Perfumes (
	id_perfume INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    id_producto INT,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

CREATE TABLE IF NOT EXISTS Aromas (
	id_aroma INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Perfumes_Aromas (
	id_aroma INT,    
    id_perfume INT,  
	PRIMARY KEY (id_aroma, id_perfume),    
    FOREIGN KEY (id_aroma) REFERENCES Aromas(id_aroma),    
    FOREIGN KEY (id_perfume) REFERENCES Perfumes(id_perfume)
);

CREATE TABLE IF NOT EXISTS Tonos_Colores (
	id_tono_color INT PRIMARY KEY AUTO_INCREMENT,
    color_tono VARCHAR(100) NOT NULL,
    acabado VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Tipos_cosmeticos (
	id_tipo_cosmetico INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cosmeticos (
	id_cosmetico INT PRIMARY KEY AUTO_INCREMENT,
    	id_tipo_cosmetico INT,
    	id_tono_color  INT,
    	fecha_expiracion DATE,
    	id_producto INT,
	FOREIGN KEY (id_tipo_cosmetico) REFERENCES Tipos_cosmeticos(id_tipo_cosmetico),
    FOREIGN KEY (id_tono_color) REFERENCES Tonos_Colores(id_tono_color),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

