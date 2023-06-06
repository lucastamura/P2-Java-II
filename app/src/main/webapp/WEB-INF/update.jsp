<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Atualizar Jogo</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Atualizar Jogo</h1>
            <a href="/jogo/list" class="btn btn-primary">Voltar</a>
            <form action="/jogo/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}" />
                <div class="form-group">
                    <label for="titulo">TíTulo</label>
                    <input type="text" name="titulo" class="form-control" value="${jogo.titulo}" />
                </div>
                <div class="form-group">
                    <label for="anoDeLancamento">Ano de Lançamento</label>
                    <input type="number" name="anoDeLancamento" class="form-control" value="${jogo.anoDeLancamento}" />
                </div>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>
