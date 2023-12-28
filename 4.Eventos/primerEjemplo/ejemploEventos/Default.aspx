<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemploEventos._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <% if (user != "") 
        {%>
        <h2>Ingresaste!</h2>
        <asp:Label Text="text" ID="lblUser" runat="server" />
    <%} else 
        {%>
        <h2>Debes loguearte!</h2>
        <a href="pruebasEventos.aspx">Login</a>
    <%}%>
</asp:Content>
