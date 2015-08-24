package com.util;

import com.controlador.clienteController;
import com.dao.CrudClientes;
import com.modelo.Cliente;
import java.sql.Connection;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Alex Pabón
 */
public class Test {

	public static void main(String[] agrs) {

            Connection connection = DBUtil.getConection();
		CrudClientes crudCliente = new CrudClientes();
		Cliente cliente = new Cliente();
		cliente.setDocumCliente(7);
		cliente.setNombresCliente("Alex");
		cliente.setApellidosCliente("Pabon");
		cliente.setFechaNacCliente(new Date());
		cliente.setGeneroCliente("Masculino");
		cliente.setTelCliente(2692870);
                cliente.setCelCliente(3040);
                cliente.setDireccionCliente("calle 42A # 24-164");
                cliente.setCorreoCliente("alexpabonbedoya@gmail.com");
                crudCliente.addClientes(cliente);
                
                crudCliente.deleteRegistro(1);
                
		Cliente clien = null;
                clien = crudCliente.consultarClientes(1);
                if (clien != null){
                    System.out.println("El Cliente " + clien.getNombresCliente()+ " " + clien.getApellidosCliente());
                }else{
                    System.out.println("El cliente no existe");
                }

                List<Cliente> listaCliente;
                listaCliente = crudCliente.cargarClientes();
                for (Cliente client : listaCliente) {
                    System.out.println("El cliente " + client.getNombresCliente()+ " " + client.getApellidosCliente()+ "\n" );
                }
	}
}
