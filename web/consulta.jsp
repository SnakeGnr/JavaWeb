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
        <h1>Carros Cadastrados: </h1>
        
        <% CarroDao dao = new CarroDao(); 
        List<Carro> car = dao.consulta();
        
        for(Carro c: car){
            %>
            <li><%=c.getId()%>|
            <%=c.getMarca()%>|
            <%=c.getModelo()%>|
            <%=c.getAno()%>|
            <%=c.getValor()%>|</li>
        <%
            }
        %>     
            
    </body>
</html>
