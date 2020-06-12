<%-- 
    Document   : cadastroProduto
    Created on : 20 de mai de 2020, 20:57:18
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
    </head>
    <body>
        <h1>Studio 141</h1>

        <a href="clienteMain.jsp">Tela de Clientes</a>
        <a href="funcionarioMain.jsp">Tela de Funcionarios</a>
        <a href="produtosMain.jsp">Tela de Produtos</a>
        <a href="ListarClientesVenda">Iniciar Venda</a>


        <h1>Formulário de Cadastro</h1>
        <form action="CadastroProdutoServlet" method="POST">
            Nome:<input type="text" name="nome"/><br>
            Categoria: <input type="text" name="categoria"/><br>
            Tipo: <input type="text" name="tipo"/><br>
            Descricao: <input type="text" name="descricao"/><br>
            Quantidade: <input type="text" name="quantidade"/><br>
            Preco: <input type="text" name="preco"/><br> 
            <button type="submit" >Enviar</button>
        </form>

    </body>
</html>
