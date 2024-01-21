<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductoDetalle.aspx.cs" Inherits="ecommerce_web.ProductoDetalle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle Producto</h1>

    <div class="row">
        <%foreach (dominio.Articulo articulo in ListaArticulos)
            { %>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">
                    <img src="<%: articulo.UrlImagen %>" class="card-img-top" alt=".." />
                    <div class="card-body">
                        <h5 class="card-title"><%: articulo.Nombre %></h5>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <div class="card">
                    <div class="card-body">
                        <p class="card-text">Código: <%: articulo.Codigo %></p>
                        <p class="card-text">Descripcion: <%: articulo.Descripcion %></p>
                        <p class="card-text">Marca: <%: articulo.Marca.Descripcion %></p>
                        <p class="card-text">Categoria: <%: articulo.Categoria.Descripcion %></p>
                        <p class="card-text">Precio: <%: articulo.Precio %></p>
                        <a href="Favoritos.aspx?id=<%: articulo.Id %>" style="text-decoration:none;
                           font-size: 25px; color:darkcyan;" title="Agregar a Favoritos!"> ★ </a>
                    </div>
                </div>
            </div>
        </div>

        <% } %>
    </div>
    <div class="col-6">
        <div class="mb-3">
            <asp:Button ID="btnVolver" CssClass="btn btn-primary" OnClick="btnVolver_Click" runat="server" Text="Volver" />
        </div>
    </div>

</asp:Content>
