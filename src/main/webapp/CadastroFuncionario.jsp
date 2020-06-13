<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro de Funcionário</title>
    </head>
    <body>
        <h1>Cadastrar Funcionário</h1>
        <form action="CadastroFuncionarioServlet" method="POST">
            Nome: <input type="text" name="nome"><br>
            CPF: <input type="text" name="cpf"><br>
            Endereco: <input type="email" name="endereco"><br>
            Cargo:  <select id="Cargo" name="cargo">
                <option value="Fritador">Fritador</option>
                <option value="Atendente" >Atendente</option>
                <option value="Atendente">Aux de de Fritura</option>
            </select><br>
            Salario: <input type="text" name="salario"><br>
            <button type="submit" >Enviar</button>
        </form>

    </body>
</html>
