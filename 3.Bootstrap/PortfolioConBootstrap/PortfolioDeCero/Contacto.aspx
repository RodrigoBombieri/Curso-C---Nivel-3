<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="PortfolioDeCero.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <nav class="navbar navbar-expand-lg  bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">CONTACTO</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Default.aspx">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="About.aspx">Sobre Mi</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Proyectos.aspx">Proyectos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <main class="mainContacto">
        <div class="container">
            <div class="row">
                <div class="col-2"></div>
                <div class="col">
                    <h1 class="titulo-centrado">Formulario de Contacto</h1>
                    <div class="mb-3">
                        <asp:Label ID="lblNombre" CssClass="form-label" runat="server" Text="Nombre y Apellido:"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Juan Roman Riquelme" required="true"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="lblEmail" CssClass="form-label" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txtEmail" type="email" runat="server" CssClass="form-control" placeholder="name@example.com" required="true"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="lblTelefono" CssClass="form-label" runat="server" Text="Telefono "></asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" placeholder="01122001100" required="true"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="lblMensaje" CssClass="form-label" runat="server" Text="Mensaje "></asp:Label>
                        <asp:TextBox ID="txtMensaje" runat="server" CssClass="form-control" placeholder="Escribe aqui lo que quieras" required="true"></asp:TextBox>
                    </div>

                </div>
                <div class="col-2"></div>
            </div>
        </div>
        <div class="text-center">
            <asp:Button ID="btnEnviar" CssClass="btn btn-primary" runat="server" Text="Enviar" />
        </div>
    </main>
</asp:Content>
