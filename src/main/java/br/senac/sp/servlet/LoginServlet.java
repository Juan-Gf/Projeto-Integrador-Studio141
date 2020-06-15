/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.servlet;

import br.senac.sp.dao.UsuarioSistemaDAO;
import br.senac.sp.entidade.UsuarioSistema;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DiogoSouza
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        UsuarioSistema usuarioLogado = null;

        try {
            usuarioLogado = UsuarioSistemaDAO.getUsuarioSistemaByUsuario(usuario);
        } catch (Exception ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (usuarioLogado != null && usuarioLogado.validarSenha(senha)) {
            HttpSession sessao = request.getSession();
            sessao.setAttribute("usuario", usuarioLogado);
            response.sendRedirect(request.getContextPath() + "/protegido/index.html");
        } else {
            request.setAttribute("msgErro", "Usuário ou senha inválido");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
