/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Funcionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DiogoSouza
 */
public class FuncionarioDAO {
    public static boolean cadastrarFuncionario(Funcionario funcionario){
                boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "insert into funcionario values (default,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, funcionario.getNome());
            ps.setString(2, funcionario.getSenha());
            ps.setString(3, funcionario.getEmail());
            ps.setString(4, funcionario.getSetor());
            ps.setString(5, funcionario.getCodFilial());
            ps.setString(6, funcionario.getStatus());
            ps.execute();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       return ok;
    }
}
