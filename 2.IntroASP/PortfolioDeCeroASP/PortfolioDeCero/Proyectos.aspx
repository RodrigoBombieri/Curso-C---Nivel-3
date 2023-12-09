<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="PortfolioDeCero.Proyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
     <h3> ✅ Rodrigo Sebastián Bombieri </h3>
     <nav class="menuSecciones">
         <ul>
             <li><a href="Default.aspx">Inicio</a></li>
             <li><a href="About.aspx">Sobre Mi</a></li>
             <li><a href="Contacto.aspx">Contacto</a></li>
         </ul>
     </nav>
 </header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="tres">
        <h2>Mis Proyectos</h2>
        <div class="proyectos">
            <div class="card">
                <h3>Weather App</h3>
                <img src="img/weather-app.png" alt="maxiprograma.com">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/weatherApp" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Calculadora</h3>
                <img src="img/calculadora.png" alt="Maxi Programa en YouTube">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/ArgentinaPrograma/tree/main/Calculadora" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Ecommerce</h3>
                <img src="img/ecommerce.png" alt="Campus Virtual Maxi Programa">
                <p>
                    App de escritorio desarrollada con C# .Net y SQL Server.
                </p>
                <a href="https://github.com/RodrigoBombieri/app-E-commerce/tree/main/MiPrimerApp" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Página Réplica Coca Cola</h3>
                <img src="img/coca_cola.png" alt="Campus Virtual Maxi Programa">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/PaginaCocaC" target="_blank">Ver</a>
            </div>
        </div>
    </section>
    <section class="cuatro">
        <div class="proyectos">
            <div class="card">
                <h3>Weather App</h3>
                <img src="img/weather-app.png" alt="maxiprograma.com">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/weatherApp" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Calculadora</h3>
                <img src="img/calculadora.png" alt="Maxi Programa en YouTube">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/ArgentinaPrograma/tree/main/Calculadora" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Ecommerce</h3>
                <img src="img/ecommerce.png" alt="Campus Virtual Maxi Programa">
                <p>
                    App de escritorio desarrollada con C# .Net y SQL Server.
                </p>
                <a href="https://github.com/RodrigoBombieri/app-E-commerce/tree/main/MiPrimerApp" target="_blank">Ver</a>
            </div>
            <div class="card">
                <h3>Página Réplica Coca Cola</h3>
                <img src="img/coca_cola.png" alt="Campus Virtual Maxi Programa">
                <p>
                    Desarrollada con HTML, CSS y Javascript.
                </p>
                <a href="https://github.com/RodrigoBombieri/PaginaCocaC" target="_blank">Ver</a>
            </div>
        </div>
    </section>
</asp:Content>
