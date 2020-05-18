/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.entidade;

/**
 *
 * @author tiago.bscarton
 */
public class Cliente {
    
    private String nome;
    private String email;
    private String cpf;
    private String tipoPessoa;
    private String celular;
    private String nascimento;
    private String id;

    public Cliente(String nome, String email, String cpf, String tipoPessoa, String celular, String nascimento, String id) {
        this.nome = nome;
        this.email = email;
        this.cpf = cpf;
        this.tipoPessoa = tipoPessoa;
        this.celular = celular;
        this.nascimento = nascimento;
        this.id = id;
    }   

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTipoPessoa() {
        return tipoPessoa;
    }

    public void setTipoPessoa(String tipoPessoa) {
        this.tipoPessoa = tipoPessoa;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getNascimento() {
        return nascimento;
    }

    public void setNascimento(String nascimento) {
        this.nascimento = nascimento;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
}
