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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastrar Funcionário</h1>
        <form action="CadastroFuncionarioServlet" method="POST">
            Nome: <input type="text" name="nome"><br>
            Senha: <input type="text" name="senha"><br>
            Email: <input type="email" name="email"><br>	
            Setor: <input type="text" name="setor"><br>
            Status: <input type="text" name="status"><br>
            Filial: <input type="text" name="codFilial"><br>
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>
