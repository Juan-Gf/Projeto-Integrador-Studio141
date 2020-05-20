/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Funcionario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DiogoSouza
 */
public class FuncionarioDAO {

    public static boolean cadastrarFuncionario(Funcionario funcionario) {
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

    public static List<Funcionario> listarFuncionarios() {
        List<Funcionario> funcionarios = new ArrayList<>();
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from funcionario";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String nome = rs.getString("nome");
                String senha = rs.getString("senha");
                String email = rs.getString("email");
                String setor = rs.getString("setor");
                String codFilial = rs.getString("codFilial");
                String status = rs.getString("status");
                //String id = rs.getString("id");

                funcionarios.add(new Funcionario(nome, senha, email, setor, codFilial, status));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return funcionarios;
    }
}
