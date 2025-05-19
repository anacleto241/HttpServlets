<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Java Servlets - Testes HTTP</title>

    <!-- Bootstrap 5 via CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container py-5">
    <h1 class="mb-4 text-center">Testes com Servlets HTTP</h1>

    <div class="row row-cols-1 row-cols-md-2 g-4">

        <div class="col">
            <div class="card border-primary">
                <div class="card-body">
                    <h5 class="card-title">Análise de Cabeçalhos</h5>
                    <p class="card-text">Exibe os cabeçalhos da requisição atual.</p>
                    <a href="headers" class="btn btn-primary">Abrir</a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card border-success">
                <div class="card-body">
                    <h5 class="card-title">Corpo da Requisição (POST)</h5>
                    <p class="card-text">Envia um formulário para exibir os dados enviados via POST.</p>
                    <form action="request-body" method="post">
                        <div class="mb-2">
                            <input type="text" name="nome" class="form-control" placeholder="Nome" required>
                        </div>
                        <div class="mb-2">
                            <input type="email" name="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="mb-2">
                            <textarea name="mensagem" class="form-control" placeholder="Mensagem" rows="2" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-success">Enviar</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card border-warning">
                <div class="card-body">
                    <h5 class="card-title">Sessão e Cookies</h5>
                    <p class="card-text">Manipula cookies e mostra mensagem de boas-vindas.</p>
                    <a href="session" class="btn btn-warning">Abrir</a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card border-danger">
                <div class="card-body">
                    <h5 class="card-title">Testes de Status HTTP</h5>
                    <p class="card-text">Força o retorno de um código de status via parâmetro.</p>
                    <a href="status?code=200" class="btn btn-outline-danger me-2">200 OK</a>
                    <a href="status?code=404" class="btn btn-outline-danger me-2">404 Not Found</a>
                    <a href="status?code=500" class="btn btn-outline-danger">500 Internal Error</a>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card border-secondary">
                <div class="card-body">
                    <h5 class="card-title">Métodos Suportados (OPTIONS)</h5>
                    <p class="card-text">Exibe os métodos HTTP suportados pelo servidor.</p>
                    <form action="methods" method="options">
                        <button type="submit" class="btn btn-secondary">Enviar Requisição OPTIONS</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>


</body>
</html>
