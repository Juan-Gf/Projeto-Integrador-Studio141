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
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Realize sua venda!</h1>
            <form method="POST" action="VendaIniciarServlet">
                <label>ID Cliente</label>
                <input type="numbers" name="idCli" pattern="[0-9]+$"
                class="input-padrao">
                
                <label>ID Funcionário</label>
                <input type="numbers" name="idFunc" pattern="[0-9]+$"
                class="input-padrao">
                
                <label>Data</label>
                <input type="date" name="data" class="input-padrao">
                
                <label>Filial</label>
                <input type="text" name="filial" class="input-padrao">
                
                <label>Forma Pagamento</label>
                <input type="text" name="pagamento" class="input-padrao">
                
                <label>ID Produto</label>
                <input type="text" name="idProd" class="input-padrao">
                
                <label>Quantidade</label>
                <input type="text" name="quantiade" class="input-padrao">

                <button type="submit" class="enviar" >Vender</button>
            </form>
            <h2>Clientes</h2>
            <table>
                <thead>
                <th>Id</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>Celular</th>
                    <c:forEach var="c" items="${clientes}">
                    </thead>   
                    <tbody>
                    <td>${c.id}</td>
                    <td>${c.nome}</td>
                    <td>${c.cpf}</td>
                    <td>${c.celular}</td>
                </c:forEach>
                </tbody>

            </table>
            <h2>Produtos</h2>
            <table>
                <thead>
                <th>ID</th>
                <th>Nome</th>
                <th>Categoria</th>
                <th>Tipo</th>
                <th>Descrição</th>
                <th>Quantidade</th>
                <th>Preço</th>
                    <c:forEach var="d" items="${produtos}">     
                    </thead>
                    <tbody>
                    <td>${d.id}</td>
                    <td>${d.nome}</td>
                    <td>${d.categoria}</td>
                    <td>${d.tipo}</td>
                    <td>${d.descricao}</td>
                    <td>${d.quantidade}</td>
                    <td>${d.preco}</td>
                </c:forEach>
                </tbody>
            </table>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
