<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PortfolioDeCero.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <header>
            <h3> ✅ Rodrigo Sebastián Bombieri </h3>
            <nav class="menuSecciones">
                <ul>
                    <li><a href="Default.aspx">Inicio</a></li>
                    <li><a href="Proyectos.aspx">Proyectos</a></li>
                    <li><a href="Contacto.aspx">Contacto</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <section class="dos">
        <h2>Sobre mí</h2>
        <p>
            Soy estudiante de la Universidad Tecnológica Nacional desde Febrero 2023, curso la carrera "Tecnicatura en Programación".
            Además realicé cursos de C# (POO + .Net + SQL + Web ASP .Net), Python y React.   
        </p>
        <h2>Aptitudes</h2> 
        <p>
            Estas son algunas de las tecnologías de las que tengo conocimientos.
        </p>
        <div class="aptitudes">
            <div class="tech-list">
                <img src="img/icons8-c-sharp-logo-2-480.png" class="tech" alt="">
                <img src="img/icons8-cplusplus-a-general-purpose-descriptive-programming-computer-language-96.png" class="tech" alt="c++ logo">
                <img src="img/icons8-sql-64.png" class="tech" alt="">
            </div>
            <div class="tech-list">
                <img src="img/icons8-.net-framework-480.png" class="tech" alt="">
                <img src="img/icons8-bootstrap-480.png" class="tech" alt="">
                <img src="img/icons8-react-a-javascript-library-for-building-user-interfaces-96.png" class="tech" alt="">
            </div>
        </div>
        <h2>Cursos realizados</h2>
        <ul>
            <li>Curso de Fundamentos de la Programación Nivel Universidad</li>
            <li>Curso de Programación con C# Nivel 1 [Desde Cero]</li>
            <li>Curso de Programación con C# Nivel 2: POO + .NET + SQL</li>
            <li>Curso de Programación con C# Nivel 3: Web ASP .NET</li>
        </ul>
    </section>
</asp:Content>
