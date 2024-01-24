<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="ecommerce_web.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .imgProducto {
            height: 200px;
            width: 200px;
        }
    </style>
    <h1>Favoritos</h1>

    <p>Tus articulos Favoritos..</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repRepeater" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top imgProducto" alt="Imagen del Producto">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Nombre") %></h5>
                            <p class="card-text">Código: <%#Eval("Codigo") %></p>
                            <p class="card-text"><%#Eval("Descripcion") %></p>
                            <p class="card-text">Marca: <%#Eval("Marca.Descripcion") %></p>
                            <p class="card-text">Categoría: <%#Eval("Categoria.Descripcion") %></p>
                            <p class="card-text">Precio: $<%#Eval("Precio") %></p>
                            <a href="ProductoDetalle.aspx?id=<%#Eval("Id") %>">Ver Detalle</a>
                            <asp:Button ID="btnEliminarFav" CssClass="btn" runat="server" Text="❌"
                              CommandName="ArticuloId" CommandArgument='<%#Eval("Id") %>' AutoPostBack="true"  OnClick="btnEliminarFav_Click"  />
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
