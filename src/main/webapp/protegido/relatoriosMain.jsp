<%-- 
    Document   : relatoriosMain
    Created on : 13 de jun de 2020, 10:29:36
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relatórios</title>
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
                        <li><a href="produtosMain.jsp">Voltar</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Relatório por CPF do Cliente</h1>
            <form action="ListarClienteComCPF" method="GET">
                <legend>Por gentileza, digite CPF que deseja pesquisar.</legend>
                <label>CPF</label><input type="number" name="cpf" class="input-padrao">
                <button type="submit" class="enviar">Pesquisar</button>
            </form>

            <h1>Relatório por ID do Funcionario</h1>
            <form action="ListarFuncionarioComID" method="GET">
                <legend>Por gentileza, digite ID que deseja pesquisar.</legend>
                <label>ID</label><input type="number" name="id" class="input-padrao">
                <button type="submit" class="enviar">Pesquisar</button>
            </form>

            <h1>Relatório por ID do Produto</h1>
            <form action="ListarProdutoComID" method="GET">
                <legend>Por gentileza, digite ID que deseja pesquisar.</legend>
                <label>ID</label><input type="number" name="id" class="input-padrao">
                <button type="submit" class="enviar">Pesquisar</button>
            </form>
        </main>
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
