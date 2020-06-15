<%-- 
    Document   : CadastroFuncionario
    Created on : 17 de mai de 2020, 21:17:38
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad. Funcionario</title>
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
                        <li><a href="funcionarioMain.jsp">Voltar</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Cadastrar Funcionário</h1>
            <form action="CadastroFuncionarioServlet" method="POST">
                <label>Nome</label>
                <input type="text" name="nome" class="input-padrao" required="required"
                pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$">
                
                <label>Senha</label>
                <input type="password" name="senha" class="input-padrao"
                required="required">
                
                <label>E-mail</label>
                <input type="email" name="email" class="input-padrao" 
                required="required">
                
                <label>Setor</label>
                <select name="setor" >
                    <option>BackOffice</option>
                    <option>Vendas</option>
                    <option>T.I</option>
                    <option>Adm</option>
                    <option>Gerencia</option>
                </select>
                
                <label>Status</label>
                <select name="status" >
                    <option>Ativo</option>
                    <option>Desligado</option>
                </select>
                
                <label>Filial</label>
                <select name="codFilial" >
                    <option>Matriz - São Pualo</option>
                    <option>Campina Grande</option>
                    <option>Joinville</option>
                    <option>Brasília</option>
                </select> 
                 
                <button type="submit" class="enviar">Salvar dados</button>
            </form>
        </main>
     
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
