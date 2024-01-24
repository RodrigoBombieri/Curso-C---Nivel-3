<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FormularioProducto.aspx.cs" Inherits="ecommerce_web.FormularioProducto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function validar() {
            var campos = ["txtNombre", "txtCodigo", "txtPrecio", "txtDescripcion", "txtUrlImagen"];
            var esValido = true;

            campos.forEach(function (campoID) {
                var campo = document.getElementById(campoID);
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

    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id: </label>
                <asp:TextBox ID="txtId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre: </label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El nombre es requerido." ControlToValidate="txtNombre" ForeColor="DarkRed" runat="server" />
            </div>
            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Codigo: </label>
                <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El código es requerido." ControlToValidate="txtCodigo" ForeColor="DarkRed" runat="server" />
            </div>
            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Marca: </label>
                <asp:DropDownList ID="ddlMarca" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Categoria: </label>
                <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtPrecio" class="form-label">Precio: </label>
                <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RangeValidator ErrorMessage="Fuera de rango..." CssClass="validacion" ControlToValidate="txtPrecio" Type="Double" MinimumValue="0" MaximumValue="70000000" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="El precio es requerido." ControlToValidate="txtPrecio" ForeColor="DarkRed" runat="server" />
            </div>

            <div class="mb-3">
                <asp:Button ID="btnAceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" runat="server" Text="Aceptar" />
                <a href="ProductosLista.aspx">Cancelar</a>
            </div>
        </div>
        <div class="col-6">
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripcion: </label>
                <asp:TextBox ID="txtDescripcion" TextMode="MultiLine" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="La descripción es requerida." ControlToValidate="txtDescripcion" ForeColor="DarkRed" runat="server" />
            </div>
            <asp:ScriptManager runat="server" />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <label for="txtUrlImagen" class="form-label">UrlImagen: </label>
                        <asp:TextBox ID="txtUrlImagen" AutoPostBack="true"
                            OnTextChanged="txtUrlImagen_TextChanged"
                            CssClass="form-control" runat="server"
                            ClientIDMode="Static" oninput="validar(this)" />
                    </div>
                    <asp:Image ImageUrl="https://img.freepik.com/vector-premium/vector-icono-imagen-predeterminado-pagina-imagen-faltante-diseno-sitio-web-o-aplicacion-movil-no-hay-foto-disponible_87543-11093.jpg"
                        ID="imgProducto" runat="server" Width="30%" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <div class="mb-3">
                        <asp:Button ID="btnEliminar" runat="server" CssClass="btn btn-danger" OnClick="btnEliminar_Click" Text="Eliminar" />
                    </div>
                    <%if (confirmaEliminar)
                        { %>
                    <div class="mb-3">
                        <asp:CheckBox ID="chkConfirmaEliminar" runat="server" Text="Confirma Eliminacion" />
                        <asp:Button ID="btnConfirmaEliminar" runat="server" CssClass="btn btn-outline-danger" OnClick="btnConfirmaEliminar_Click" Text="Eliminar" />
                    </div>
                    <%} %>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
