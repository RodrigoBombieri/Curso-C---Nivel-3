<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="discos_web.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h1>Login</h1>
            <div class="mb-3">
                <asp:Label ID="lblEmail" runat="server" CssClass="form-label" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="lblPass" runat="server" CssClass="form-label" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Ingresar" OnClick="btnLogin_Click" CssClass="btn btn-primary"  />
            <a href="Default.aspx">Cancelar</a>
        </div>
    </div>

</asp:Content>
