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
            <h1>Registro de produtos</h1>
        <table>
            <thead>
                <th>ID</th>
                <th>Nome</th>
                <th>Categoria</th>
                <th>Tipo</th>
                <th>Descrição</th>
                <th>Quantidade</th>
                <th>Preço</th>
                <th>Alterar</th>
                <c:forEach var="c" items="${produtos}">
            <thead>
            <tbody>               
                    <td>${c.id}</td>
                    <td>${c.nome}</td>
                    <td>${c.categoria}</td>
                    <td>${c.tipo}</td>
                    <td>${c.descricao}</td>
                    <td>${c.quantidade}</td>
                    <td>${c.preco}</td>
                    <td></c:forEach></td>
        </tbody>
        </table>
            <a href="produtosMain.jsp"><button class="enviar">Voltar
            </button></a>
        </main>
         <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
