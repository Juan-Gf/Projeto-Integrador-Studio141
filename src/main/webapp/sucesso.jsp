<%-- 
    Document   : sucesso.jsp
    Created on : 12/03/2020, 20:58:03
    Author     : tiago.bscarton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso</title>
    </head>
    <body>
        <h1>Studio 141</h1>
        <form>
            <a href="clienteMain.jsp">Tela de Clientes</a>
            <a href="funcionarioMain.jsp">Tela de Funcionarios</a>
            <a href="produtosMain.jsp">Tela de Produtos</a>
            <a href="ListarClientesVenda">Iniciar Venda</a>
        </form>
        <h1>Sucesso!</h1>
    <c:if test="${cadastroOK}">
        <p>Sucesso!</p>
    </c:if>
    <a href="index.html">Início</a>
</body>
</html>
