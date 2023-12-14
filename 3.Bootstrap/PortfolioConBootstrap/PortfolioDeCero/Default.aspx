<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PortfolioDeCero.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card mx-auto mt-2" style="width: 58rem; background-color: cadetblue;">
        <div class="row no-gutters">
            <div class="col-md-5">
                <img src="img/IMG_20230323_114543725.jpg"  class="card-img-top img-fluid" alt="Rodrigo Bombieri">
            </div>
            <div class="col-md-7 d-flex align-items-center">
                <div class="card-body ">
                    <h5 class="card-title strong">Hola 💣</h5>
                    <p class="card-text lead">Mi nombre es Rodrigo y soy estudiante de programación.</p>
                    <div class="row ">
                        <asp:HyperLink ID="hlAbout" runat="server" CssClass="btn btn-primary col" Text="Sobre Mi" NavigateUrl="~/About.aspx" />
                        <asp:HyperLink ID="hlProyectos" runat="server" CssClass="btn btn-secondary col" Text="Proyectos" NavigateUrl="~/Proyectos.aspx" />
                        <asp:HyperLink ID="hlContacto" runat="server" CssClass="btn btn-info col" Text="Contacto" NavigateUrl="~/Contacto.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

</asp:Content>
