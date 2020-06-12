<%-- 
    Document   : listarCliente
    Created on : 17 de mai de 2020, 22:43:43
    Author     : DiogoSouza
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Clientes</title>
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
            <th>Email</th>
            <th>CPF</th>
            <th>Tipo de Pessoa</th>
            <th>Celular</th>
            <th>Nascimento</th>
            <th>Id</th>
            <th>Alterar</th>
                <c:forEach var="c" items="${clientes}">
                <tr>
                    <td>${c.nome}</td>
                    <td>${c.email}</td>
                    <td>${c.cpf}</td>
                    <td>${c.tipoPessoa}</td>
                    <td>${c.celular}</td>
                    <td>${c.nascimento}</td>
                    <td>${c.id}</td>
                    <td><a href="AlterarClientes?action=edit&id=<c:out value="${c.id}"/>">Entrar</a></td>
                </tr>
            </c:forEach>

            <tr></tr>
        </table>
        <a href="index.html">Início</a>
    </body>
</html>