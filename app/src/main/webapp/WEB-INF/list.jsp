<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="./favicon.png">
    <title>Lista de Jogos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        
        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        
        .btn {
            display: inline-block;
            padding: 8px 12px;
            margin-right: 5px;
            text-decoration: none;
            color: #fff;
            background-color: #337ab7;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }
        
        .btn.btn-primary {
            background-color: #337ab7;
        }
        
        .btn.btn-primary:hover {
            background-color: #286090;
        }
        
        .btn.btn-warning {
            background-color: #f0ad4e;
        }
        
        .btn.btn-warning:hover {
            background-color: #ec971f;
        }
        
        .btn.btn-danger {
            background-color: #d9534f;
        }
        
        .btn.btn-danger:hover {
            background-color: #c9302c;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Jogos</h1>
    <hr>
    <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
    <hr>
    <table>
        <tr>
            <th>Id</th>
            <th>Título</th>
            <th>Ano de Lançamento</th>
            <th>&nbsp;</th>
        </tr>
        <c:forEach var="item" items="${jogo}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.anoDeLancamento}</td>
                <td>
                    <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                    <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
