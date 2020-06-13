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
                        <li><a href="clienteMain.jsp">Clientes</a></li>
                        <li><a href="funcionarioMain.jsp">Funcionarios</a></li>
                        <li><a href="produtosMain.jsp">Produtos</a></li>
                        <li><a href="ListarClientesVenda">Venda</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Registro de Clientes</h1>
            <table>
                <thead>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>CPF</th>
                    <th>Tipo de Pessoa</th>
                    <th>Celular</th>
                    <th>Nascimento</th>
                    <th>Id</th>
                    <th>Alterar</th>
                    <c:forEach var="c" items="${clientes}">
                </thead>
                <tbody>
                    <td>${c.nome}</td>
                    <td>${c.email}</td>
                    <td>${c.cpf}</td>
                    <td>${c.tipoPessoa}</td>
                    <td>${c.celular}</td>
                    <td>${c.nascimento}</td>
                    <td>${c.id}</td>
                    <td><a href="AlterarClientes?action=edit&id=<c:out 
                    default=""value="${c.id}"/>">Entrar</a></td>
                </c:forEach>

                </tbody>
            </table>
            <a href="clienteMain.jsp"><button class="enviar">Voltar
            </button></a>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>