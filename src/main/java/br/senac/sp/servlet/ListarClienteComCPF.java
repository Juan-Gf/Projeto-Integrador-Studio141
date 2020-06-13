/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.ClienteDAO;
import br.senac.sp.dao.PedidoDAO;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Pedido;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DiogoSouza
 */
public class ListarClienteComCPF extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String cpf = request.getParameter("cpf");
        List<Pedido> pedidos = PedidoDAO.buscaPorCPF(cpf);
        request.setAttribute("pedidos", pedidos);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listarPedidos.jsp");
        dispatcher.forward(request, response);

       processRequest(request, response);

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

        String cpf = request.getParameter("cpf");
        List<Pedido> pedidos = PedidoDAO.buscaPorCPF(cpf);
        request.setAttribute("pedidos", pedidos);
        

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listarPedidos.jsp");
        dispatcher.forward(request, response);

        //processRequest(request, response);
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

        String cpf = request.getParameter("cpf");
        List<Pedido> pedidos = PedidoDAO.buscaPorCPF(cpf);
        request.setAttribute("pedidos", pedidos);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/listarPedidos.jsp");
        dispatcher.forward(request, response);

        //processRequest(request, response);
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
