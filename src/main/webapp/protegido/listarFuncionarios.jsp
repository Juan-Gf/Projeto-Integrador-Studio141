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
                        <li><a href="funcionarioMain.jsp">Funcionários</a></li>
                        <li><a href="produtosMain.jsp">Produtos</a></li>
                        <li><a href="ListarClientesVenda">Venda</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Registro de Funcionários</h1>
        <table>
            <thead>
                <th>Nome</th>
                <th>Senha</th>
                <th>Email</th>
                <th>Setor</th>
                <th>CodFilial</th>
                <th>Status</th>
                <th>ID</th>
                <th>Alterar</th>
                <c:forEach var="c" items="${funcionarios}">
            </thead>
            <tbody>
                    <td>${c.nome}</td>
                    <td>${c.senha}</td>
                    <td>${c.email}</td>
                    <td>${c.setor}</td>
                    <td>${c.codFilial}</td>
                    <td>${c.status}</td>
                    <td>${c.id}</td>
                    <td> </c:forEach> </td>
                    </tbody>
        </table>
            <a href="funcionarioMain.jsp"><button class="enviar">Voltar
            </button></a>
        
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
