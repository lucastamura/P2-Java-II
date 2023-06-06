<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Novo Jogo</title>
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
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        button[type="submit"] {
            padding: 8px 12px;
            text-decoration: none;
            color: #fff;
            background-color: #5cb85c;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }
        
        button[type="submit"]:hover {
            background-color: #449d44;
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
    </style>
</head>
<body>
<div class="container">
    <h1>Novo Jogo</h1>
    <a href="/jogo/list" method="post" class="btn btn-primary">Voltar</a>
    <hr>
    <form action="/jogo/insert" method="post">
        <div class="form-group">
            <label for="titulo">Titulo</label>
            <input type="text" name="titulo" class="form-control">
            <br>
            <label for="isbn">Ano de Lançamento</label>
            <input type="number" name="anoDeLancamento" class="form-control">
        </div>
        <br>
        <button type="submit" class="btn btn-success">Salvar</button>
    </form>
</div>
</body>
</html>
