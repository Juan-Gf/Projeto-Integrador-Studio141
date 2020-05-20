/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.ClienteDAO;
import br.senac.sp.entidade.Cliente;
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
public class DeletarClienteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Empty
    }

    /*@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        
        String id = request.getParameter("id");
        String cpf = request.getParameter("cpf");
        
        if(id!=null){
            String type = "id";
            excluirByIDorCPF(id, request, response, type);
        }else{
            String type = "cpf";
            excluirByIDorCPF(cpf, request, response, type);
        }
        
    }
    
    public void excluirByIDorCPF(String idCpf, HttpServletRequest request, HttpServletResponse response, String type) throws IOException, ServletException{
        Cliente cliente = new Cliente(idCpf);
        boolean ok = ClienteDAO.excluirCliente(cliente, type);
        PrintWriter out = response.getWriter();

        String url = "";
        if (ok) {
            request.setAttribute("cadastroOK", true);
            url = "/sucesso.jsp";
        } else {
            url = "/erro.jsp";
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }*/
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");

        boolean ok = ClienteDAO.excluirCliente(Integer.parseInt(id));
        PrintWriter out = response.getWriter();

        String url = "";
        if (ok) {
            request.setAttribute("cadastroOK", true);
            url = "/sucesso.jsp";
        } else {
            url = "/erro.jsp";
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request,response);
       

    }

}
