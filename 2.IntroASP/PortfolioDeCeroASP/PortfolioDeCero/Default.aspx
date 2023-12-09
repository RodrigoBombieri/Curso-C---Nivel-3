<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioDeCero.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <h3> ✅ Rodrigo Sebastián Bombieri </h3>
    </header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="uno">
        <div class="caja-central">
            <div class="caja-cara">
                <img class="cara" src="img/IMG_20230323_114543725.jpg" alt="Rodrigo Bombieri">            
            </div>
            <div class="caja-presentacion">
                <div>    
                    <h1>Hola 💣</h1>
                    <p class="presentacion">
                        Mi nombre es Rodrigo y soy estudiante de programación.
                    </p>
                </div>
            </div>
        </div>
            <div class="navItems">
                <ul>
                    <li> <a class="nav-link" runat="server" href="~/About.aspx">Sobre Mi</a> </li>
                    <li> <a class="nav-link" runat="server" href="~/Proyectos.aspx">Proyectos</a> </li>
                    <li> <a class="nav-link" runat="server" href="~/Contacto.aspx">Contacto</a> </li>
                </ul>
            </div>
    </section>
</asp:Content>
