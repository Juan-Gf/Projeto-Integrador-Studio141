<%-- 
    Document   : vendaCarrinho
    Created on : 21 de mai de 2020, 20:05:21
    Author     : DiogoSouza
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrinho</title>
    </head>
    <body>
            <table border="15">
            <th>ID</th>
            <th>Nome</th>
            <th>Categoria</th>
            <th>Tipo</th>
            <th>Descrição</th>
            <th>Quantidade</th>
            <th>Preço</th>

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
    </body>
</html>
