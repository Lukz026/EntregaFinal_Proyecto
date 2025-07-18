-- Crear base de datos
CREATE SCHEMA IF NOT EXISTS `cursointegrador_tf` DEFAULT CHARACTER SET utf8mb4;
USE `cursointegrador_tf`;

-- Tabla Usuarios
CREATE TABLE IF NOT EXISTS `Usuarios` (
  `idUsuario` INT AUTO_INCREMENT PRIMARY KEY,
  `TipoUsuario` ENUM('profesor', 'estudiante') NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `DNI` VARCHAR(20) UNIQUE NOT NULL,
  `Contrasena` VARCHAR(100) NOT NULL,
  `Telefono` VARCHAR(20),
  `Email` VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

-- Tabla Cursos
CREATE TABLE IF NOT EXISTS `Cursos` (
  `idCurso` INT AUTO_INCREMENT PRIMARY KEY,
  `Asignatura` VARCHAR(100) NOT NULL,
  `Descripcion` TEXT,
  `Categoria` VARCHAR(45),
  `Activo` BOOLEAN NOT NULL DEFAULT TRUE,
  `FechaCreacion` DATE NOT NULL
) ENGINE=InnoDB;

-- Tabla Inscripciones
CREATE TABLE IF NOT EXISTS `Inscripciones` (
  `idInscripcion` INT AUTO_INCREMENT PRIMARY KEY,
  `idUsuario` INT NOT NULL,
  `idCurso` INT NOT NULL,
  `FechaInscripcion` DATE NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`),
  FOREIGN KEY (`idCurso`) REFERENCES `Cursos`(`idCurso`)
) ENGINE=InnoDB;

-- Tabla Donaciones
CREATE TABLE IF NOT EXISTS `Donaciones` (
  `idDonacion` INT AUTO_INCREMENT PRIMARY KEY,
  `idUsuario` INT NOT NULL,
  `Monto` DECIMAL(10,2) NOT NULL,
  `Fecha` DATE NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`)
) ENGINE=InnoDB;

-- Tabla Progreso
CREATE TABLE IF NOT EXISTS `Progreso` (
  `idProgreso` INT AUTO_INCREMENT PRIMARY KEY,
  `Visto` BOOLEAN NOT NULL,
  `FechaUltAcceso` DATE NOT NULL,
  `Nota` DECIMAL(5,2),
  `idUsuario` INT NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`)
) ENGINE=InnoDB;

-- Tabla Descargas
CREATE TABLE IF NOT EXISTS `Descargas` (
  `idDescarga` INT AUTO_INCREMENT PRIMARY KEY,
  `idUsuario` INT NOT NULL,
  `FechaDescarga` DATE NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`)
) ENGINE=InnoDB;

-- Tabla Contenidos
CREATE TABLE IF NOT EXISTS `Contenidos` (
  `idContenido` INT AUTO_INCREMENT PRIMARY KEY,
  `Titulo` VARCHAR(100) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Url` VARCHAR(255) NOT NULL,
  `Descripcion` TEXT,
  `Conexion` BOOLEAN NOT NULL,
  `FechaSubida` DATE NOT NULL,
  `idCurso` INT NOT NULL,
  FOREIGN KEY (`idCurso`) REFERENCES `Cursos`(`idCurso`)
) ENGINE=InnoDB;

-- Tabla Evaluaciones
CREATE TABLE IF NOT EXISTS `Evaluaciones` (
  `idEvaluacion` INT AUTO_INCREMENT PRIMARY KEY,
  `Titulo` VARCHAR(100) NOT NULL,
  `FechaPublicacion` DATE NOT NULL,
  `idCurso` INT NOT NULL,
  FOREIGN KEY (`idCurso`) REFERENCES `Cursos`(`idCurso`)
) ENGINE=InnoDB;

-- Tabla Preguntas
CREATE TABLE IF NOT EXISTS `Preguntas` (
  `idPregunta` INT AUTO_INCREMENT PRIMARY KEY,
  `Texto` TEXT NOT NULL,
  `OpcionA` VARCHAR(100) NOT NULL,
  `OpcionB` VARCHAR(100) NOT NULL,
  `OpcionC` VARCHAR(100) NOT NULL,
  `OpcionD` VARCHAR(100) NOT NULL,
  `RespuestaCorrecta` ENUM('A', 'B', 'C', 'D') NOT NULL,
  `idEvaluacion` INT NOT NULL,
  FOREIGN KEY (`idEvaluacion`) REFERENCES `Evaluaciones`(`idEvaluacion`)
) ENGINE=InnoDB;

-- Tabla Resultados
CREATE TABLE IF NOT EXISTS `Resultados` (
  `idResultado` INT AUTO_INCREMENT PRIMARY KEY,
  `idUsuario` INT NOT NULL,
  `idEvaluacion` INT NOT NULL,
  `Puntaje` DECIMAL(5,2) NOT NULL,
  `FechaRealizacion` DATE NOT NULL,
  FOREIGN KEY (`idUsuario`) REFERENCES `Usuarios`(`idUsuario`),
  FOREIGN KEY (`idEvaluacion`) REFERENCES `Evaluaciones`(`idEvaluacion`)
) ENGINE=InnoDB;

-- Tabla de Inscripciones

CREATE TABLE IF NOT EXISTS Inscripciones (
  idInscripcion INT AUTO_INCREMENT PRIMARY KEY,
  idUsuario INT NOT NULL,
  idCurso INT NOT NULL,
  FechaInscripcion DATE NOT NULL,
  FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
  FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso)
) ENGINE=InnoDB;

-- Tabla de Mensajes
Use cursointegrador_tf;

CREATE TABLE IF NOT EXISTS Mensajes (
  idMensaje INT AUTO_INCREMENT PRIMARY KEY,
  idProfesor INT NOT NULL,
  idAlumno INT NOT NULL,
  Asunto VARCHAR(255),
  Contenido TEXT NOT NULL,
  FechaEnvio DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (idProfesor) REFERENCES Usuarios(idUsuario),
  FOREIGN KEY (idAlumno) REFERENCES Usuarios(idUsuario)
)