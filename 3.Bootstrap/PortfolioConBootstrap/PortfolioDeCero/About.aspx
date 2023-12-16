<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PortfolioDeCero.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">SOBRE MI</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Default.aspx">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Proyectos.aspx">Proyectos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Contacto.aspx">Contacto</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="card mx-auto mt-2" style="width: 58rem; background-color: lightblue;">
        <div class="row no-gutters">
            <div class="col-md-5 p-4">
                <h1 class="card-title strong">Hola 💣</h1>
                <p class="card-text lead">
                    Soy estudiante de la Universidad Tecnológica Nacional desde Febrero 2023, curso la carrera "Tecnicatura en Programación".
                Además realicé cursos de C# (POO + .Net + SQL + Web ASP .Net), Python y React.
                </p>
            </div>
            <div class="col-md-7 d-flex align-items-center">
                <div class="card-body container">
                    <div class="row">
                        <div class="aptitudes">
                            <h2>Aptitudes</h2>
                            <p class="card-text lead">Estas son algunas de las tecnologías de las que tengo conocimientos.</p>
                            <div class="row">
                                <div class="tech-list col-4">
                                    <img src="img/icons8-c-sharp-logo-2-480.png" class="img-fluid w-100 tech" alt="">
                                </div>
                                <div class="tech-list col-4">
                                    <img src="img/icons8-cplusplus-a-general-purpose-descriptive-programming-computer-language-96.png" class="img-fluid w-100 tech" alt="c++ logo">
                                </div>
                                <div class="tech-list col-4">
                                    <img src="img/icons8-sql-64.png" class="img-fluid w-100 tech" alt="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="tech-list col-4">
                                    <img src="img/icons8-.net-framework-480.png" class="img-fluid w-100 tech" alt="">
                                </div>
                                <div class="tech-list col-4">
                                    <img src="img/icons8-bootstrap-480.png" class="img-fluid w-100 tech" alt="">
                                </div>
                                <div class="tech-list col-4">
                                    <img src="img/icons8-react-a-javascript-library-for-building-user-interfaces-96.png" class="img-fluid w-100 tech" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card mx-auto mt-2 p-4" style="width: 58rem; background-color: lightblue;">
        <div class="row">
            <div class="col-12">
                <h2>Cursos realizados</h2>
                <ul>
                    <li><p class="card-text lead">Curso de Fundamentos de la Programación Nivel Universidad</p></li>
                    <li><p class="card-text lead">Curso de Programación con C# Nivel 1 [Desde Cero]</p></li>
                    <li><p class="card-text lead">Curso de Programación con C# Nivel 2: POO + .NET + SQL</p></li>
                    <li><p class="card-text lead">Curso de Programación con C# Nivel 3: Web ASP .NET</p></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
