<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiscosListaForeach.aspx.cs" Inherits="discos_web.DiscosListaForeach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Discos usando FOREACH</h1>


    <div class="row row-cols-1 row-cols-md-3 g-4">
        <% foreach (dominioD.Disco disco in listaDiscos)
            { %>

        <div class="col">
            <div class="card">
                <img src="<%: disco.UrlImagenTapa %>" class="card-img-top" alt="Tapa del disco">
                <div class="card-body">
                    <h5 class="card-title"><%: disco.Titulo %></h5>
                    <p class="card-text">Cantidad de Canciones: <%: disco.CantidadCanciones %></p>
                    <p class="card-text">Estilo: <%: disco.Estilo.Descripcion %></p>
                    <p class="card-text">Edicion: <%: disco.Edicion.Descripcion %></p>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</asp:Content>
