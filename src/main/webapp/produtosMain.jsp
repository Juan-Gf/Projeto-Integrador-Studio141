<%-- 
    Document   : produtosMain
    Created on : 20 de mai de 2020, 20:55:06
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Produtos</title>
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
        <main class="opcoes">
           
            <ul class="menu">
                <h1>Menu Produtos</h1>
                <a href="cadastroProduto.jsp">
                    <li><h2>Cadastrar</h2><img src="Newproduto.png"></li>
                </a>
                <a href="ListarProdutos">
                    <li><h2>Lista Produtos</h2><img src="lista.png"></li>
                </a>
                <a href="deletarProduto.jsp">
                    <li><h2>Deletar</h2><img src="lixo.png"></li>
                </a>
            </ul>

        </main>
        
         <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
