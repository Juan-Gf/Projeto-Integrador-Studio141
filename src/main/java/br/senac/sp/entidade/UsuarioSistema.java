/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.entidade;

import at.favre.lib.crypto.bcrypt.BCrypt;
import br.senac.sp.utils.PerfilEnum;

/**
 *
 * @author DiogoSouza
 */
public class UsuarioSistema {

    private long id;
    private String nome;
    private String usuario;
    private String senha;
    private String perfil;
    private boolean isAdmin;

    public UsuarioSistema(String nome, String usuario, String senha, String perfil, boolean isAdmin) {
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
        this.perfil = perfil;
        this.isAdmin = isAdmin;
    }

    public UsuarioSistema() {
    }
    
    public String encodeSenha(String senhaAberta) {
        return BCrypt.withDefaults().hashToString(12, senhaAberta.toCharArray());
    }

    public boolean validarSenha(String senhaAberta) {
        BCrypt.Result result = BCrypt.verifyer().verify(senhaAberta.toCharArray(), this.getSenha());
        return result.verified;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getPerfil() {
        return perfil;
    }

    public void String(String perfil) {
        this.perfil = perfil;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

}
