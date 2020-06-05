/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.entidade;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DiogoSouza
 */
public class Pedido {

    private String id;
    private String codCliente;
    private String codFuncionario;
    private double valorTotal;
    private String data;
    private String filial;
    private String formaPagamento;
    private String codProd;
    private String quantidade;
    //private List<ItemPedido> listaItens;
    
    
    //construtor sem id pois o banco gera ele
    public Pedido(String codCliente, String codFuncionario, double valorTotal, String data, String filial, String formaPagamento, String codProd, String quantidade) {
        this.codCliente = codCliente;
        this.codFuncionario = codFuncionario;
        this.valorTotal = valorTotal;
        this.data = data;
        this.filial = filial;
        this.formaPagamento = formaPagamento;
        this.codProd = codProd;
        this.quantidade = quantidade;
    }
    // com id
    public Pedido(String id, String codCliente, String codFuncionario, double valorTotal, String data, String filial, String formaPagamento, String codProd, String quantidade) {
        this.id = id;
        this.codCliente = codCliente;
        this.codFuncionario = codFuncionario;
        this.valorTotal = valorTotal;
        this.data = data;
        this.filial = filial;
        this.formaPagamento = formaPagamento;
        this.codProd = codProd;
        this.quantidade = quantidade;
    }
    
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(String codCliente) {
        this.codCliente = codCliente;
    }

    public String getCodFuncionario() {
        return codFuncionario;
    }

    public void setCodFuncionario(String codFuncionario) {
        this.codFuncionario = codFuncionario;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getFilial() {
        return filial;
    }

    public void setFilial(String filial) {
        this.filial = filial;
    }

    public String getFormaPagamento() {
        return formaPagamento;
    }

    public void setFormaPagamento(String formaPagamento) {
        this.formaPagamento = formaPagamento;
    }

    public String getCodProd() {
        return codProd;
    }

    public void setCodProd(String codProd) {
        this.codProd = codProd;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }
    
    

}
