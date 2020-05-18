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


public class CadastroClienteServlet extends HttpServlet {
//Basicamente você utiliza o método doGet sempre que a requisição que você faz 
    //não altere o estado do servidor, como uma consulta, uma busca e etc.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Empty
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String tipoPessoa = request.getParameter("tipoPessoa");
        String celular = request.getParameter("celular");
        String nascimento = request.getParameter("nascimento");
        String id = request.getParameter("id");
        
        Cliente cliente = new Cliente(nome,email,cpf,tipoPessoa,celular,nascimento, id);
        boolean ok = ClienteDAO.cadastrarCliente(cliente);
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
