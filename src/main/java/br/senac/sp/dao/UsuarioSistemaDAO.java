/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.UsuarioSistema;
import br.senac.sp.utils.PerfilEnum;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DiogoSouza
 */
public class UsuarioSistemaDAO {
    public static UsuarioSistema getUsuarioSistemaByUsuario(String usuario) {
        UsuarioSistema usuarioSistema = null;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from usuariosistema where usuario=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuarioSistema = new UsuarioSistema();
                String nome = rs.getString("nome");
                String senha = rs.getString("senha");
                String perfil = rs.getString("perfilEnum");
                String isAdminDB = rs.getString("isAdmin");
                //usuarioSistema.setNome(nome);
                //usuarioSistema.setUsuario(usuario);
                //usuarioSistema.setSenha(senha);
                //usuarioSistema.setPerfil(perfil);
                boolean isAdmin = isAdminDB.equals("true") ? true : false;
                /*if(isAdminDB.equals("true")){
                    isAdmin = true;
                }else{
                    isAdmin = false;
                }*/
                usuarioSistema = new UsuarioSistema(nome, "user", senha, perfil, isAdmin);
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return usuarioSistema;
    }

    public static boolean cadastrarUsuario(UsuarioSistema usuariosistema) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "insert into usuariosistema values (default,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, usuariosistema.getNome());
            ps.setString(2, usuariosistema.getUsuario());
            ps.setString(3, usuariosistema.getSenha());
            ps.setString(4, usuariosistema.getPerfil());
            ps.setString(5, String.valueOf(usuariosistema.isAdmin()));

            ps.execute();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }
}
