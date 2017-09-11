<%-- 
    Document   : remove
    Created on : 04/05/2016, 14:28:23
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
        <h2>REMOVER</h2>
      
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
        <form action="RemoverCarro" method="post">
            Insira o ID do Carro  <br>
            que deseja Excluir: <input type="text" name="id" /><br />

            <input type="submit" value="Excluir" />
        </form>
        <br>
        <br>
        
        <table border='1'>
            <tr> 
                <th>ID</th>
                <th>Marca</th>
                <th>Modelo</th>

            </tr>
            <% CarroDao dao = new CarroDao();
                List<Carro> car = dao.consulta();

                for (Carro c : car) {
            %>
            <tr>
                <td><%=c.getId()%></td>
                <td><%=c.getMarca()%></td>
                <td><%=c.getModelo()%></td>

            </tr>  
            <% }%>     
        </table>

        <br>
        <br>

    </body>
</html>
