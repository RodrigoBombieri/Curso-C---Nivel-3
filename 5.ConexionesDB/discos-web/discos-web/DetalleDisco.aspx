<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetalleDisco.aspx.cs" Inherits="discos_web.DetalleDisco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalles de Discos</h1>
    <div class="row">
        <% foreach (dominioD.Disco disco in listaDiscos)
            { %>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">
                    <img src="<%: disco.UrlImagenTapa %>" class="card-img-top" alt=".." />
                    <div class="card-body">
                        <h5 class="card-title"><%: disco.Titulo %></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">Cantidad de Canciones: <%: disco.CantidadCanciones %></p>
                        <p class="card-text">Estilo: <%: disco.Estilo.Descripcion %></p>
                        <p class="card-text">Edición: <%: disco.Edicion.Descripcion %></p>
                        <a href="Favoritos.aspx?id=<%: disco.Id %>" style="text-decoration: none;
                         font-size: 25px; color: darkcyan;" title="Agregar a Favoritos!"> ★ </a>
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
