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
        <h1>Cadastro de Carro</h1>
        
        <form action="AdicionaCarro" method="post">
            Marca: <input type="text" name="marca" /><br />
            Modelo: <input type="text" name="modelo" /><br />
            Ano: <input type="text" name="ano" /><br />
           
           Valor: <input type="text" name="valor" /><br />

            <input type="submit" value="Gravar" />
        </form>
        
    </body>
</html>
