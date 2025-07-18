-- Cursos
INSERT INTO Cursos (Asignatura, Descripcion, Categoria, Activo, FechaCreacion) VALUES
('Economía', 'Curso introductorio de economía general', 'Ciencias Sociales', TRUE, CURRENT_DATE),
('Física', 'Conceptos fundamentales de la física clásica y moderna', 'Ciencias Naturales', TRUE, CURRENT_DATE),
('Historia', 'Estudio de los principales eventos históricos', 'Ciencias Sociales', TRUE, CURRENT_DATE),
('Literatura', 'Análisis de obras literarias universales', 'Humanidades', TRUE, CURRENT_DATE),
('Matemática', 'Fundamentos de álgebra, cálculo y geometría', 'Ciencias Exactas', TRUE, CURRENT_DATE),
('Química', 'Introducción a la química inorgánica y orgánica', 'Ciencias Naturales', TRUE, CURRENT_DATE);

-- Contneidos para los cursos
-- Matemática
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Álgebra básica', 'PDF', 'https://ejemplo.com/algebra.pdf', 'Introducción a álgebra', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Matemática')),
('Ecuaciones lineales', 'Video', 'https://ejemplo.com/ecuaciones', 'Video explicativo sobre ecuaciones lineales', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Matemática')),
('Funciones y gráficas', 'PDF', 'https://ejemplo.com/funciones.pdf', 'Material para funciones', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Matemática')),
('Geometría', 'Video', 'https://ejemplo.com/geometria', 'Explicación visual de figuras', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Matemática')),
('Ejercicios de repaso', 'PDF', 'https://ejemplo.com/repaso.pdf', 'Material de práctica', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Matemática'));

-- Historia
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Civilización Egipcia', 'PDF', 'https://ejemplo.com/egipto.pdf', 'Resumen de la cultura egipcia', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Historia')),
('Imperio Romano', 'Video', 'https://ejemplo.com/roma', 'Historia del imperio romano', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Historia')),
('Edad Media', 'PDF', 'https://ejemplo.com/edadmedia.pdf', 'Material de la Edad Media', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Historia')),
('Guerras Mundiales', 'PDF', 'https://ejemplo.com/guerras.pdf', 'Primera y Segunda Guerra Mundial', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Historia')),
('Historia del Perú', 'Video', 'https://ejemplo.com/peru', 'Repaso de la historia peruana', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Historia'));

-- Química
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Tabla Periódica', 'PDF', 'https://ejemplo.com/tabla.pdf', 'Guía de la tabla periódica', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Química')),
('Enlaces Químicos', 'Video', 'https://ejemplo.com/enlaces', 'Tipos de enlaces químicos', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Química')),
('Reacciones químicas', 'PDF', 'https://ejemplo.com/reacciones.pdf', 'Ejemplos de reacciones', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Química')),
('Ácidos y bases', 'PDF', 'https://ejemplo.com/acidos.pdf', 'Material introductorio', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Química')),
('Química orgánica', 'Video', 'https://ejemplo.com/organica', 'Principios básicos de química orgánica', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Química'));

-- Física
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Leyes de Newton', 'Video', 'https://ejemplo.com/newton', 'Explicación dinámica de las leyes', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Física')),
('Cinemática', 'PDF', 'https://ejemplo.com/cinematica.pdf', 'Formulas y ejemplos', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Física')),
('Dinámica', 'PDF', 'https://ejemplo.com/dinamica.pdf', 'Fuerzas y movimiento', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Física')),
('Trabajo y energía', 'Video', 'https://ejemplo.com/energia', 'Conceptos básicos', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Física')),
('Electromagnetismo', 'PDF', 'https://ejemplo.com/electromagnetismo.pdf', 'Campos eléctricos y magnéticos', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Física'));

-- Literatura
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Literatura griega', 'PDF', 'https://ejemplo.com/griega.pdf', 'Resumen de autores clásicos', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Literatura')),
('Romanticismo', 'Video', 'https://ejemplo.com/romanticismo', 'Corriente literaria del siglo XIX', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Literatura')),
('Realismo y naturalismo', 'PDF', 'https://ejemplo.com/realismo.pdf', 'Comparación de estilos', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Literatura')),
('Autores peruanos', 'PDF', 'https://ejemplo.com/peruanos.pdf', 'Breve historia literaria del Perú', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Literatura')),
('Teatro clásico', 'Video', 'https://ejemplo.com/teatro', 'Introducción al teatro de Shakespeare', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Literatura'));

-- Economía
INSERT INTO Contenidos (Titulo, Tipo, Url, Descripcion, Conexion, FechaSubida, idCurso)
VALUES
('Microeconomía básica', 'PDF', 'https://ejemplo.com/micro.pdf', 'Oferta, demanda y mercado', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Economía')),
('Macroeconomía', 'Video', 'https://ejemplo.com/macro', 'Indicadores y políticas económicas', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Economía')),
('Inflación y desempleo', 'PDF', 'https://ejemplo.com/inflacion.pdf', 'Conceptos y causas', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Economía')),
('Economía peruana', 'PDF', 'https://ejemplo.com/peru_economia.pdf', 'Análisis local', TRUE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Economía')),
('Finanzas personales', 'Video', 'https://ejemplo.com/finanzas', 'Ahorro, crédito e inversión', FALSE, CURDATE(), (SELECT idCurso FROM Cursos WHERE Asignatura = 'Economía'));


-- Evaluaciones (Preguntas para mostrar en el programa)
INSERT INTO Evaluaciones (Titulo, FechaPublicacion, idCurso)
VALUES 
('Evaluación de Economía', CURRENT_DATE, 1),
('Evaluación de Física', CURRENT_DATE, 2),
('Evaluación de Historia', CURRENT_DATE, 3),
('Evaluación de Literatura', CURRENT_DATE, 4),
('Evaluación de Matemática', CURRENT_DATE, 5),
('Evaluación de Química', CURRENT_DATE, 6);

-- Preguntas para Economía
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿Qué es la economía?', 'El estudio del clima', 'El estudio del comportamiento humano', 'El estudio de la escasez y la elección', 'El estudio de la literatura', 'C', 1),
('¿Qué es el PIB?', 'Producto Interno Bruto', 'Producto Industrial Básico', 'Promedio Industrial Bruto', 'Punto de Interés Bancario', 'A', 1),
('¿Cuál es una característica de un mercado perfecto?', 'Existencia de monopolios', 'Precios establecidos por el gobierno', 'Libre entrada y salida de empresas', 'Precios arbitrarios', 'C', 1),
('¿Qué estudia la microeconomía?', 'La economía de países', 'El comercio internacional', 'La conducta de agentes individuales', 'La inflación', 'C', 1),
('¿Qué es la inflación?', 'Reducción de impuestos', 'Aumento general de precios', 'Estancamiento económico', 'Recesión del mercado', 'B', 1);

-- Preguntas para Física
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿Qué estudia la física?', 'El comportamiento social', 'La materia y la energía', 'La política global', 'El arte moderno', 'B', 2),
('¿Cuál es la fórmula de la velocidad?', 'Velocidad = Tiempo / Distancia', 'Velocidad = Aceleración * Tiempo', 'Velocidad = Distancia / Tiempo', 'Velocidad = Masa * Aceleración', 'C', 2),
('¿Quién formuló la ley de la gravitación universal?', 'Einstein', 'Tesla', 'Newton', 'Galileo', 'C', 2),
('¿Qué unidad se usa para la fuerza?', 'Metro', 'Segundo', 'Newton', 'Pascal', 'C', 2),
('¿Qué representa la energía cinética?', 'Energía de posición', 'Energía térmica', 'Energía en movimiento', 'Energía nuclear', 'C', 2);

-- Preguntas para Historia
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿En qué año ocurrió la Revolución Francesa?', '1789', '1812', '1492', '1914', 'A', 3),
('¿Quién descubrió América?', 'Simón Bolívar', 'Cristóbal Colón', 'George Washington', 'Marco Polo', 'B', 3),
('¿Qué fue la Guerra Fría?', 'Un conflicto armado', 'Una guerra comercial', 'Una tensión política sin enfrentamiento directo', 'Una invasión militar', 'C', 3),
('¿Cuál fue el imperio que construyó el Coliseo?', 'Egipcio', 'Griego', 'Romano', 'Inca', 'C', 3),
('¿Qué civilización inventó la escritura cuneiforme?', 'Egipcia', 'Romana', 'Mesopotámica', 'Griega', 'C', 3);

-- Preguntas para Literatura
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿Quién escribió "Don Quijote de la Mancha"?', 'Miguel de Cervantes', 'Gabriel García Márquez', 'Pablo Neruda', 'William Shakespeare', 'A', 4),
('¿Cuál es el género literario de "La Odisea"?', 'Ensayo', 'Poesía épica', 'Drama', 'Cuento', 'B', 4),
('¿Qué representa el simbolismo en la literatura?', 'La crítica social directa', 'El uso de imágenes para expresar ideas abstractas', 'La sátira política', 'El humor absurdo', 'B', 4),
('¿Qué obra escribió Gabriel García Márquez?', 'Rayuela', 'La ciudad y los perros', 'Cien años de soledad', 'El túnel', 'C', 4),
('¿Qué autor escribió "Romeo y Julieta"?', 'Dante Alighieri', 'William Shakespeare', 'Goethe', 'Molière', 'B', 4);

-- Preguntas para Matemática
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿Cuál es el resultado de 3^2?', '6', '9', '12', '3', 'B', 5),
('¿Qué es una parábola?', 'Una recta inclinada', 'Una función lineal', 'Una curva simétrica', 'Un círculo', 'C', 5),
('¿Cuál es la derivada de x^2?', 'x', '2x', 'x^2', '2', 'B', 5),
('¿Qué es el mínimo común múltiplo?', 'El número más pequeño que es múltiplo común de varios números', 'El número menor entre varios números', 'La resta de números primos', 'Una operación geométrica', 'A', 5),
('¿Qué representa el número pi?', 'La constante de gravedad', 'La relación entre radio y diámetro', 'La razón entre la circunferencia y el diámetro', 'La raíz cuadrada de 2', 'C', 5);

-- Preguntas para Química
INSERT INTO Preguntas (Texto, OpcionA, OpcionB, OpcionC, OpcionD, RespuestaCorrecta, idEvaluacion) VALUES
('¿Qué es un átomo?', 'La parte más pequeña de un compuesto', 'Una partícula subatómica', 'La unidad básica de la materia', 'Una célula', 'C', 6),
('¿Cuál es el símbolo del sodio?', 'Na', 'So', 'Sn', 'S', 'A', 6),
('¿Qué tipo de enlace une átomos en una molécula de agua?', 'Iónico', 'Metálico', 'Covalente', 'Débil', 'C', 6),
('¿Qué es el pH?', 'Una unidad de temperatura', 'Una medida de acidez o alcalinidad', 'Un tipo de solución', 'Una propiedad de metales', 'B', 6),
('¿Qué estudia la química orgánica?', 'Los metales', 'Los compuestos del carbono', 'Las sales', 'Los ácidos fuertes', 'B', 6);