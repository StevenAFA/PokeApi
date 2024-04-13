<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pokemones.aspx.cs" Inherits="pokeApi.PokeVista.Pokemones" Async="true" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <title>Pokedex</title>
    <style>
        
        body {
            background-image: url('https://pm1.aminoapps.com/6217/c20f798e4c5829503e2827350df3a55be31110a8_hq.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-img-top {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            object-fit: contain;
            height: 200px; 
            width: 100%;
        }
        .card-title {
            text-align: center;
        }
        h2 {
            font-family: 'Arial', sans-serif;
            font-size: 36px; 
            font-weight: bold;
            color: #F9F9F9; 
            text-align: center;
            margin-top: 20px; 
            margin-bottom: 10px; 
            cursor: pointer; /* Cambia el cursor a una mano cuando se pasa sobre el título */
        }
        h2:hover {
            text-decoration: underline; /* Subraya el título cuando se pasa sobre él */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <!-- Enlace al archivo main.aspx -->
            <h2 onclick="window.location.href='main.aspx'">Pokedex</h2>
            <div class="row row-cols-1 row-cols-md-4 g-4">
                <asp:Repeater ID="Repeater" runat="server">
                    <ItemTemplate>
                        <div class="col">
                            <div class="card h-100">
                                <img class="card-img-top" src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>'>
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Name") %></h5>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <asp:Label ID="resultLabel" runat="server" />
        </div>
    </form>
</body>
</html>
