<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cad. Cliente</title>
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
                        <li><a href="clienteMain.jsp">Voltar</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <main>
            <h1>Formulário de Cadastro</h1>
            <form action="CadastroClienteServlet" method="POST">
                
                <label>Nome</label>
                <input type="text" name="nome" class="input-padrao" required="required"
                pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+$"> 
                
                <label>Email</label>
                <input type="email" name="email" class="input-padrao"  
                placeholder="seuemail@dominio.com" required="required"> 
                
                <label>Cpf</label>
                <input type="numbers" name="cpf" class="input-padrao" maxlength="11" 
                placeholder="XXX.XXX.XXX-XX" required="required" pattern="[0-9]+$"> 
                
                <label>Tipo de Pessoa</label>
                <select name="tipoPessoa" >
                    <option>Fisica</option>
                    <option>Juridica</option>
                </select>
                
                <label>Celular</label>
                <input type="tel" name="celular" class="input-padrao" maxlength="11"
                placeholder="(XX)XXXXX-XXXX" required="required" pattern="[0-9]+$">
                
                <label>Nascimento</label>
                <input type="date" name="nascimento" size="11" 
                placeholder="DD/MM/AAA" class="input-padrao" required="required">
                
                <button type="submit" class="enviar">Salvar dados</button>
            </form>
        </main>
        
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
    </body>
</html>
