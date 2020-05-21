<%-- 
    Document   : vendaIniciar
    Created on : 20 de mai de 2020, 22:34:55
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Venda</title>
    </head>
    <body>
        <h1>Digite o ID do Cliente</h1>
        <form method="POST" action="VendaIniciarServlet">
        ID Cliente<input type="text" name="nome"/><br>
        <button type="submit" >Buscar</button>
        </form>
    </body>
</html>
