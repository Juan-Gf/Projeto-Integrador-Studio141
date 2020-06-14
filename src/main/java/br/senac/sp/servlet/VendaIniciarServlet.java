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
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DiogoSouza
 */
public class VendaIniciarServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Empty
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idCli = request.getParameter("idCli");
        String idFunc = request.getParameter("idFunc");
        String data = request.getParameter("data");
        String filial = request.getParameter("filial");
        String pagamento = request.getParameter("pagamento");
        String idProd = request.getParameter("idProd");
        String quantidade = request.getParameter("quantiade");
        


        Pedido pedido = new Pedido(idCli, idFunc, 0, data, filial, pagamento, idProd, quantidade);
        boolean ok = PedidoDAO.cadastrarPedido(pedido);
        PrintWriter out = response.getWriter();

        String url = "";
        if (ok) {
            request.setAttribute("cadastroOK", true);
            url = "/protegido/sucesso.jsp";
        } else {
            url = "/protegido/erro.jsp";
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request,response);


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
