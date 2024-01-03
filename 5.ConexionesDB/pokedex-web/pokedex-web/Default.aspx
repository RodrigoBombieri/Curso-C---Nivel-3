<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pokedex_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste al pokedex web, tu lugar pokemon...</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% foreach (dominioP.Pokemon poke in ListaPokemon)
            { %>
        <div class="col">
            <div class="card">
                <img src="<%: poke.UrlImagen %>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><%: poke.Nombre %></h5>
                    <p class="card-text"><%:poke.Descripcion %></p>
                    <a href="DetallePokemon.aspx?id=<%: poke.Id %>">Ver detalle</a>
                </div>
            </div>
        </div>
        <%  } %>
    </div>
</asp:Content>
