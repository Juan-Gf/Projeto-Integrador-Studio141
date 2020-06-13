<%-- 
    Document   : relatoriosMain
    Created on : 13 de jun de 2020, 10:29:36
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
        <h1>Relatório por CPF do Cliente</h1>
        <form action="ListarClienteComCPF" method="GET">
            <legend>Por gentileza, digite CPF que deseja pesquisar.</legend>
            <label>CPF</label><input type="number" name="cpf" class="input-padrao">
            <button type="submit" class="enviar">Pesquisar</button>
        </form>

        <h1>Relatório por ID do Funcionario</h1>
        <form action="" method="POST">
            <legend>Por gentileza, digite ID que deseja pesquisar.</legend>
            <label>ID</label><input type="number" name="id" class="input-padrao">
            <button type="submit" class="enviar">Pesquisar</button>
        </form>

        <h1>Relatório por ID do Produto</h1>
        <form action="" method="POST">
            <legend>Por gentileza, digite ID que deseja pesquisar.</legend>
            <label>ID</label><input type="number" name="id" class="input-padrao">
            <button type="submit" class="enviar">Pesquisar</button>
        </form>
    </body>
</html>
