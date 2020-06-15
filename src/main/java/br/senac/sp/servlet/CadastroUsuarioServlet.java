/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.UsuarioSistemaDAO;
import br.senac.sp.entidade.UsuarioSistema;
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
public class CadastroUsuarioServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Empty
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        String perfil = request.getParameter("perfil");
        String isAdmin = request.getParameter("isAdmin");
        boolean isAdminBoolean;
        if(isAdmin.equals("true")){
            isAdminBoolean = true;
        }else{
            isAdminBoolean = false;
        }
        
        UsuarioSistema usuariosistema = new UsuarioSistema(nome,usuario,senha,perfil,isAdminBoolean);
        String user2=usuariosistema.encodeSenha(senha);
        UsuarioSistema usuariosistema2 = new UsuarioSistema(nome,usuario,user2,perfil,isAdminBoolean);
        boolean ok = UsuarioSistemaDAO.cadastrarUsuario(usuariosistema2);
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
