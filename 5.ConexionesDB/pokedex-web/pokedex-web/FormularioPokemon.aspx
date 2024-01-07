<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="pokedex_web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Formulario</h1>

    <div class="row">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id: </label>
                <asp:TextBox ID="txtId" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre: </label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Numero: </label>
                <asp:TextBox ID="txtNumero" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="ddlTipo" class="form-label">Tipo: </label>
                <asp:DropDownList ID="ddlTipo" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlDebilidad" class="form-label">Debilidad: </label>
                <asp:DropDownList ID="ddlDebilidad" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" runat="server" CssClass="btn btn-primary" OnClick="btnAceptar_Click" Text="Aceptar" />
                <a href="PokemonsLista.aspx" class="btn btn-outline-danger">Cancelar</a>
                <asp:Button ID="btnInactivar" runat="server" CssClass="btn btn-warning" OnClick="btnInactivar_Click" Text="Inactivar" />
             </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción: </label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">Url Imagen: </label>
                        <asp:TextBox ID="txtUrlImagen" AutoPostBack="true"
                            OnTextChanged="txtUrlImagen_TextChanged" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <asp:Image ImageUrl="https://img.freepik.com/vector-premium/vector-icono-imagen-predeterminado-pagina-imagen-faltante-diseno-sitio-web-o-aplicacion-movil-no-hay-foto-disponible_87543-11093.jpg"
                        ID="imgPokemon" Width="60%" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" CssClass="btn btn-danger" Text="Eliminar" />
                    </div>
                    <%if (confirmaEliminacion)
                        {%>
                    <div class="mb-3">
                        <asp:CheckBox Text="Confirmar Eliminacion" ID="chkConfirmaEliminacion" runat="server" />
                        <asp:Button ID="btnConfirmarEliminar" runat="server" OnClick="btnConfirmarEliminar_Click" CssClass="btn btn-outline-danger" Text="Eliminar" />
                    </div>
                    <% } %>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
