<%-- 
    Document   : vendaIniciar
    Created on : 20 de mai de 2020, 22:34:55
    Author     : DiogoSouza
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Venda</title>
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
        <h1>Realize sua venda!</h1>
        <form method="POST" action="VendaIniciarServlet">
            ID Cliente<input type="text" name="idCli"/><br>
            ID Funcionario<input type="text" name="idFunc"/><br>
            Data<input type="text" name="data"/><br>
            Filial<input type="text" name="filial"/><br>
            Forma Pagamento<input type="text" name="pagamento"/><br>
            ID Produto<input type="text" name="idProd"/><br>
            Quantidade<input type="text" name="quantiade"/><br>

            <button type="submit" >Vender</button>
        </form>
        <br>
        <h1 style="font-size: 14px;">Clientes</h1>
        <table border="4">
            <th>Id</th>
            <th>Nome</th>
            <th>CPF</th>
            <th>Celular</th>

            <c:forEach var="c" items="${clientes}">
                <tr>
                    <td>${c.id}</td>
                    <td>${c.nome}</td>

                    <td>${c.cpf}</td>

                    <td>${c.celular}</td>



                </tr>
            </c:forEach>
            <tr></tr>
        </table>
        <h1 style="font-size: 14px;">Produtos</h1>
        <table border="4">
            <th>ID</th>
            <th>Nome</th>
            <th>Categoria</th>
            <th>Tipo</th>
            <th>Descrição</th>
            <th>Quantidade</th>
            <th>Preço</th>

            <c:forEach var="d" items="${produtos}">
                <tr>
                    <td>${d.id}</td>
                    <td>${d.nome}</td>
                    <td>${d.categoria}</td>
                    <td>${d.tipo}</td>
                    <td>${d.descricao}</td>
                    <td>${d.quantidade}</td>
                    <td>${d.preco}</td>

                </tr>
            </c:forEach>

            <tr></tr>
        </table>
        
         <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
