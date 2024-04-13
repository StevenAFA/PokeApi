<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="pokeApi.PokeVista.main" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Welcome</title>
    <style>
        body {
            background-image: url('https://i.blogs.es/82d7ef/pokemon/1366_2000.jpeg');
            background-size: contain;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .title {
            font-size: 3rem;
            color: #fff;
            margin-bottom: 20px;
            text-align: center;
        }

        .btn-start {
            font-size: 1.5rem;
            padding: 12px 36px;
            background-color: #ffcc00;
            border: 2px solid #ffd700;
            border-radius: 50px; /* Hace que el borde del botón sea redondeado */
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease, border-color 0.3s ease;
        }

        .btn-start:hover {
            background-color: #ffd700;
            border-color: #ffcc00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="welcome-container">
            <button type="button" class="btn btn-start" onclick="window.location.href='Pokemones.aspx'">Pokedex</button>
        </div>
    </form>
</body>
</html>