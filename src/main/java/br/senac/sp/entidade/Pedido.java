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
    private List<ItemPedido> listaItens;

    public Pedido(String id, String codCliente, String codFuncionario, double valorTotal, String data, String filial, String formaPagamento, List<ItemPedido> listaItens) {
        this.id = id;
        this.codCliente = codCliente;
        this.codFuncionario = codFuncionario;
        this.valorTotal = valorTotal;
        this.data = data;
        this.filial = filial;
        this.formaPagamento = formaPagamento;
        this.listaItens = new ArrayList<ItemPedido>();
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
        double valor = 0;
        for (ItemPedido i : listaItens) {
            valor += i.getQuantidade() * i.getValor();
        }

        return valor;
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

    public List<ItemPedido> getListaItens() {
        return listaItens;
    }

    public void setListaItens(List<ItemPedido> listaItens) {
        this.listaItens = listaItens;
    }

}
