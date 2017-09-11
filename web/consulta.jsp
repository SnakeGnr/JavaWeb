<%-- 
    Document   : consulta
    Created on : 27/04/2016, 15:02:06
    Author     : SnakeGnr
--%>

<%@page import="java.util.List"%>
<%@page import="Model.CarroDao"%>
<%@page import="Model.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Carros</title>
    </head>
    <body>
        <h3>Carros Cadastrados: </h3>
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
        <table border='1'>
            <tr> 
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Ano</th>
                <th>Valor</th>
                <th>Editar</th>
                <th>Excluir</th>

            </tr>
            <% CarroDao dao = new CarroDao();
                List<Carro> car = dao.consulta();

                for (Carro c : car) {
            %>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getMarca()%></td>
                <td><%=c.getModelo()%></td>
                <td><%=c.getAno()%></td>    
                <td><%=c.getValor()%></td>
                <td><input type="button" value="Editar"> </td>
                <td><input type="button" value="Excluir"> </td>
            </tr>  
            <% }%>     
        </table>


    </body>
</html>
