package com.controlador;

import com.dao.CrudClientes;
import com.modelo.Cliente;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Alex Pabón
 */
@WebServlet(name = "clienteController", urlPatterns = {"/clienteController"})
public class clienteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static String LIST_USER = "/listClientes.jsp";
    private CrudClientes baseClientes;

    public clienteController() {
        super();
        baseClientes = new CrudClientes();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        Cliente cliente;
        if (request.getParameter("guardar") != null) {
            cliente = new Cliente();

            cliente.setDocumCliente(Integer.parseInt(request.getParameter("documCliente")));
            
            if(request.getParameter("nombresCliente") != null && request.getParameter("nombresCliente").trim().isEmpty()){
                cliente.setNombresCliente(request.getParameter("nombresCliente"));
            }
            if(request.getParameter("apellidosCliente") != null && request.getParameter("apellidosCliente").trim().isEmpty()){
                cliente.setApellidosCliente(request.getParameter("apellidosCliente"));
            }
            if(request.getParameter("fechaNaCliente") != null && request.getParameter("fechaNaCliente").trim().isEmpty()){
                
                cliente.setFechaNacCliente(request.getParameter("fechaNaCliente"));
            }
            if(request.getParameter("generoCliente") != null && request.getParameter("generoCliente").trim().isEmpty()){
                cliente.setGeneroCliente(request.getParameter("generoCliente"));
            }
            if(request.getParameter("telCliente") != null && request.getParameter("telCliente").trim().isEmpty()){
                cliente.setTelCliente(Integer.parseInt(request.getParameter("telCliente")));
            }
            if(request.getParameter("celCliente") != null && request.getParameter("celCliente").trim().isEmpty()){
                cliente.setCelCliente(Integer.parseInt(request.getParameter("celCliente")));
            }
            if(request.getParameter("direccionCliente") != null && request.getParameter("direccionCliente").trim().isEmpty()){
                cliente.setDireccionCliente(request.getParameter("direccionCliente"));
            }
            if(request.getParameter("correoCliente") != null && request.getParameter("correoCliente").trim().isEmpty()){
                cliente.setCorreoCliente(request.getParameter("correoCliente"));
            }
                       
            if (baseClientes.addClientes(cliente)) {
                JOptionPane.showMessageDialog(null, "El registro se guardo correctamente");
                RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
                request.setAttribute("clientes",baseClientes.cargarClientes());
                view.forward(request, response);
            } else {
                JOptionPane.showMessageDialog(null, "El registro ya existe");
                RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
                request.setAttribute("clientes",baseClientes.cargarClientes());
                view.forward(request, response);
            }
        }

        if (request.getParameter("modificar") != null) {
            cliente = new Cliente();
            cliente.setDocumCliente(Integer.parseInt(request.getParameter("documCliente")));
            cliente.setNombresCliente(request.getParameter("nombresCliente"));
            cliente.setApellidosCliente(request.getParameter("apellidosCliente"));
            cliente.setFechaNacCliente(request.getParameter("fechaNaCliente"));
            cliente.setGeneroCliente(request.getParameter("generoCliente"));
            cliente.setTelCliente(Integer.parseInt(request.getParameter("telCliente")));
            cliente.setCelCliente(Integer.parseInt(request.getParameter("celCliente")));
            cliente.setDireccionCliente(request.getParameter("direccionCliente"));
            cliente.setCorreoCliente(request.getParameter("correoCliente"));
            
            if (baseClientes.updateClientes(cliente)) {
                JOptionPane.showMessageDialog(null, "El registro se modifico correctamente");
                RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
                request.setAttribute("clientes",baseClientes.cargarClientes());
                view.forward(request, response);
            } else {
                JOptionPane.showMessageDialog(null, "El registro no se ");
            }
        }

        if (request.getParameter("consultar") != null) {
            int documCliente = Integer.parseInt(request.getParameter("documCliente"));
            cliente = baseClientes.consultarClientes(documCliente);
            if (cliente != null) {
                RequestDispatcher vie = request.getRequestDispatcher("Clientes.jsp");
                request.setAttribute("cliente",baseClientes.consultarClientes(documCliente));
                vie.forward(request, response);
            } else {
                JOptionPane.showMessageDialog(null, "El clientes no existe");
                RequestDispatcher vie = request.getRequestDispatcher("Clientes.jsp");
                request.setAttribute("cliente",baseClientes.consultarClientes(documCliente));
                vie.forward(request, response);
            }
        }

        if (request.getParameter("listar") != null) {
            RequestDispatcher vi = request.getRequestDispatcher(LIST_USER);
            request.setAttribute("clientes",baseClientes.cargarClientes());
            vi.forward(request, response);
        }

        if (request.getParameter("eliminar") != null) {
            int documCliente = Integer.parseInt(request.getParameter("documCliente"));
            if (baseClientes.deleteRegistro(documCliente)) {
                JOptionPane.showMessageDialog(null,"El cliente no fue eliminado");
                RequestDispatcher vie = request.getRequestDispatcher("Clientes.jsp");
                request.setAttribute("cliente",baseClientes.consultarClientes(documCliente));
                vie.forward(request, response);
            } else {
                JOptionPane.showMessageDialog(null,"El cliente fue eliminado");
                RequestDispatcher vie = request.getRequestDispatcher("Clientes.jsp");
                request.setAttribute("cliente",baseClientes.consultarClientes(documCliente));
                vie.forward(request, response);
            }
        }
    }

}
