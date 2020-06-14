<%-- 
    Document   : listarPedidos
    Created on : 13 de jun de 2020, 11:29:15
    Author     : DiogoSouza
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Relatório</h1>
        <table>
            <thead>
            <th>ID Pedido</th>
            <th>ID Cliente</th>
            <th>ID Funcionario</th>
            <th>Valor Total</th>
            <th>Data Pedido</th>
            <th>Filial</th>
            <th>Forma Pagamento</th>
            <th>Cod Produto</th>
            <th>Quantidade</th>
                <c:forEach var="c" items="${pedidos}">
            </thead>
            <tbody>
            <td>${c.id}</td>
            <td>${c.codCliente}</td>
            <td>${c.codFuncionario}</td>
            <td>${c.valorTotal}</td>
            <td>${c.data}</td>
            <td>${c.filial}</td>
            <td>${c.formaPagamento}</td>
            <td>${c.codProd}</td>
            <td>${c.quantidade}</td>

        </c:forEach>

    </tbody>
</table>
</body>
</html>
