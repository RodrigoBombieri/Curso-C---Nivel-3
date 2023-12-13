<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemploDesdeCero.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>Inicio </h1>
    </div>
    <div class="row justify-content-center text-center">
        <div class="col-2"></div>
        <div id="carouselExampleAutoplaying" class="col carousel slide mx-auto" data-bs-ride="carousel">
            <div class="carousel-inner ">
                <div class="carousel-item active">
                    <asp:Image ID="Image1" src="img/dom-8429773_640.jpg" CssClass="d-block w-100 img-fluid" alt="..." runat="server" />
                </div>
                <div class="carousel-item">
                    <asp:Image ID="Image2" src="img/elks-8430545_640.jpg" CssClass="d-block w-100 img-fluid" alt="..." runat="server" /> 
                </div>
                <div class="carousel-item">
                    <asp:Image ID="Image3" src="img/cat-8438334_640.jpg" CssClass="d-block w-100 img-fluid" alt="..."  runat="server" />                 
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div class="col-2"></div>
    </div>
</asp:Content>
