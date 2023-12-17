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
    <h1 class="text-center">Mis Proyectos</h1>
    <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4" aria-label="Slide 5"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="5" aria-label="Slide 6"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="6" aria-label="Slide 7"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="7" aria-label="Slide 8"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:HyperLink ID="hypWeatherApp" NavigateUrl="https://github.com/RodrigoBombieri/weatherApp" runat="server">
                    <asp:Image ID="imgWeatherApp" src="img/weather-app.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none ">
                    <h5>App del Tiempo</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypCalculadora" NavigateUrl="https://github.com/RodrigoBombieri/ArgentinaPrograma/tree/main/Calculadora" runat="server">
                    <asp:Image ID="imgCalculadora" src="img/calculadora.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Calculadora</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypEcommerce" NavigateUrl="https://github.com/RodrigoBombieri/app-E-commerce/tree/main/MiPrimerApp" runat="server">
                    <asp:Image ID="imgEcommerce" src="img/ecommerce.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Ecommerce</h5>
                    <p>App de escritorio desarrollada con C# .Net y SQL Server.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypCocaCola" NavigateUrl="https://github.com/RodrigoBombieri/PaginaCocaC" runat="server">
                    <asp:Image ID="imgCocaCola" src="img/coca_cola.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Réplica de Pagina de Coca Cola</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypWeatherApp2" NavigateUrl="https://github.com/RodrigoBombieri/weatherApp" runat="server">
                    <asp:Image ID="imgWeatherApp2" src="img/weather-app.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none ">
                    <h5>App del Tiempo</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypCalculadora2" NavigateUrl="https://github.com/RodrigoBombieri/ArgentinaPrograma/tree/main/Calculadora" runat="server">
                    <asp:Image ID="imgCalculadora2" src="img/calculadora.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Calculadora</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypEcommerce2" NavigateUrl="https://github.com/RodrigoBombieri/app-E-commerce/tree/main/MiPrimerApp" runat="server">
                    <asp:Image ID="imgEcommerce2" src="img/ecommerce.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Ecommerce</h5>
                    <p>App de escritorio desarrollada con C# .Net y SQL Server.</p>
                </div>
            </div>
            <div class="carousel-item">
                <asp:HyperLink ID="hypCocaCola2" NavigateUrl="https://github.com/RodrigoBombieri/PaginaCocaC" runat="server">
                    <asp:Image ID="imgCocaCola2" src="img/coca_cola.png" CssClass="d-block w-100" runat="server" />
                </asp:HyperLink>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Réplica de Pagina de Coca Cola</h5>
                    <p>Desarrollada con HTML, CSS y Javascript.</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</asp:Content>
