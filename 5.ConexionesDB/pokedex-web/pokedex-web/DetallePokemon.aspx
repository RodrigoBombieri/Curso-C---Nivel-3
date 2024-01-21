<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetallePokemon.aspx.cs" Inherits="pokedex_web.DetallePokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .custom-card {
            width: 500px;
            height: 500px;
            transition: transform 0.2s;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 8px;
            overflow: hidden;
        }

            .custom-card:hover {
                transform: scale(1.05);
                box-shadow: 0 0 10px rgb(245, 183, 177);
            }

        .card-title,
        .card-text {
            margin-bottom: 8px;
            font-size: 20px;
        }

        .btn-favorite {
            text-decoration: none;
            font-size: 40px;
            color: darkcyan;
        }

            .btn-favorite:hover {
                color: gold;
            }

        .imagenPoke {
            width: 400px;
            height: 400px;
        }

        .imagenPoke2 {
            width: 100px;
            height: 60px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle Pokemons</h1>
    <div class="row">
        <% foreach (dominioP.Pokemon poke in listaPokemon)
            { %>
        <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="mb-3 custom-card">
                <div class="card">

                    <img src="<%: poke.UrlImagen %>" class="card-img-top imagenPoke" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: poke.Nombre %></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
            <div class="mb-3 custom-card">
                <div class="card">
                    <div class="card-body imagenPoke">
                        <p class="card-text"><strong>Número:</strong> <%: poke.Numero %> </p>
                        <p class="card-text"><strong>Descripcion:</strong> <%: poke.Descripcion %></p>
                        <p class="card-text"><strong>Tipo:</strong> <%: poke.Tipo.Descripcion %></p>
                        <p class="card-text"><strong>Debilidad:</strong> <%: poke.Debilidad.Descripcion %></p>
                        <a href="Favoritos.aspx?id=<%: poke.Id %>" class="btn-favorite"
                            title="Agregar a Favoritos!">★ </a>
                        <img src="<%: ObtenerRutaImagenTipo(poke.Tipo.Descripcion) %>" class="imagenPoke2" alt="<%: poke.Tipo.Descripcion %>">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <% } %>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Button ID="btnVolver" CssClass="btn btn-primary" OnClick="btnVolver_Click" runat="server" Text="Volver" />
            </div>
        </div>
    </div>
</asp:Content>
