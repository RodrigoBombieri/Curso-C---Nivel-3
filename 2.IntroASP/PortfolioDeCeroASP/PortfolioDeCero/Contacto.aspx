<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="PortfolioDeCero.Contacto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <header>
    <h3> ✅ Rodrigo Sebastián Bombieri </h3>
    <nav class="menuSecciones">
        <ul>
            <li><a href="Default.aspx">Inicio</a></li>
            <li><a href="About.aspx">Sobre Mi</a></li>
            <li><a href="Proyectos.aspx">Proyectos</a></li>
        </ul>
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
                <input type="text" name="nombre" id="nombre" required>

                <br>
                <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>            
                <input type="email" name="email" id="email" required>
                <br>
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono: "></asp:Label>             
                <input type="text" name="telefono" id="telefono" required>

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
