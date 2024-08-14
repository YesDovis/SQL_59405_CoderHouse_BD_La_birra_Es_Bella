
<div aling="center">
    <img src="/img/Logo_blackbg.png">
</div>

# Entrega Proyecto SQL Coderhouse

## Primera preentrega

Alumna:Dovis Yesica Lorena

Docente: Maximiliano Torreblanca

Comisión: 59405 SQL   

### Introducción: Descripción de la temática de la base de datos:

Crear una base de datos relacionar para gestionar una tienda on line especializada en cerveza llamada "Cervecería La Birra es Bella". 
La base de datos gestionara usuarios, roles (cliente & administrador), direcciones, tarjetas, productos y pedidos.El diseño incluye múltiples tablas que reflejan las relaciones entre los diferentes elementos.

### Diagrama de Entidad Relación
___
<div aling="center">
    <img src="/img/DiagramaDER.jpg">
</div>

___

Para implementar las relaciones descritas, se necesitarán varias tablas intermedias y claves foráneas para establecer las conexiones entre las entidades.  A continuación, detallo cada componente y cómo se interrelacionan. 

___

### Listado de Tablas (Descripcion)

`USUARIOS`  
+ Esta tabla almacena información básica sobre los usuarios.

`ROLES`  
+ Define los roles disponibles en el sistema, como "cliente", "administrador", etc. 

`USUARIO_ROLES`  
+ Esta tabla establece la relación entre usuarios y roles, indicando qué roles tiene asignados cada usuario.

`DIRECCIONES`  
+ Esta tabla almacena información sobre las direcciones de los usuarios.

`USUARIOS_DIRECCIONES`  
+ indicando las direcciones asociadas a cada usuario.

`TARJETAS`  
+ Guarda la información de las tarjetas de crédito de los usuarios.

`USUARIOS_TARJETAS`  
+ indica las tarjetas asociadas a cada usuario.

`PRODUCTOS`  
+ Representa los productos que se venden en la tienda.

`PEDIDOS`  
+ Almacena la información de los pedidos realizados.

`PEDIDOS_PRODUCTOS`  
+ Detalla los productos incluidos en cada pedido

___

## Definición de Entidades / Atributos / Tipo Dato / PK / FK / IX 

<div aling="center">
    <img src="/img/TABLA1.jpg">
</div>
<div aling="center">
    <img src="/img/TABLA2.jpg">
</div>


## Representación del Diagrama ER en Notación Chen:

<div aling="center">
    <img src="/img/DiagramaChen_BD_LBEB.jpg">
</div>

// se utilizo para el esquema https://online.visual-paradigm.com/ es de pago no permite descarga se realiza captura de pantalla, se procede a explicar las Relaciones entre Entidades que no me permitio la web//

Relaciones entre Tablas:

Usuarios y Roles: Relación de muchos a muchos mediante la tabla intermedia Usuarios_Roles.
Usuarios y Direcciones: Relación de uno a muchos a través de la tabla Usuarios_Direcciones.
Usuarios y Tarjetas: Relación de uno a muchos mediante Usuarios_Tarjetas.
Pedidos y Productos: Relación de muchos a muchos mediante Pedidos_Productos.
Pedidos y Direcciones/Tarjetas: Cada pedido está asociado a una única dirección de envío y a una única tarjeta de pago.

Los roles se relacionan con los usuarios a través de una relación de muchos a muchos.
Un usuario puede asociar varias tarjetas a su cuenta.
Cada pedido está relacionado con uno o varios productos, y un producto puede formar parte de varios pedidos.

