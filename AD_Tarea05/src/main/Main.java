package main;

import com.qizx.api.QizxException;
import dbxml.CrearBDxml;
import dbxml.QueryBDxml;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args){
        System.out.println("===================================================");
        System.out.println("===================================================");
        System.out.println("===================================================");
        try {
            new CrearBDxml();
        } catch (QizxException ex) {
            System.out.println("Creación de Bases de Datos. Error de Qizx: " + ex.getMessage());
        } catch (IOException ex) {
            System.out.println("Creación de Bases de Datos. Error de Entrada/Salida: " + ex.getMessage());
        }
        System.out.println("===================================================");
        System.out.println("===================================================");
        System.out.println("===================================================");
        try {
            new QueryBDxml();
        } catch (IOException ex) {
            System.out.println("Ejecución de Querys. Error de Entrada/Salida: " + ex.getMessage());
        } catch (QizxException ex) {
            System.out.println("Ejecución de Querys. Error de Qizx: " + ex.getMessage());
        }
        System.out.println("===================================================");
        System.out.println("===================================================");
        System.out.println("===================================================");
    }

}
