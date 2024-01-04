<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductosListaForeach.aspx.cs" Inherits="ecommerce_web.ProductosListaForeach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .imgProducto {
            height: 100px;
            width: 100px;
        }
    </style>

    <h1>Lista de Productos con FOREACH</h1>

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%foreach (dominio.Articulo articulo in listaProductos)
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
                </div>
            </div>
        </div>
        <%  } %>
    </div>
</asp:Content>
