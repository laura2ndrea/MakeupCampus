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
  
---

## Tecnologías :computer:
<a name="tecno"></a>
Tecnologías utilizadas para desarrollar el proyecto.
- StarUML. 
- MySQL Workbeanch. 

---

## Instalación :wrench:
<a name="install"></a>
