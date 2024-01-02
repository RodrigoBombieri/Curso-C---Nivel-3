<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="ejemploDeGrilla.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-6 columnaForm">
            <div class="mb-3">
                <label for="txtID" class="form-label">ID</label>
                <asp:TextBox ID="txtID" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Modelo</label>
                <asp:TextBox ID="txtModelo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion</label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtModelo" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColores" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox ID="txtFecha" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:CheckBox runat="server" ID="chkUsado" />
                <asp:Label Text="Usado" CssClass="form-check-label" runat="server" />
            </div>
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" Text="Importado" GroupName="Importado" runat="server" />
                <asp:RadioButton ID="rdbNacional" Text="Nacional" Checked="true" GroupName="Importado" runat="server" />
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" Text="Aceptar" CssClass="btn btn-primary" runat="server" OnClick="btnAceptar_Click" />
                <asp:Button ID="btnModificar" Text="Modificar" CssClass="btn btn-secondary" runat="server" OnClick="btnModificar_Click" />
                <asp:Button ID="btnEliminar" Text="Eliminar" CssClass="btn btn-danger" runat="server" OnClick="btnEliminar_Click" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>
