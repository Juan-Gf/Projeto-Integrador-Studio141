<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Cliente</title>
    </head>
    <body>
        <h1>Formulário de Cadastro</h1>
        <form action="CadastroClienteServlet" method="POST">
            Nome:<input type="text" name="nome"/><br>
            Email:<input type="text" name="email"/><br>
            Cpf: <input type="text" name="cpf"/><br>
            Tipo de Pessoa: <input type="text" name="tipoPessoa"/><br>
            Celular: <input type="text" name="celular" required size="14"/><br>
            Nascimento: <input type="text" nome="nascimento" required size="11"/><br> 
            <button type="submit" >Enviar</button>
        </form>
    </body>
</html>
