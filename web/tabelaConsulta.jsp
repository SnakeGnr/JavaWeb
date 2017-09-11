<%-- 
    Document   : tabelaConsulta
    Created on : 18/08/2017, 09:35:23
    Author     : SnakeGnr
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Carro"%>
<%@page import="Model.CarroDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
        <h1>Tabela Carros</h1>
        <table border ="1">
            <tr>
             <th>Codigo</th>   
             <th>Marca</th>   
             <th>Modelo</th>   
             <th>Ano</th>
             <th>Valor</th>
             <th></th>
            </tr>
            
            
              <% CarroDao dao = new CarroDao(); 
        List<Carro> car = dao.consulta();
        
        for(Carro c: car){
            %>
            <tr>
                <td><%=c.getId()%></td>
            <td><%=c.getMarca()%></td>
            <td><%=c.getModelo()%></td>
            <td> <%=c.getAno()%> </td>
            <td> <%=c.getValor()%> </td>
            <td> <a href="">Excluir</a>
            </tr>
        <%
            }
        %>   
            

        </table>

    </body>
</html>
