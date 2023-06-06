<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Excluir Jogo</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
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
        
        p {
            text-align: center;
            margin-bottom: 20px;
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
    <h1>Excluir Jogo</h1>
    <hr>
    <a href="/jogo/list" class="btn btn-primary">Voltar</a>
    <hr>
    <p>Deseja remover o jogo <strong>"${jogo.titulo}"</strong>?</p>
    <form action="/jogo/delete" method="post">
        <input type="hidden" name="id" value="${jogo.id}" />
        <button type="submit" class="btn btn-danger">Excluir</button>
    </form>
</div>
</body>
</html>
