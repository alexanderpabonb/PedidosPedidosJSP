package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Alex Pabón
 */
public class DBUtil {

    private static Connection conection = null;

    public static Connection getConection() {
        if (conection != null) {
            return conection;
        } else {
            try {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                String userName = "PEDIDOSPEDIDOS";
                String password = "ppiweb";
                String url = "jdbc:oracle:thin:@localhost:1521:XE";
                conection = DriverManager.getConnection(url, userName, password);
                System.out.println("Conectado");
            } catch (Exception e) {
                System.out.println("Desconectado");
                System.out.println(e.getMessage());
            }
            return conection;
        }
    }

    public void cerrarConexion(Connection conexion) {
        try {
            conexion.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBUtil.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
}
