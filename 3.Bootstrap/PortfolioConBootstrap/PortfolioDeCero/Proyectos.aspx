<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="PortfolioDeCero.Proyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <nav class="navbar navbar-expand-lg  bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">PROYECTOS</a>
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
                            <a class="nav-link" href="Contacto.aspx">Contacto</a>
                        </li>
                    </ul>
                </div>
            </div>
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
