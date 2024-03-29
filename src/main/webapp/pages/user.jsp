<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="../assets/icones/pngwing.com.png" type="image/svg+xml">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/pages/styles/user.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/user.css">
    <script type="text/javascript">
        function expandirElemento(element) {
            var elementos = document.querySelectorAll('.profile > div');
            elementos.forEach(function(el) {
                el.classList.remove('expanded');
            });

            element.classList.add('expanded');
        }

        function itemUm(element) {
            expandirElemento(element);
        }

        function itemDois(element) {
            expandirElemento(element);
        }

        function itemTres(element) {
            expandirElemento(element);
        }
    </script>
    <title>User Profile</title>
</head>
<body>
<section class="profile">
    <div class="item1" onclick="itemUm(this);">
        <div class="titulo">
            <h1>DADOS</h1>
        </div>
        <div class="dados">
            <img src="../assets/icones/pngwing.com.png" alt="Foto" width="100px" style="border-radius: 50%; border: 1px solid black; margin-bottom: 20px;">
            <span>ID: ${userData.id}</span>
            <span>NOME: ${userData.nome}</span><br>
            <span>NASCIMENTO: ${userData.dataNascimento}</span><br>
            <span>EMAIL: ${userData.email}</span><br>
            <span>RUA: ${userData.logradouro}</span><br>
            <span>CIDADE: ${userData.cidade}</span><br>
            <span>CEP: ${userData.cep}</span><br>
            <span>ESTADO: ${userData.estado}</span><br>
        </div>
    </div>
    <div class="item2" onclick="itemDois(this);">
        <div>
            <h1>SOBRE</h1>
        </div>
    </div>
    <div class="item3" onclick="itemTres(this);">
        <div>
            <h1>EXAMES</h1>
        </div>
    </div>
</section>
</body>
</html>