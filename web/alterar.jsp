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
        <h1>ALTERAR</h1>
        <br>
        
        <form action="AlterarCarro" method="post">
            Insira o ID  a ser alterado:
            <input type="text" name="id" /><br>
            <br>
            Insira os dados a serem atualizados: <br>
            Marca: <input type="text" name="marca" /><br />
            Modelo: <input type="text" name="modelo" /><br />
            Ano: <input type="text" name="ano" /><br />
            Valor: <input type="text" name="valor" /><br />
            
            <input type="submit" value="Gravar" />
        </form>
    </body>
</html>
