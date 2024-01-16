<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ecommerce_web.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .imgProducto {
            height: 200px;
            width: 200px;
        }
    </style>
    <h1>BOOMCommerce WEB</h1>
    <p>Bienvenido al Ecommerce Web de Bomba..</p>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <!-- FOREACH -->
        <%--<%foreach (dominio.Articulo articulo in listaProductos)
        { %>
    <div class="col">
        <div class="card">
            <img src="<%: articulo.UrlImagen %>" class="card-img-top imgProducto" alt="Imagen del Producto">
            <div class="card-body">
                <h5 class="card-title"><%: articulo.Nombre %></h5>
                <p class="card-text">Código: <%: articulo.Codigo %></p>
                <p class="card-text"><%: articulo.Descripcion %></p>
                <p class="card-text">Marca: <%: articulo.Marca.Descripcion %></p>
                <p class="card-text">Categoría: <%: articulo.Categoria.Descripcion %></p>
                <p class="card-text">Precio: $<%: articulo.Precio %></p>
                <a href="ProductoDetalle.aspx?id=<%: articulo.Id %>">Ver Detalle</a>
            </div>
        </div>
    </div>
    <%  } %>--%>

        <!-- REPEATER -->
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
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
