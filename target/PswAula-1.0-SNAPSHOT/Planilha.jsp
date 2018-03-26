<%-- 
    Document   : Planilha
    Created on : 26/03/2018, 16:21:27
    Author     : Matheus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.cefetrj.psw.trabalho.Aluno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            ArrayList<Aluno> alunos = new ArrayList();
            alunos = (ArrayList)request.getAttribute("aluno");            
        %>
            
        
        <table border = "1px solid black">
            <th> Aluno </th>
            <th> Frequencia </th>
            <th> P1 </th>
            <th> Trabalho </th>
            <th> Projeto </th>
            <th> PF </th>
            <th> Situacao </th>
            
            
            
                <%
                    for(int i = 0; i < alunos.size(); i++){
                %>
                <tr>
                <td><%= alunos.get(i).getNome() %></td>
                <td><%= alunos.get(i).getFrequencia() %></td>
                <td><%= alunos.get(i).getP1() %></td>
                <td><%= alunos.get(i).getTrabalho() %></td>
                <td><%= alunos.get(i).getProjeto() %></td>
                <td><%= alunos.get(i).getPF() %></td>
                <td><%= alunos.get(i).getSituacao() %></td>
                </tr>
                <%
                    }
                %>
                <input type ="submit" id ="botao" value="Voltar" onclick="location.href='http://localhost:8080/mavenproject2/Formulario.jsp'">
        </table>
    </body>
</html>
