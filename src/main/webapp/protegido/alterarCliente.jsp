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
        <title>Edit Clientes</title>
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

            <h1>Editar Dados</h1>
            <form action="AlterarClientes" method="POST">
                
                <label>Nome</label>
                <input type="text" name="nome" class="input-padrao"
                value="<c:out value="${cliente.nome}" />"
                pattern="[A-Za-zcáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$">

                <label>Email</label>
                <input type="email" name="email" class="input-padrao" 
                value="<c:out value="${cliente.email}" />">

                <label>Cpf</label>
                <input type="numbers" name="cpf" class="input-padrao" disabled
                value="<c:out value="${cliente.cpf}" />" pattern="[0-9]+$">

                <label>Tipo de Pessoa</label>
                <select name="tipoPessoa" >
                    <option>Fisica</option>
                    <option>Juridica</option>
                </select>

                <label>Celular</label>
                <input type="numbers" name="celular" required size="14" pattern="[0-9]+$"
                class="input-padrao" value="<c:out value="${cliente.celular}" />">

                <label>Nascimento</label>
                <input type="date" nome="nascimento" required size="11" 
                class="input-padrao" value="<c:out value="${cliente.nascimento}" />">
                
                <input type="numbers" nome="id" class="input-padrao" disabled
                value="<c:out value="${cliente.id}" />">

                <button type="submit" class="enviar">Gravar dados</button>
            </form>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
    
</html>