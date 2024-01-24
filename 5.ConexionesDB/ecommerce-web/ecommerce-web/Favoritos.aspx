<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="ecommerce_web.Favoritos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        p {
            color: #555;
            text-align: center;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .col {
            width: 32%;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .card {
            border: 1px solid #ccc;
            border-radius: 8px;
            overflow: hidden;
        }

        .card-img-top {
            width: 100%;
            height: auto;
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .card-text {
            margin-bottom: 10px;
        }

        .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-right: 10px;
        }

        .btn:hover {
            background-color: #0056b3;
            text-decoration: none;
        }

        .imgProducto {
            height: 200px;
            width: 200px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Favoritos</h1>
        <p>Tus artículos Favoritos..</p>

        <div class="row">
            <asp:Repeater ID="repRepeater" runat="server">
                <ItemTemplate>
                    <div class="col">
                        <div class="card">
                            <img src="<%#Eval("UrlImagen") %>" class="card-img-top imgProducto mx-auto d-block" alt="Imagen del Producto">
                            <div class="card-body">
                                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                <p class="card-text">Código: <%#Eval("Codigo") %></p>
                                <p class="card-text"><%#Eval("Descripcion") %></p>
                                <p class="card-text">Marca: <%#Eval("Marca.Descripcion") %></p>
                                <p class="card-text">Categoría: <%#Eval("Categoria.Descripcion") %></p>
                                <p class="card-text">Precio: $<%#Eval("Precio", "{0:F2}") %></p>
                                <a href="ProductoDetalle.aspx?id=<%#Eval("Id") %>" class="btn">Ver Detalle</a>
                                <asp:Button ID="btnEliminarFav" CssClass="btn" runat="server" Text="❌"
                                    CommandName="ArticuloId" CommandArgument='<%#Eval("Id") %>'  OnClick="btnEliminarFav_Click" />
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

