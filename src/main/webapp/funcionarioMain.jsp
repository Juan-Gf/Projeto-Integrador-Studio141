<%-- 
    Document   : funcionarioMain
    Created on : 19 de mai de 2020, 21:35:23
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tela de Funcionarios</title>
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
        <main class="opcoes">

            <ul class="menu">
                <h1>Menu Funcionarios</h1>
                <a href="CadastroFuncionario.jsp">
                    <li><h2>Cadastrar Funcionário</h2><img src="NewCliente.png"></li>
                </a>
                <a href="ListarFuncionarios">
                    <li><h2>Lista Funcionarios</h2><img src="lista.png"></li>
                </a>
                <a href="deletarFuncionario.jsp">
                    <li><h2>Deletar Funcionario</h2><img src="lixo.png"></li>
                </a>
            </ul>

        </main>

        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>

    </body>
</html>
