<%-- 
    Document   : login
    Created on : 13 de jun de 2020, 13:08:29
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
        <form method="post" action="LoginServlet">
            <h2 style="color: red"><c:out value="${msgErro}"/></h2>

            <table>
                <tr>
                    <th>Login: </th>
                    <td><input type="text" name="usuario"/></td>
                </tr>
                <tr>
                    <th>Senha: </th>
                    <td><input type="password" name="senha" /></td>
                </tr>
                <tr>
                    <td colspan="2"> 
                        <input type="submit" name="btnLogin" value="Entrar"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
