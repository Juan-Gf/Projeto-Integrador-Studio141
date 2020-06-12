<%-- 
    Document   : listarFuncionarios
    Created on : 20 de mai de 2020, 11:58:46
    Author     : DiogoSouza
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Funcionarios</title>
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
            <th>Nome</th>
            <th>Senha</th>
            <th>Email</th>
            <th>Setor</th>
            <th>CodFilial</th>
            <th>Status</th>
            <th>ID</th>
            <th>Alterar</th>

            <c:forEach var="c" items="${funcionarios}">
                <tr>
                    <td>${c.nome}</td>
                    <td>${c.senha}</td>
                    <td>${c.email}</td>
                    <td>${c.setor}</td>
                    <td>${c.codFilial}</td>
                    <td>${c.status}</td>
                    <td>${c.id}</td>

                </tr>
            </c:forEach>

            <tr></tr>
        </table>
        <a href="index.html">Início</a>
    </body>
</html>
