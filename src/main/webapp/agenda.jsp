<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
    @SuppressWarnings("unchecked")
    ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <title>Agenda de contatos</title>
    <link rel="icon" href="imagens/favicon.png">
    <link rel="stylesheet" href="Newpast.css">
    
</head>
<body>
    <h1 class="topo">Agenda de Contatos</h1>
    <a href="novo.html" class="contactnew">Novo contato</a>
    <table id="tabela">
        <thead>
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Fone</th>
                <th>E-mail</th>
                <th>Opções</th>
            </tr>
        </thead>
        <tbody>
        <% if (lista != null) { %>
            <% for (int i = 0; i < lista.size(); i++) { %>
                <tr>
                    <td><%=lista.get(i).getIdcon()%></td>
                    <td><%=lista.get(i).getNome()%></td>
                    <td><%=lista.get(i).getFone()%></td>
                    <td><%=lista.get(i).getEmail()%></td>
                    <td>
                        <a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="button-primary">Editar</a>
                        <a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class="button-secondary">Excluir</a>
                    </td>
                </tr>
            <% } %>
        <% } %>
        </tbody>
    </table>
    <script src="scripts/confirmador.js"></script>
</body>
</html>
