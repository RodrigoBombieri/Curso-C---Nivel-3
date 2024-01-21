<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetallePokemon.aspx.cs" Inherits="pokedex_web.DetallePokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle Pokemons</h1>
    <div class="row">
        <% foreach (dominioP.Pokemon poke in listaPokemon)
            { %>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">

                    <img src="<%: poke.UrlImagen %>" class="card-img-top imagenPoke" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: poke.Nombre %></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">Número: <%: poke.Numero %> </p>
                        <p class="card-text">Descripción: <%: poke.Descripcion %></p>
                        <p class="card-text">Tipo: <%: poke.Tipo.Descripcion %></p>
                        <p class="card-text">Debilidad: <%: poke.Tipo.Descripcion %></p>
                        <a href="Favoritos.aspx?id=<%: poke.Id %>" style="text-decoration: none; font-size: 25px; color: darkcyan" title="Agregar a Favoritos!">★ </a>
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
