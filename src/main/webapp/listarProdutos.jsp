<%-- 
    Document   : listarProdutos
    Created on : 20 de mai de 2020, 21:53:45
    Author     : DiogoSouza
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Produtos</title>
    </head>
    <body>
        <h1>Studio 141</h1>
        <form>
            <a href="clienteMain.jsp">Tela de Clientes</a>
            <a href="funcionarioMain.jsp">Tela de Funcionarios</a>
            <a href="produtosMain.jsp">Tela de Produtos</a>
            <a href="ListarClientesVenda">Iniciar Venda</a>
        </form>
        <table border="15">
            <th>ID</th>
            <th>Nome</th>
            <th>Categoria</th>
            <th>Tipo</th>
            <th>Descrição</th>
            <th>Quantidade</th>
            <th>Preço</th>
            <th>Alterar</th>

            <c:forEach var="c" items="${produtos}">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.nome}</td>
                    <td>${c.categoria}</td>
                    <td>${c.tipo}</td>
                    <td>${c.descricao}</td>
                    <td>${c.quantidade}</td>
                    <td>${c.preco}</td>

                </tr>
            </c:forEach>

            <tr></tr>
        </table>
        <a href="index.html">Início</a>
    </body>
</html>
