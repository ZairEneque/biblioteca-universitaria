-- Tabla de Usuarios Universitarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    codigo_universitario VARCHAR(10) NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    correo_institucional VARCHAR(50) NOT NULL
);

-- Tabla de Catálogo de Libros
CREATE TABLE libros (
    isbn VARCHAR(13) PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ejemplares_disponibles INT NOT NULL
);

-- Tabla de Préstamos y Devoluciones
CREATE TABLE prestamos (
    id_prestamo INT PRIMARY KEY,
    id_usuario INT,
    isbn VARCHAR(13),
    fecha_salida DATE NOT NULL,
    fecha_devolucion DATE NOT NULL,
    estado_prestamo VARCHAR(20) DEFAULT 'Pendiente',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (isbn) REFERENCES libros(isbn)
);
