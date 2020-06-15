<%-- 
    Document   : login
    Created on : 13 de jun de 2020, 13:08:29
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="styleLogin.css">
    </head>
    <body>
        <header>

        </header>
        <main>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
            
            <form method="post" action="LoginServlet">
            <h2 style="color: red"><c:out value="${msgErro}"/></h2>

            <label>Login</label>
            <input type="text" name="usuario" class="input-padrao">
            
            <label>Senha</label>
            <input type="password" name="senha" class="input-padrao">
            <br> <br>
            <input type="submit" name="btnLogin" value="Entrar" class="enviar" >

            </form>
        </main>
    </body>
</html>
