/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Cliente;
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
 * @author tiago.bscarton
 */
public class ClienteDAO {

    public static boolean cadastrarCliente(Cliente cliente) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "insert into cliente values (default,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getEmail());
            ps.setString(3, cliente.getCpf());
            ps.setString(4, cliente.getTipoPessoa());
            ps.setString(5, cliente.getCelular());
            ps.setString(6, cliente.getNascimento());
            ps.execute();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }

    public static List<Cliente> listarClientes() {
        List<Cliente> clientes = new ArrayList<>();
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "select * from cliente";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String nome = rs.getString("nome");
                String email = rs.getString("email");
                String cpf = rs.getString("cpf");
                String tipoPessoa = rs.getString("tipoPessoa");
                String celular = rs.getString("celular");
                String nascimento = rs.getString("nascimento");
                String id = rs.getString("id");

                clientes.add(new Cliente(nome, email, cpf, tipoPessoa, celular, nascimento, id));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return clientes;
    }

    public static boolean excluirCliente(int id) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = ("delete from cliente where id = ?");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }

    public static Cliente localizarClienteID(String id) {
        boolean ok = false;
        Connection con;
        Cliente cliente = new Cliente();
        try {
            con = ConexaoDB.getConexao();
            String sql = ("select * from cliente where id = ?");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String nome = rs.getString("nome");
                String email = rs.getString("email");
                String cpf = rs.getString("cpf");
                String tipoPessoa = rs.getString("tipoPessoa");
                String celular = rs.getString("celular");
                String nascimento = rs.getString("nascimento");
                String ide = rs.getString("id");

                cliente = new Cliente(nome, email, cpf, tipoPessoa, celular, nascimento, ide);
            }

            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cliente;
    }

    public static boolean alterarCliente(Cliente cliente) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "update cliente set"
                    + " nome=?,"
                    + " email=?,"
                    + " cpf=?, "
                    + "tipoPessoa=?,"
                    + " celular=?,"
                    + " nascimento=? "
                    + "where id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cliente.getNome());
            ps.setString(2, cliente.getEmail());
            ps.setString(3, cliente.getCpf());
            ps.setString(4, cliente.getTipoPessoa());
            ps.setString(5, cliente.getCelular());
            ps.setString(6, cliente.getNascimento());
            ps.setString(7, cliente.getId());
            ps.executeUpdate();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }
    
    /*public static boolean iniciarCarrinhoCliente(Cliente cliente) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = ("delete from cliente where id = ?");
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }*/

}
