<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="pokedex_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h1>Crea tu perfil Trainee</h1>
            <div class="mb-3">
                <asp:Label CssClass="form-label" runat="server" Text="Email"></asp:Label>
                <asp:TextBox CssClass="form-control" required TextMode="Email" ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ErrorMessage="Formato incorrecto..." CssClass="validacion" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" />
            </div>
            <div class="mb-3">
                <asp:Label CssClass="form-label" runat="server" Text="Passsword"></asp:Label>
                <asp:TextBox CssClass="form-control" required TextMode="Password" ID="txtPassword" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegistrarse" OnClick="btnRegistrarse_Click" runat="server" Text="Registrarse" CssClass="btn btn-primary" />
            <a href="Default.aspx">Cancelar</a>
        </div>
    </div>
</asp:Content>
