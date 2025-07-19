Buen día profesor la carpeta que contiene el programa trabajado es Avance2_TF, el proyecto final fue avanzado desde la segunda presentación del proyecto, por ello tiene ese nombre.

Todos los archivos se encuentran en este repositorio de github junto con el script de la base de datos y los elementos que habia en esta.

En el documento de word se encuentran lo que se debe hacer para poder trabajar con el programa

Elarchivo .rar "Proyecto Final Curso Integrador I" contiene tambien el proyecto en caso de cualquier fallo en la carpeta enviada, el comprimido "Archivo de Reportes Jaspersoft.rar" contiene los archivos que se utilizan para la creación de los reportes.

En el panel CRUDUsuarios hay un codigo que debe ser modificado para poder generar los reportes, se debe colocar la ruta donde se encuentran los archivos
Ejemplo

Connection conn = null;
        try {
            ConexionMySQL conexion = new ConexionMySQL();
            conn = conexion.conectarMySQL();
Linea 272
            String reportPath = "C:ruta del archivo\\ProyectoFinalReporte.jrxml"; <- Esto debe cambiar
Linea 274
            JasperReport jasperReport = JasperCompileManager.compileReport(reportPath);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, conn);
Linea 277
            JasperExportManager.exportReportToPdfFile(jasperPrint, "C:ruta del archivo\\ProyectoFinalReporte.pdf") <- Esto debe cambiar


Lo mismo se debe realizar para generar un reporte en las calificaciones en el caso de que se ingrese como profesor

En el panel Calificaciones del proyecto hay que cambiar las rutas igualmente para poder generar los reportes

String jrxmlPath = "C:ruta del archivo\\ReporteNotasFinalesProfesores.jrxml"; <- Esto debe cambiar
            JasperReport reporte = JasperCompileManager.compileReport(jrxmlPath);
            Connection conn = new ConexionMySQL().conectarMySQL();
            Map<String, Object> parametros = new HashMap<>();
            JasperPrint print = JasperFillManager.fillReport(reporte, parametros, conn);
            String rutaSalida = "C:ruta del archivo\\ReporteNotasFinalesProfesores.pdf"; <- Esto debe cambiar

Esos serian los cambios que se deben realizar para poder trabajar con el proyecto de forma normal. Gracias.
