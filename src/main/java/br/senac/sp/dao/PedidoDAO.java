/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.dao;

import br.senac.sp.db.ConexaoDB;
import br.senac.sp.entidade.Pedido;
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
public class PedidoDAO {

    public static boolean cadastrarPedido(Pedido pedido) {
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "insert into pedido values (default,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, pedido.getCodCliente());
            ps.setString(2, pedido.getCodFuncionario());
            ps.setString(3, Double.toString(pedido.getValorTotal()));
            ps.setString(4, pedido.getData());
            ps.setString(5, pedido.getFilial());
            ps.setString(6, pedido.getFormaPagamento());
            ps.setString(7, pedido.getCodProd());
            ps.setString(8, pedido.getQuantidade());
            ps.execute();

            ok = true;
        } catch (SQLException ex) {
            Logger.getLogger(PedidoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ok;
    }

    public static List<Pedido> buscaPorCPF(String cpf) {
        List<Pedido> pedidos = new ArrayList<>();
        boolean ok = false;
        Connection con;
        try {
            con = ConexaoDB.getConexao();
            String sql = "SELECT pedido.id , "
                    + "pedido.idCli, "
                    + "pedido.idFunc, "
                    + "valorTotal, "
                    + "dataPedido, "
                    + "filial, "
                    + "formaPagamento, "
                    + "idProd, "
                    + "quantiade "
                    + "FROM cliente "
                    + "INNER JOIN pedido "
                    + "ON cliente.id = pedido.idCli where cpf = ?;";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String pedID = rs.getString("pedido.id");
                String idCli = rs.getString("pedido.idCli");
                String idFunc = rs.getString("pedido.idFunc");
                double valorTotal = Double.parseDouble(rs.getString("valorTotal"));
                String dataPedido = rs.getString("dataPedido");
                String filial = rs.getString("filial");
                String formaPagamento = rs.getString("formaPagamento");
                String idProd = rs.getString("idProd");
                String quantidade = rs.getString("quantiade");

                pedidos.add(new Pedido(pedID, idCli, idFunc, valorTotal, dataPedido, filial, formaPagamento, idProd, quantidade));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pedidos;
    }

}
