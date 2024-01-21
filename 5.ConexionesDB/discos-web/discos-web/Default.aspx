<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="discos_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola!</h1>
    <p>Llegaste a Discos web, tu lugar musical..</p>
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <!-- FOREACH -->

        <%--<% foreach (dominioD.Disco disco in listaDiscos)
        { %>

    <div class="col">
        <div class="card">
            <img src="<%: disco.UrlImagenTapa %>" class="card-img-top" alt="Tapa del disco">
            <div class="card-body">
                <h5 class="card-title"><%: disco.Titulo %></h5>
                <p class="card-text">Cantidad de Canciones: <%: disco.CantidadCanciones %></p>
                <p class="card-text">Estilo: <%: disco.Estilo.Descripcion %></p>
                <p class="card-text">Edicion: <%: disco.Edicion.Descripcion %></p>
                <a href="DetalleDisco.aspx?id=<%:disco.Id %>">Ver Detalle</a>
            </div>
        </div>
    </div>
    <% } %>--%>

        <!-- REPEATER -->
        <asp:Repeater ID="repRepeater" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagenTapa") %>" class="card-img-top" alt="Tapa del disco">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Titulo") %></h5>
                            <a href="DetalleDisco.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>

</asp:Content>
