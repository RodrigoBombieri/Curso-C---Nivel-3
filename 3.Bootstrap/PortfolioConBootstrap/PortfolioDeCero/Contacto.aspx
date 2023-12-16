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
        <section>
        </section>
        <h1 class="titulo-centrado">Formulario de Contacto</h1>

        <section class="sectionContacto">
                        
                <asp:Label ID="lblNombre" runat="server" Text="Nombre y Apellido: ">
                </asp:Label>    
                <asp:TextBox ID="nombre" runat="server" required="true"></asp:TextBox>       

                <br>
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>            
                <asp:TextBox ID="email" runat="server" required="true"></asp:TextBox>
            
                <br>
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono: "></asp:Label>             
                <asp:TextBox ID="telefono" runat="server" required="true"></asp:TextBox>

                <br>
            
            <textarea name="consulta" id="textAreaConsulta" cols="30" rows="10" required></textarea>
                <br>
            <button id="btnEnviar">Enviar</button>

            <br>
            <p id="textoResultado"></p>
            <br>
            </section>
        </main>
</asp:Content>
