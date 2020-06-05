<%-- 
    Document   : deletarCliente
    Created on : 18 de mai de 2020, 23:49:21
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Cliente</title>
    </head>
    <body>
        <h1>Deletar Cliente</h1><br>
        Por gentileza, digite ID que deseja deletar.

        <form action="DeletarClienteServlet" method="POST">
            ID<input type="text" name="id">
            <button type="submit">Deletar</button><br>
        </form>
    </body>
</html>
