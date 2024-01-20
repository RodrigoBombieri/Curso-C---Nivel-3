﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ecommerce_web.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4">
            <h1>Crea tu Perfil</h1>
            <div class="mb-3">
                <asp:Label ID="lblEmail" runat="server" CssClass="form-input" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" required TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ErrorMessage="Formato de email incorrecto.." CssClass="validacion" ControlToValidate="txtEmail" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" runat="server" />
            </div>
            <div class="mb-3">
                <asp:Label ID="lblPass" runat="server" CssClass="form-input" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" required TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:Button ID="btnRegistro" CssClass="btn btn-primary" OnClick="btnRegistro_Click" runat="server" Text="Registrarse" />
            <a href="Default.aspx">Cancelar</a>
        </div>
    </div>

</asp:Content>
