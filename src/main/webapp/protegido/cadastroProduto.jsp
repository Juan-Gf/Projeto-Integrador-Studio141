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
        <h1>Cadastro de Produto</h1>
        <form action="CadastroProdutoServlet" method="POST">
            <label>Nome</label>
            <input type="text" name="nome" class="input-padrao" required="required"
            pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$"> 
            
            <label>Categoria</label>
            <select name="categoria">
                <option>Corda</option>
                <option>Sopro</option>
                <option>Percussão</option>
            </select>
            
            
            <label>Tipo</label>
            <input type="text" class="input-padrao" name="tipo"/>
            
            <label>Descrição</label>
            <textarea name="descricao" rows="10" cols="7" required="required"
                      pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$"></textarea>
            
            <label>Quantidade</label>
            <input type="numbers" name="quantidade" class="input-padrao" 
            required="required" pattern="[0-9]+$" maxlength="4">
            
            <label>Preço</label>
            <input type="tel" required="required" maxlength="15" class="input-padrao"
            name="preco" pattern="([0-9]{1,3}\.)?[0-9]{1,3},[0-9]{2}$" />
 
            <button type="submit" class="enviar">Salvar dados</button>
        </form>
        </main>
<footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
