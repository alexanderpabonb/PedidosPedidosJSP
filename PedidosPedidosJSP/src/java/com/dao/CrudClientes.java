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

    public boolean addClientes(Cliente addCliente) {
        boolean respuesta = false;
        try {
            PreparedStatement insertarSql = conection.prepareStatement("insert into CLIENTES (DOCUMCLIENTE, TIPODOCUMCLIENTE,"
                    + "NOMBRESCLIENTE, APELLIDOSCLIENTE, FECHANACLIENTE, GENEROCLIENTE, TELCLIENTE, CELCLIENTE, DIRECCIONCLIENTE,"
                    + "CORREOCLIENTE)" + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

            insertarSql.setInt(1, addCliente.getDocumCliente());
            insertarSql.setString(2, addCliente.getTipoDocumCliente());
            insertarSql.setString(3, addCliente.getNombresCliente());
            insertarSql.setString(4, addCliente.getApellidosCliente());
            insertarSql.setDate(5, new Date(addCliente.getFechaNacCliente().getTime()));
            insertarSql.setString(6, addCliente.getGeneroCliente());
            insertarSql.setInt(7, addCliente.getTelCliente());
            insertarSql.setInt(8, addCliente.getCelCliente());
            insertarSql.setString(9, addCliente.getDireccionCliente());
            insertarSql.setString(10, addCliente.getCorreoCliente());
            insertarSql.executeUpdate();
            respuesta = true;
            System.out.println("El cliente fue guardado");
        } catch (SQLException e) {
            e.printStackTrace();
            respuesta = false;
            System.out.println("El cliente no fue guardado");
        }
        return respuesta;
    }

    public boolean updateClientes(Cliente updateCliente) {
        boolean respuesta = false;
        try {
            PreparedStatement modificarSQL = conection.prepareStatement("update CLIENTES set DOCUMCLIENTE=?, "
                    + "NOMBRESCLIENTE=?, APELLIDOSCLIENTE=?, FECHANACLIENTE=?, GENEROCLIENTE=?, TELCLIENTE=?, CELCLIENTE=?, "
                    + "DIRECCIONCLIENTE=?, CORREOCLIENTE=?" + " WHERE DOCUMCLIENTE = ?");

            modificarSQL.setInt(1, updateCliente.getDocumCliente());
            modificarSQL.setString(2, updateCliente.getTipoDocumCliente());
            modificarSQL.setString(3, updateCliente.getNombresCliente());
            modificarSQL.setString(4, updateCliente.getApellidosCliente());
            modificarSQL.setDate(5, (Date) updateCliente.getFechaNacCliente());
            modificarSQL.setString(6, updateCliente.getGeneroCliente());
            modificarSQL.setInt(7, updateCliente.getTelCliente());
            modificarSQL.setInt(8, updateCliente.getCelCliente());
            modificarSQL.setString(9, updateCliente.getDireccionCliente());
            modificarSQL.setString(10, updateCliente.getCorreoCliente());
            modificarSQL.executeUpdate();
            respuesta = true;
            System.out.println("El cliente fue modificado");
        } catch (SQLException e) {
            e.printStackTrace();
            respuesta = false;
            System.out.println("El cliente no fue modificado");
        }
        return respuesta;
    }

    public boolean deleteRegistro(int documCliente) {
        boolean respuesta = false;
        try {
            PreparedStatement eliminarCliente = conection.prepareStatement("delete from CLIENTES WHERE DOCUMCLIENTE = ?");
            eliminarCliente.setInt(1, documCliente);
            eliminarCliente.executeUpdate();
            respuesta = true;
            System.out.println("El cliente fue eliminado");
        } catch (SQLException e) {
            e.printStackTrace();
            respuesta = false;
            System.out.println("El cliente no fue eliminado");
        }
        return respuesta;
    }

    public Cliente consultarClientes(int documCliente) {
        Cliente cliente = null;
        try {
            PreparedStatement consultaSql = conection.
                    prepareStatement("select * from CLIENTES where DOCUMCLIENTE = ?");
            consultaSql.setInt(1, documCliente);
            ResultSet respuesta = consultaSql.executeQuery();
            if (respuesta.next()) {
                cliente = new Cliente();
                cliente.setTipoDocumCliente(respuesta.getString("TIPODOCUMCLIENTE"));
                cliente.setDocumCliente(respuesta.getInt("DOCUMCLIENTE"));
                cliente.setNombresCliente(respuesta.getString("NOMBRESCLIENTE"));
                cliente.setApellidosCliente(respuesta.getString("APELLIDOSCLIENTE"));
                cliente.setFechaNacCliente(respuesta.getDate("FECHANACLIENTE"));
                cliente.setGeneroCliente(respuesta.getString("GENEROCLIENTE"));
                cliente.setTelCliente(respuesta.getInt("TELCLIENTE"));
                cliente.setCelCliente(respuesta.getInt("CELCLIENTE"));
                cliente.setDireccionCliente(respuesta.getString("DIRECCIONCLIENTE"));
                cliente.setCorreoCliente(respuesta.getString("CORREOCLIENTE"));
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
        String consulta = "SELECT id FROM CLIENTES WHERE DOCUMCLIENTE = " + id;
        try {
            Statement consultaEstudiante = connection.createStatement();
            ResultSet respuesta = consultaEstudiante.executeQuery(consulta);
            if (respuesta.next()) {
                if (respuesta.getInt("DOCUMCLIENTE") == id) {
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
                cliente.setDocumCliente(respuesta.getInt("DOCUMCLIENTE"));
                cliente.setTipoDocumCliente(respuesta.getString("TIPODOCUMCLIENTE"));
                cliente.setNombresCliente(respuesta.getString("NOMBRESCLIENTE"));
                cliente.setApellidosCliente(respuesta.getString("APELLIDOSCLIENTE"));
                cliente.setFechaNacCliente(respuesta.getDate("FECHANACLIENTE"));
                cliente.setGeneroCliente(respuesta.getString("GENEROCLIENTE"));
                cliente.setTelCliente(respuesta.getInt("TELCLIENTE"));
                cliente.setCelCliente(respuesta.getInt("CELCLIENTE"));
                cliente.setDireccionCliente(respuesta.getString("DIRECCIONCLIENTE"));
                cliente.setCorreoCliente(respuesta.getString("CORREOCLIENTE"));
                listaCliente.add(cliente);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaCliente;
    }

}
