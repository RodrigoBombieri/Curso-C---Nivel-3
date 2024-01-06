<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FormularioDisco.aspx.cs" Inherits="discos_web.FormularioDisco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Formulario</h1>

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id: </label>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtTitulo" class="form-label">Titulo: </label>
                <asp:TextBox ID="txtTitulo" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtCantidadCanciones" class="form-label">Cantidad de Canciones: </label>
                <asp:TextBox ID="txtCantidadCanciones" CssClass="form-control" runat="server" />
            </div>
            <div class="mb-3">
                <label for="ddlEstilo" class="form-label">Estilo: </label>
                <asp:DropDownList ID="ddlEstilo" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlEdicion" class="form-label">Edicion: </label>
                <asp:DropDownList ID="ddlEdicion" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <asp:Button ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" Text="Aceptar" />
                <a href="DiscosLista.aspx" class="btn btn-danger">Cancelar</a>
            </div>
        </div>
        <div class="col-6">
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">Url Imagen: </label>
                        <asp:TextBox ID="txtUrlImagen" AutoPostBack="true"
                            OnTextChanged="txtUrlImagen_TextChanged" CssClass="form-control" runat="server" />
                    </div>
                    <asp:Image ID="imgDisco" ImageUrl="https://img.freepik.com/vector-premium/vector-icono-imagen-predeterminado-pagina-imagen-faltante-diseno-sitio-web-o-aplicacion-movil-no-hay-foto-disponible_87543-11093.jpg"
                        Width="60%" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
