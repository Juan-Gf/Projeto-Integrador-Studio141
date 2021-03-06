<%-- 
    Document   : index
    Created on : 14 de jun de 2020, 12:33:34
    Author     : DiogoSouza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="reset.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body >
        <header>
            <div class="caixa">
                <img src="Logo-Studio.png" alt="Logo Studio" class="logo">

                <nav>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li> <a href="clienteMain.jsp">Clientes</a></li>
                        <li><a href="funcionarioMain.jsp">Funcionarios</a></li>
                        <li><a href="produtosMain.jsp"> Produtos</a></li>
                        <li><a href="ListarClientesVenda">Venda</a></li>
                        <c:if test="${sessionScope.usuario.isAdmin}">
                        <li><a href="relatoriosMain.jsp">Relatórios</a></li>
                        </c:if>
                        <li><a href="cadastroUsuario.jsp">Cadastrar Usuario</a></li>
                    </ul>
                </nav>
            </div>
            
        </header>

        
        <p>Bem vindo, ${sessionScope.usuario.nome}</p> 
        <main class="home">
            
            <h1>Quem somos</h1>
            <h2>Conheça um pouco da história da Studio 141</h2>

            <img src="foto.png">
            <p> &nbsp&nbsp Foi fundada em 2009 pelos irmãos Antônio e Joana Tades.</p>
           
            <p> &nbsp&nbsp Há 11 anos no mercado, a Studio 141 passa por um processo de 
            inovação com o compromisso de garantir a qualidade dos produtos com
            a eficácia e excelência em atendimento de sempre.</p>
            
            <p> &nbsp&nbsp Utilizamos o que existe de melhor em tecnologia e 
            resistência aos nossos produtos, gerando equipamentos duráveis e 
            práticos.</p>

            <p> &nbsp&nbsp Desenvolvimento e crescimento com responsabilidade e 
            dinamismo é o foco da nossa empresa. Atendimento especial, ótima 
            relação custo x benefício e evolução direta em todos os setores 
            representam o controle de qualidade dos padrões Studio 141.</p>

            <p> &nbsp&nbsp Nosso intuito é auxiliar os artistas no seu ambiente 
            natural, o palco, sem tentar disputar a atenção do público e 
            acompanhá-los aonde forem, por isso nosso lema é com você nos palcos.</p>
            
            <br>
            <br>
            
            <h2>Missão, visão e valores</h2>
            <h3>Missão</h3> 
            <p> &nbsp&nbsp Desenvolver acessórios de qualidade para atender as necessidades 
            de todos os tipos de músicos do Brasil e do mundo agregando conforto 
            e praticidade em suas atividades.</p>
            
            <br>
            
            <h3>Visão</h3>
            <p> &nbsp&nbsp Pesquisar e produzir tecnologia voltada para a segurança e 
            eficiência no uso diário de seus produtos.</p>

            <br>
            
            <h3>Valores</h3> 
            <p> &nbsp&nbsp Comunicação, organização, ética, transparência, efetividade, 
            competência, simpatia e sustentabilidade.</p>

        </main>
           
        
        <footer>
            <img src="Logo-Studio.png" alt="Logo Studio" class="logo">
        </footer>
        
    </body>


</html>