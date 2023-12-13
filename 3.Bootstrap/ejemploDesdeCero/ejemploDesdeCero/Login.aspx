<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ejemploDesdeCero.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>Login</h1>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col">
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Email address</label>
                <asp:TextBox ID="txtEmail" type="email" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" aria-describedby="emailHelp" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtPassword" class="form-label">Password</label>
                <asp:TextBox ID="txtPassword" CssClass="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" type="password" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" Text="Ingresar" />
        </div>
        <div class="col-2"></div>
    </div>
</asp:Content>
