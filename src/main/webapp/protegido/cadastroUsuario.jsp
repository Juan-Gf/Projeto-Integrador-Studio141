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
        <title>Cad. Usuario</title>
        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
            <div class="caixa">
                <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
                <nav>
                    <ul>
                        <li><a href="index.html">Voltar</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <main>
            <h1>Registro de Login</h1>
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
                    <option>Admin</option>
                    <option>Vendedor</option>
                </select>

                <label>Admin</label>
                <select name="isAdmin" >
                    <option>True</option>
                    <option>False</option>
                </select>

                <button type="submit" class="enviar">Salvar dados</button>
            </form>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
