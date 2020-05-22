<%-- 
    Document   : alterarCliente
    Created on : 19 de mai de 2020, 23:30:25
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

        <form action="AlterarClientes" method="POST">
            Nome:<input type="text" name="nome" value="<c:out value="${cliente.nome}" />" /><br>
            Email:<input type="text" name="email" value="<c:out value="${cliente.email}" />" /><br>
            Cpf: <input type="text" name="cpf" value="<c:out value="${cliente.cpf}" />" /><br>
            Tipo de Pessoa: <input type="text" name="tipoPessoa" value="<c:out value="${cliente.tipoPessoa}" />" /><br>
            Celular: <input type="tel" name="celular" required size="14" value="<c:out value="${cliente.celular}" />" /><br>
            Nascimento: <input type="text" nome="nascimento" required size="11" value="<c:out value="${cliente.nascimento}" />" /><br> 
            <button type="submit" >Enviar</button>
        </form>


        <a href="index.html">Início</a>
    </body>
</html>