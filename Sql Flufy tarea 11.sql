CREATE database ecommerceFluffy;
Use ecommerceFluffy;
-- Tabla Persona

CREATE TABLE Persona (
  id INT PRIMARY KEY AUTO_INCREMENT,
  documento VARCHAR(50),
  nombre VARCHAR(50),
  edad INT,
  direccion VARCHAR(100),
  telefono VARCHAR(20),
  correo VARCHAR(20),
  fecha_nacimiento DATE
);

-- Tabla Empleado
CREATE TABLE Empleado (
  id INT PRIMARY KEY AUTO_INCREMENT,
  persona_id INT,
  salario DECIMAL(10, 2),
  cargo VARCHAR(50),
  FOREIGN KEY (persona_id) REFERENCES Persona(id)
);

-- Tabla Admin
CREATE TABLE Admin (
  id INT PRIMARY KEY AUTO_INCREMENT,
  persona_id INT,
  departamento VARCHAR(50),
  permisos  VARCHAR(50),
  FOREIGN KEY (persona_id) REFERENCES Persona(id)
);

-- Tabla Mascota
CREATE TABLE Mascota (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  especie VARCHAR(50),
  generro VARCHAR(50),
  talla FLOAT,
  peso FLOAT,
  fecha_Nacimiento DATE,
  foto VARCHAR(50),
  persona_id INT
);

-- Tabla Login
CREATE TABLE Login (
  id_login INT PRIMARY KEY AUTO_INCREMENT,
  persona_id INT,
  username VARCHAR(50),
  password VARCHAR(50),
  FOREIGN KEY (persona_id) REFERENCES Persona(id)
);

-- Tabla Perro
CREATE TABLE Perro (
  id_perro INT PRIMARY KEY AUTO_INCREMENT,
  mascota_id INT,
  raza VARCHAR(50),
  comida_favorita VARCHAR(50),
  FOREIGN KEY (mascota_id) REFERENCES Mascota(id)
);

-- Tabla Gato
CREATE TABLE Gato (
  id_gato INT PRIMARY KEY AUTO_INCREMENT,
  mascota_id INT,
  raza VARCHAR(50),
  comida_favorita VARCHAR(50),
  FOREIGN KEY (mascota_id) REFERENCES Mascota(id)
);

-- Tabla Perdido
CREATE TABLE Perdido (
  id_pedido INT PRIMARY KEY AUTO_INCREMENT,
  mascota_id INT,
  fecha_perdido DATE,
  lugar_perdido VARCHAR(50),
  hora TIME,
  recompensa VARCHAR(50),
  descripcion VARCHAR(100),
  FOREIGN KEY (mascota_id) REFERENCES Mascota(id)
);
CREATE TABLE Categoria (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50)
);

-- Tabla Producto
CREATE TABLE Producto (
  id_producto INT PRIMARY KEY AUTO_INCREMENT,
  nombre_producto VARCHAR(50),
  referencia VARCHAR(50),
  unidades_disponibles VARCHAR(50),
  precio DECIMAL(10, 2),
  fecha_compra DATE,
  categoria VARCHAR(50),
  marca VARCHAR(50),
  descripcion VARCHAR(50),
  beneficios VARCHAR(50),
  caracteristicas VARCHAR(50),
  foto VARCHAR(50),
  precio_compra INT,
  precio_venta INT,
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES Categoria(id)
);

-- Tabla Alimento
CREATE TABLE Alimento (
  id_alimento INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  marca VARCHAR(50),
  peso_presentacion VARCHAR(50),
  fecha_vencimiento VARCHAR(50),
  tipo_alimento VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);

-- Tabla Juguete
CREATE TABLE Juguete (
  id INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  material VARCHAR(50),
  categoria VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);


-- Tabla CuidadoHigiene
CREATE TABLE CuidadoHigiene (
  id INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  descripcion TEXT,
  categoria VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);

-- Tabla Accesorios
CREATE TABLE Accesorios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  tipo VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);

-- Tabla Medicamentos
CREATE TABLE Medicamentos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  tipo VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);

-- Tabla Arenas
CREATE TABLE Arenas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  producto_id INT,
  tipo VARCHAR(50),
  FOREIGN KEY (producto_id) REFERENCES Producto(id_producto)
);