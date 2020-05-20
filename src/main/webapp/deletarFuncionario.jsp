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
    </head>
    <body>
        <h1>Deletar Funcionario</h1><br>
        Por gentileza, digite ID que deseja deletar.

        <form action="DeletarFuncionarioServlet" method="POST">
            ID<input type="text" name="id">
            <button type="submit">Deletar</button><br>
        </form>
    </body>
</html>
