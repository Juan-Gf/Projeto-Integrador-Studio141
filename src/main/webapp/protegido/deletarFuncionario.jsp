<%-- 
    Document   : deletarFuncionario
    Created on : 20 de mai de 2020, 13:01:10
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Funcionario</title>
        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
            <div class="caixa">
                <img src="Logo-Studio.png" alt="Logo Studio" class="logo">

                <nav>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="funcionarioMain.jsp">Voltar</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Deletar Funcionario</h1>
            <form action="DeletarFuncionarioServlet" method="POST">
                <legend>Por gentileza, digite ID que deseja deletar.</legend>
                <label>ID</label>
                <input type="text" name="id" class="input-padrao">
                <button type="submit" class="enviar">Deletar</button>
            </form>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
