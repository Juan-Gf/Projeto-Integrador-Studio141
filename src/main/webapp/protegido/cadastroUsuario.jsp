<%-- 
    Document   : cadastroUsuario
    Created on : 13 de jun de 2020, 15:16:42
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="CadastroUsuarioServlet" method="POST">

            <label>Nome</label>
            <input type="text" name="nome" class="input-padrao" required="required"
                   pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$"> 

            <label>Usuario</label>
            <input type="text" name="usuario" class="input-padrao"  
                   placeholder="usuario" required="required"> 

            <label>Senha</label>
            <input type="numbers" name="senha" class="input-padrao" 
                   placeholder="*******" required="required"> 

            <label>Perfil</label>
            <select name="perfil" >
                <option>admin</option>
                <option>vendedor</option>
            </select>

            <label>isAdmin</label>
            <select name="isAdmin" >
                <option>true</option>
                <option>false</option>
            </select>


            <button type="submit" class="enviar">Salvar dados</button>
        </form>
    </body>
</html>
