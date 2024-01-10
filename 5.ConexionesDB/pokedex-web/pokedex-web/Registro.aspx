<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="pokedex_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h1>Crea tu perfil Trainee</h1>
            <div class="mb-3">
                <asp:Label CssClass="form-label" runat="server" Text="Email"></asp:Label>
                <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label CssClass="form-label" runat="server" Text="Passsword"></asp:Label>
                <asp:TextBox CssClass="form-control" TextMode="Password" ID="txtPassword" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegistrarse" OnClick="btnRegistrarse_Click" runat="server" Text="Registrarse" CssClass="btn btn-primary" />
           <a href="Default.aspx">Cancelar</a>
        </div>
    </div>
</asp:Content>
