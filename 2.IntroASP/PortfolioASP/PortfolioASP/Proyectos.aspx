<%@ Page Title="Proyectos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Proyectos.aspx.cs" Inherits="PortfolioASP.Proyectos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"> <%: Title %> </h2>
        <p> Aquí se muestran los proyectos que he realizado. </p>
        
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" Onclick="btnCheck1_Click"/>
    </main>
</asp:Content>
