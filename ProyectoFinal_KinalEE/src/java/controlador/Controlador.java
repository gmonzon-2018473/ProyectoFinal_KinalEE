/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.Venta;

public class Controlador extends HttpServlet {
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDao = new ClienteDAO();
    Producto producto = new Producto();
    ProductoDAO productoDao = new ProductoDAO();
    Venta venta = new Venta();
    List<Venta> lista = new ArrayList<>();
    int item = 0;
    int codPro, canti;
    String descripcion;
    Double precio, subTotal;
    Double totalPagar;
    int codEmpleado;
    int codCliente;
    int codProducto;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if(menu.equals("Principal")){
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        }else if (menu.equals("Empleado")){
            switch(accion){
                case "Listar":
                    List listaEmpleados = empleadoDao.listar();
                    request.setAttribute("empleados", listaEmpleados);
                    break;
                case "Agregar":
                    String DPI = request.getParameter("txtDPIEmpleado");
                    String nombres = request.getParameter("txtNombresEmpleado");
                    String telefono = request.getParameter("txtTelefonoEmpleado");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUsuario");
                    empleado.setDPIEmpleado(DPI);
                    empleado.setNombresEmpleado(nombres);
                    empleado.setTelefonoEmpleado(telefono);
                    empleado.setEstado(est);
                    empleado.setUsuario(user);
                    empleadoDao.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                
                case "Editar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    Empleado e = empleadoDao.listarCodigoEmpleado(codEmpleado);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String DPIEmp = request.getParameter("txtDPIEmpleado");
                    String nombresEmp = request.getParameter("txtNombresEmpleado");
                    String telefonoEmp = request.getParameter("txtTelefonoEmpleado");
                    String estadoEmp = request.getParameter("txtEstado");
                    String userEmp = request.getParameter("txtUsuario");
                    empleado.setDPIEmpleado(DPIEmp);
                    empleado.setNombresEmpleado(nombresEmp);
                    empleado.setTelefonoEmpleado(telefonoEmp);
                    empleado.setEstado(estadoEmp);
                    empleado.setUsuario(userEmp);
                    empleado.setCodigoEmpleado(codEmpleado);
                    empleadoDao.actualizar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                    
                case "Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    empleadoDao.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
            
            }
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
            
        }else if(menu.equals("Producto")){
                switch(accion){
                    case "Listar":
                        List listaProducto = productoDao.listar();
                        request.setAttribute("productos", listaProducto);
                        break;
                
                    case "Agregar":
                        String nombreProducto = request.getParameter("txtNombreProducto");
                        Double precio = Double.parseDouble(request.getParameter("txtPrecio"));
                        int stock = Integer.parseInt(request.getParameter("txtStock"));
                        String estado = request.getParameter("txtEstado");
                        producto.setNombreProducto(nombreProducto);
                        producto.setPrecio(precio);
                        producto.setStock(stock);
                        producto.setEstado(estado);
                        productoDao.agregar(producto);
                        request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                        break;
                        
                    case "Editar":
                        codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                        Producto p = productoDao.listarCodigoProducto(codProducto);
                        request.setAttribute("producto", p);
                        request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                        break;
                        
                    case "Actualizar":
                        String nombreProd = request.getParameter("txtNombreProducto");
                        Double prec = Double.parseDouble(request.getParameter("txtPrecio"));
                        int stk = Integer.parseInt(request.getParameter("txtStock"));
                        String est = request.getParameter("txtEstado");
                        producto.setNombreProducto(nombreProd);
                        producto.setPrecio(prec);
                        producto.setStock(stk);
                        producto.setEstado(est);
                        producto.setCodigoProducto(codProducto);
                        productoDao.actualizar(producto);
                        request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                        break;
                        
                    case "Eliminar":
                        codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                        productoDao.eliminar(codProducto);
                        request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                        break;
                
                }
             request.getRequestDispatcher("Producto.jsp").forward(request, response);
            
        }else if(menu.equals("Clientes")){
            switch(accion){
                case "Listar":
                List listaClientes = clienteDao.listar();
                request.setAttribute("clientes", listaClientes);
                break;
                
                case "Agregar":
                    String DPICliente = request.getParameter("txtDPICliente");
                    String nombresCliente = request.getParameter("txtNombresCliente");
                    String direccionCliente = request.getParameter("txtDireccionCliente");
                    String estadoCliente = request.getParameter("txtEstado");
                    cliente.setDPICliente(DPICliente);
                    cliente.setNombresCliente(nombresCliente);
                    cliente.setDireccionCliente(direccionCliente);
                    cliente.setEstado(estadoCliente);
                    clienteDao.agregar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                    
                case "Editar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    Cliente c = clienteDao.listarCodigoCliente(codCliente);
                    request.setAttribute("cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                    
                case "Actualizar":
                    String DPICl = request.getParameter("txtDPICliente");
                    String nombresCl = request.getParameter("txtNombresCliente");
                    String direccionCl = request.getParameter("txtDireccionCliente");
                    String estadoCl = request.getParameter("txtEstado");
                    cliente.setDPICliente(DPICl);
                    cliente.setNombresCliente(nombresCl);
                    cliente.setDireccionCliente(direccionCl);
                    cliente.setEstado(estadoCl);
                    cliente.setCodigoCliente(codCliente);
                    clienteDao.actualizar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
                    
                case "Eliminar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    clienteDao.eliminar(codCliente);
                    request.getRequestDispatcher("Controlador?menu=Clientes&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Cliente.jsp").forward(request, response);
        }else if(menu.equals("RegistrarVenta")){
            switch (accion) {
                case "BuscarCliente":
                    String dpi = request.getParameter("txtCodigoCliente");
                    cliente.setDPICliente(dpi);
                    cliente = clienteDao.buscar(dpi);
                    request.setAttribute("cliente", cliente);
                    break;

                case "BuscarProducto":
                    codProducto = Integer.parseInt(request.getParameter("txtCodigoProducto"));
                    producto = productoDao.listarCodigoProducto(codProducto);
                    request.setAttribute("producto", producto);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("cliente", cliente);
                    break;
                case "Agregar":
                    request.setAttribute("cliente", cliente);
                    totalPagar = 0.0;
                    item = item + 1;
                    codPro = producto.getCodigoProducto();
                    descripcion = request.getParameter("txtNombreProducto");
                    precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    canti = Integer.parseInt(request.getParameter("txtCantidad"));
                    subTotal = precio * canti;
                    venta= new Venta();
                    venta.setItem(item);
                    venta.setCodigoProducto(codPro);
                    venta.setDescripcionProd(descripcion);
                    venta.setPrecio(precio);
                    venta.setCantidad(canti);
                    venta.setSubTotal(subTotal);
                    lista.add(venta);
                    for(int i=0; i < lista.size(); i++){
                        totalPagar = totalPagar+lista.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    break;
            }
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }else if(menu.equals("Home")){
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
