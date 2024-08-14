CREATE DATABASE IF NOT EXISTS cerveceria_la_birra_es_bella;

USE cerveceria_la_birra_es_bella;

CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

/* M:N (Un usuario puede tener varios roles y un rol puede pertenecer a varios usuarios)*/

CREATE TABLE Usuarios_Roles (
    id_usuario INT,
    id_rol INT,
    PRIMARY KEY(id_usuario, id_rol),
    FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY(id_rol) REFERENCES Roles(id_rol)
);

CREATE TABLE Direcciones (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    codigo_postal VARCHAR(5) NOT NULL,
    localidad VARCHAR(100) NOT NULL,
    calle VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    piso VARCHAR(5),
    letra VARCHAR(5)
);

/* 1:N (Un usuario puede tener varias direcciones)*/

CREATE TABLE usuarios_direcciones (
    id_usuario INT NOT NULL,
    id_direccion INT NOT NULL,
    PRIMARY KEY (id_usuario, id_direccion),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (id_direccion) REFERENCES direcciones(id_direccion)
);


CREATE TABLE Tarjetas (
    id_tarjeta INT AUTO_INCREMENT PRIMARY KEY,
    num_tarjeta VARCHAR(16) UNIQUE NOT NULL,
    nombre_titular VARCHAR(100) NOT NULL,
    fecha_caducidad DATE NOT NULL,
    CVV INT NOT NULL
);

/*1:N (Un usuario puede tener varias tarjetas)*/

CREATE TABLE Usuarios_Tarjetas (
    id_usuario INT,
    id_tarjeta INT,
    PRIMARY KEY(id_usuario, id_tarjeta),
    FOREIGN KEY(id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY(id_tarjeta) REFERENCES Tarjetas(id_tarjeta)
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

/*1:N (Un usuario puede realizar varios pedidos)
1:1 (Un pedido tiene una única dirección y se paga con una única tarjeta)*/


CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME NOT NULL,
    id_usuario INT NOT NULL,
    id_direccion INT,
    id_tarjeta INT,
    FOREIGN KEY(id_usuario) REFERENCES usuarios(id_usuario), /*referencia intro*/
    FOREIGN KEY(id_direccion) REFERENCES Direcciones(id_direccion),
    FOREIGN KEY(id_tarjeta) REFERENCES Tarjetas(id_tarjeta)
);


/*  M:N (Un pedido puede tener varios productos, y un producto puede estar en varios pedidos)*/

CREATE TABLE Pedidos_Productos (
    id_pedido INT,
    id_producto INT,
    unidades INT NOT NULL,
    precio_venta DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY(id_pedido, id_producto),
    FOREIGN KEY(id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY(id_producto) REFERENCES Productos(id_producto)
);

