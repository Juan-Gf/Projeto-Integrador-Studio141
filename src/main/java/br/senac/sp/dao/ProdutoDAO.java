/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Cliente;
import br.senac.sp.entidade.Funcionario;
import br.senac.sp.entidade.Produto;
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
public class ProdutoDAO {

    public static boolean cadastrarProduto(Produto produto) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "insert into produto values (default,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, produto.getNome());
            ps.setString(2, produto.getCategoria());
            ps.setString(3, produto.getTipo());
            ps.setString(4, produto.getDescricao());
            ps.setString(5, produto.getQuantidade());
            ps.setString(6, produto.getPreco());
            ps.execute();

            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }

    public static List<Produto> listarProdutos() {
        List<Produto> produtos = new ArrayList<>();
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from produto";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String id = rs.getString("id");
                String nome = rs.getString("nome");
                String categoria = rs.getString("categoria");
                String tipo = rs.getString("tipo");
                String descricao = rs.getString("descricao");
                String quantidade = rs.getString("quantidade");
                String preco = rs.getString("preco");

                produtos.add(new Produto(id, nome, categoria, tipo, descricao, quantidade, preco));
            }
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
        return produtos;
    }
    
    public static boolean excluirProduto(int id) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = ("delete from produto where id = ?");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }
}