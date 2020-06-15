/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.entidade;

/**
 *
 * @author DiogoSouza
 */
public class Produto {
    private String id;
    private String nome;
    private String categoria;
    private String tipo;
    private String descricao;
    private String quantidade;
    private String preco;
    private String filial;

    public Produto(String id, String nome, String categoria, String tipo, String descricao, String quantidade, String preco, String filial) {
        this.id = id;
        this.nome = nome;
        this.categoria = categoria;
        this.tipo = tipo;
        this.descricao = descricao;
        this.quantidade = quantidade;
        this.preco = preco;
        this.filial = filial;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    public String getPreco() {
        return preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }

    public String getFilial() {
        return filial;
    }

    public void setFilial(String filial) {
        this.filial = filial;
    }
    
    
    
    
}
