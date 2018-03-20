package main;

import com.qizx.api.QizxException;
import dbxml.CrearBDxml;
import dbxml.QueryBDxml;
import java.io.IOException;

/**
 *
 * @author Admin
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws QizxException, IOException {
        new CrearBDxml();
        System.out.println("===================================================");
        System.out.println("===================================================");
        System.out.println("===================================================");
        new QueryBDxml();
    }

}
