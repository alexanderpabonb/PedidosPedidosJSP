package com.dao;

import com.modelo.Cliente;
import com.util.DBUtil;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author Alex Pabón
 */
public class CrudClientes {
    
    private Connection conection;

    public CrudClientes() {
        conection = DBUtil.getConection();
    }

    public void addClientes(Cliente addCliente) {
        
        try {
            PreparedStatement insertarSql = conection.prepareStatement("insert into CLIENTES (documCliente, nombresCliente, "
                    + "apellidosCliente, fechaNacCliente, generoCliente, telCliente, celCliente, direccionCliente, correoCliente)"
                    + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");

            insertarSql.setInt(1, addCliente.getDocumCliente());
            insertarSql.setString(2, addCliente.getNombresCliente());
            insertarSql.setString(3, addCliente.getApellidosCliente());
            insertarSql.setDate(4, new Date(addCliente.getFechaNacCliente().getTime()));
            insertarSql.setString(5, addCliente.getGeneroCliente());
            insertarSql.setInt(6, addCliente.getTelCliente());
            insertarSql.setInt(7, addCliente.getCelCliente());
            insertarSql.setString(8, addCliente.getDireccionCliente());
            insertarSql.setString(9, addCliente.getCorreoCliente());
            insertarSql.executeUpdate();
            System.out.println("El cliente fue guardado");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("El cliente no fue guardado");
        }
    }

    public void updateClientes(Cliente updateCliente) {
        
        try {
            PreparedStatement modificarSQL = conection.prepareStatement("update CLIENTES set documCliente=?, nombresCliente=?, apellidosCliente=?, "
                            + "fechaNacCliente=?, generoCliente=?, telCliente=?, celCliente=?, direccionCliente=?, correoCliente=?"
                            + " WHERE documCliente = ?");

            modificarSQL.setInt(1, updateCliente.getDocumCliente());
            modificarSQL.setString(2, updateCliente.getNombresCliente());
            modificarSQL.setString(3, updateCliente.getApellidosCliente());
            modificarSQL.setDate(4, (Date) updateCliente.getFechaNacCliente());
            modificarSQL.setString(5, updateCliente.getGeneroCliente());
            modificarSQL.setInt(6, updateCliente.getTelCliente());
            modificarSQL.setInt(7, updateCliente.getCelCliente());
            modificarSQL.setString(8, updateCliente.getDireccionCliente());
            modificarSQL.setString(9, updateCliente.getCorreoCliente());
            modificarSQL.executeUpdate();
            System.out.println("El cliente fue modificado");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("El cliente no fue modificado");
        }
    }

    public void deleteRegistro(int documCliente) {
        
        try {
            PreparedStatement eliminarCliente = conection.prepareStatement("delete from CLIENTES WHERE documCliente = ?");
            eliminarCliente.setInt(1, documCliente);
            eliminarCliente.executeUpdate();
            System.out.println("El cliente fue eliminado");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("El cliente no fue eliminado");
        }
    }

    public Cliente consultarClientes(int documCliente) {
        Cliente cliente = null;
        try {
            PreparedStatement consultaSql = conection.
                    prepareStatement("select * from CLIENTES where documentoCliente = ?");
            consultaSql.setInt(1, documCliente);
            ResultSet respuesta = consultaSql.executeQuery();
            if (respuesta.next()) {
                cliente = new Cliente();
                cliente.setDocumCliente(respuesta.getInt("documCliente"));
                cliente.setNombresCliente(respuesta.getString("nombresCliente"));
                cliente.setApellidosCliente(respuesta.getString("apellidosCliente"));
                cliente.setFechaNacCliente(respuesta.getDate("fechaNacCliente"));
                cliente.setGeneroCliente(respuesta.getString("generoCliente"));
                cliente.setTelCliente(respuesta.getInt("telCliente"));
                cliente.setCelCliente(respuesta.getInt("celCliente"));
                cliente.setDireccionCliente(respuesta.getString("direccionCliente"));
                cliente.setCorreoCliente(respuesta.getString("correoCliente"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return cliente;
    }

    public boolean consultarDocumento(int id) {
        boolean res = false;
        DBUtil conexion = new DBUtil();
        Connection connection = conexion.getConection();
        String consulta = "SELECT id FROM CLIENTES WHERE documCliente = " + id;
        try {
            Statement consultaEstudiante = connection.createStatement();
            ResultSet respuesta = consultaEstudiante.executeQuery(consulta);
            if (respuesta.next()) {
                if (respuesta.getInt("documCliente") == id) {
                    res = true;
                }

            }
            conexion.cerrarConexion(connection);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null,
                    "No se pudo realizar la conexion a la Base de Datos \n"
                    + ex);
        }
        return res;
    }

    public List<Cliente> cargarClientes() {
        List<Cliente> listaCliente = new ArrayList<Cliente>();
        try {
            Statement statement = conection.createStatement();
            ResultSet respuesta = statement.executeQuery("select * from CLIENTES");
            while (respuesta.next()) {
                Cliente cliente = new Cliente();
                cliente.setDocumCliente(respuesta.getInt("documCliente"));
                cliente.setNombresCliente(respuesta.getString("nombresCliente"));
                cliente.setApellidosCliente(respuesta.getString("apellidosCliente"));
                cliente.setFechaNacCliente(respuesta.getDate("fechaNacCliente"));
                cliente.setGeneroCliente(respuesta.getString("generoCliente"));
                cliente.setTelCliente(respuesta.getInt("telCliente"));
                cliente.setCelCliente(respuesta.getInt("celCliente"));
                cliente.setDireccionCliente(respuesta.getString("direccionCliente"));
                cliente.setCorreoCliente(respuesta.getString("correoCliente"));
                listaCliente.add(cliente);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaCliente;
    }

}
