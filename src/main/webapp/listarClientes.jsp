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
        
        <table>
            <th>Nome</th>
            <th>Email</th>
            <th>CPF</th>
            <th>Tipo de Pessoa</th>
            <th>Celular</th>
            <th>Nascimento</th>
            <th>Id</th>
            
            <c:forEach var="c" items="${clientes}">
                <tr>
                    <td>${c.nome}</td>
                    <td>${c.email}</td>
                    <td>${c.cpf}</td>
                    <td>${c.tipoPessoa}</td>
                    <td>${c.celular}</td>
                    <td>${c.nascimento}</td>
                    <td>${c.id}</td>
                </tr>
            </c:forEach>
            
            <tr></tr>
        </table>
         <a href="index.html">Início</a>
    </body>
</html>