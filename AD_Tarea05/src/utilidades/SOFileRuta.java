/*
 * Versión 1.2.1
 */
package utilidades;

import java.io.File;

/**
 * Esta clase aporta la utilidad de formatear las rutas a los archivos
 * en función del Sistema Operativo en el que la aplicación sea ejecutada.
 * 
 * @author José Francisco Sánchez Portillo
 */
public class SOFileRuta {
	
	public static final java.io.File ARC = new java.io.File(System.getProperty("java.class.path"));
	
	
      /**
     * Método estático que devuelve la ruta formateada si el Sistema Operativo
     * es Windows, y si no lo es devuelve la ruta tal cual.
     * @param ruta Ruta al archivo exterior al proyecto.
     * @return la Ruta formateada en caso de que la ejecución se realice desde
     * Windows
     */
    public static String formatoSO(String ruta){
        String separador;
        
        try {
            if(File.separator.equals("\\")){ // Si es cierto es Windows:
                separador = "\\"; 
                return ruta.replace("/", separador);
            } else { // Y si es falso, es cualquier otro:
                return ruta;
            }
        } catch (Exception e) {
            System.err.println("Error de conversión de ruta. Descripción: " + e.getMessage());
            return ruta;
        }
    }

    /**
     * Para archivos externos al proyecto, sirve para crear la ruta relativa desde la ubicación del JAR,
     * y generar los archivos en la ubicación del ejecutable. Sólo sirve para el ejecutable (dist/.jar),
     * para usar en NetBeans utilizar el método SOFileRuta.rutaRelativaNetBeans (String ruta).
     * Probado en Windows y en Linux
     * @param ruta - Ruta donde queramos al archivo exterior al proyecto.
     * @return - Genera la ruta relativa desde el ejecutable del proyecto 
     */
    public static String rutaRelativJAR(String ruta) {
            return SOFileRuta.ARC.getAbsolutePath().replace(ARC.getName(), SOFileRuta.formatoSO(ruta));
    }

    /**
     * Para archivos externos al proyecto, sirve para crear la ruta relativa desde el proyecto NetBeans,
     * y generar los archivos desde la ubicación del proyecto. Sólo sirve para NetBeans,
     * para usar en el ejecutable (dist/.jar) utilizar el método SOFileRuta.rutaRelativaJAR (String ruta).
     * Probado en Windows y en Linux
     * @param ruta
     * @return 
     */
    public static String rutaRelativNetBeans(String ruta) {
            return System.getProperty("user.dir") + SOFileRuta.formatoSO(ruta);
    }
}
