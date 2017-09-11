<%-- 
    Document   : cadastro
    Created on : 13/04/2016, 16:52:44
    Author     : SnakeGnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/aula2.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro</title>
    </head>
    <body>
        <h2> Cadastro de Carros</h2>
        <div class="MenuBotoes"> 
            <a href='index.jsp'><input type="button" value="Home"></a>
            <a href='cadastro.jsp'><input type="button" value="Cadastrar"></a>
            <a href='consulta.jsp'><input type="button" value="Consultar"></a>
            <a href='alterar.jsp'><input type="button" value="Alterar"></a>
            <a href='remove.jsp'><input type="button" value="Remover"></a>

        </div>
        <br>
        <br>
        <br>

        <form action="AdicionaCarro" method="post">
            <table>
                <tr>   
                    <td> Marca:</td> <td>  <input type="text" name="marca" /></td>
                </tr>
                <tr> 
                    <td> Modelo:</td> <td> <input type="text" name="modelo" /></td>
                </tr>
                <tr>
                    <td> Ano: </td> <td><input type="text" name="ano" /></td>
                </tr>
                <tr> 
                    <td> Valor: </td> <td> <input type="text" name="valor" /></td>
                </tr>
            </table>
            <br>

            <span> <input type="submit" value="Gravar" style="background-color: green" /> </span>
            <a href="index.jsp"> <input type="button" value="Cancelar" style="background-color: red" /> </a>

        </form>

    </body>
</html>
