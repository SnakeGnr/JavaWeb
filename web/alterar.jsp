<%-- 
    Document   : alterar
    Created on : 04/05/2016, 16:11:53
    Author     : SnakeGnr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>ALTERAR</h2>
        
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
        
        <form action="AlterarCarro" method="post">
            Insira o ID  a ser alterado:
            <input type="text" name="id" /><br>
            <br>
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
            
            <input type="submit" value="Gravar" />
        </form>
    </body>
</html>
