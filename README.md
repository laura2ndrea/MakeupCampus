# MakeupCampus
Base de datos para una tienda de cosmeticos. 

## Contenido 
1. [Información general](#info-general)
2. [Tecnologías](#tecno)
3. [Instalacion](#install)
4. [FAQs](#faqs)
5. [Autores](#autores)

---
   
## Información general :speech_balloon:
<a name="info-general"></a>

- **Estado**: completado :white_check_mark:
  
### Diagrama E-R

 <img src="/imagenes-readme/home-can.png" width="80%" alt="home">


### Entidades principales 
- Productos: tabla que contiene la información relacionada a productos. 
- Clientes: tabla que contiene la información relacionada a clientes. 
- Ventas: tabla que contiene la informacion relacionada a las ventas hechas a clientes. 
- Empleados: tabla que contiene la información de los empleados de la tienda. 
- Proveedores: tabla que contiene la información relacionada a los proveedores de la tienda. 


### Entidades secundarias 
- Cosmeticos, skincare, accesorios, ...: tablas relacionadas con la tabla producto y contienen informacion adicional de estos de acuerdo a la categoria del producto.
- Ventas, ventas_productos: tablas relacionadas con productos, clientes y empleados. Para registrar las ventas hechas a clientes.
- Compras, compras_productos: tablas relacionadas con productos, proveedores. Para registrar las compras de productos hechas a proveedores.
- Empresas, empresas_proveedores: tablas relacionadas con el proveedor. Guardar informacion adicional acerca del proveedor y a la empresa que pertenece.
- Tipos_piel, aromas, tonos_colores, ...: tablas que estan relacionadas con diferentes productos y que contiene informacion adicional acerca de este. 
  
### Archivos

- `ddl.sql`: Archivo de definición de la base de datos. Contiene las sentencias SQL para la creación de tablas y relaciones.
- `dml.sql`: Archivo que contiene sentencias SQL para la inserción de datos iniciales en las tablas.
- `dql.sql`: Archivo que contiene sentencias SQL para la consulta de los datos en las tablas.
  
---

## Tecnologías :computer:
<a name="tecno"></a>
Tecnologías utilizadas para desarrollar el proyecto.
- StarUML. 
- MySQL Workbeanch. 

---

## Instalación :wrench:
<a name="install"></a>

1. Clona este repositorio:  
git clone (https://github.com/laura2ndrea/Tienda_Cosmeticos)

2. Carga los archivos SQL en tu sistema de gestión de bases de datos para crear las tablas y poblarlas con los datos iniciales. Asegúrate de ejecutar primero el archivo `ddl.sql` para crear las tablas y luego el archivo `dml.sql` para insertar los datos.

3. Verifica que todas las relaciones están correctamente establecidas revisando las claves foráneas en tu sistema de gestión de base de datos.

---
## Autores :woman:
<a name="autores"></a>

- **Laura Rodríguez**:
   - *Aportes: diagrama, consultas, documentación*
   - *Contacto: laura2ndrea12@gmail.com*
 
  - **Michelle Sanchez**:
   - *Aportes: creacion, inserciones, documentación*
   - *Contacto: micdaya02@gmail.com*

