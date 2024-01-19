<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormularioPokemon.aspx.cs" Inherits="pokedex_web.FormularioPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>--%>
    <script>
        function validar() {
            /// Guardo en un array los id de los campos que quiero validar
            var campos = ["txtNombre", "txtNumero", "txtDescripcion", "txtUrlImagen"];
            /// Creo una variable booleana que me indicara si el formulario es valido o no
            var esValido = true;

            /// Recorro el array de campos
            campos.forEach(function (campoId) {
                /// Obtengo el campo por su id
                var campo = document.getElementById(campoId);
                if (campo.value == "") {
                    campo.classList.add("is-invalid");
                    campo.classList.remove("is-valid");
                    esValido = false;
                } else {
                    campo.classList.remove("is-invalid");
                    campo.classList.add("is-valid");
                }
            });
            return esValido;
        }
    </script>
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
                <asp:TextBox ID="txtNombre" CssClass="form-control" ClientIDMode="Static" runat="server" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El nombre es requerido." ControlToValidate="txtNombre" ForeColor="OrangeRed" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtNumero" class="form-label">Numero: </label>
                <asp:TextBox ID="txtNumero" CssClass="form-control" ClientIDMode="Static" runat="server" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El número es requerido." ForeColor="OrangeRed" ControlToValidate="txtNumero" runat="server" />
                <asp:RegularExpressionValidator ErrorMessage="Debes ingresar un número.." ForeColor="OrangeRed" ControlToValidate="txtNumero" ValidationExpression="^[0-9]+$" runat="server" />
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
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" ClientIDMode="Static" CssClass="form-control" runat="server" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="La descripcion es requerida." ForeColor="OrangeRed" ControlToValidate="txtDescripcion" runat="server" />
            </div>
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">Url Imagen: </label>
                        <asp:TextBox ID="txtUrlImagen" AutoPostBack="true"
                            OnTextChanged="txtUrlImagen_TextChanged" ClientIDMode="Static" CssClass="form-control" runat="server" oninput="validar(this)"></asp:TextBox>
                        <asp:RequiredFieldValidator ErrorMessage="La Imagen es requerida." ForeColor="OrangeRed" ControlToValidate="txtUrlImagen" runat="server" />
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
