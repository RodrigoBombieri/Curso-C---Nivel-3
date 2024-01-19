<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedex_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion {
            color: red;
            font-size: 12px;
        }
    </style>
    <script>
        function validar() {
            /// Capturamos los controles
            const txtApellido = document.getElementById("txtApellido");
            const txtNombre = document.getElementById("txtNombre");
            if (txtApellido.value == "" ) {
                //alert("El apellido es requerido");
                txtApellido.classList.add("is-invalid");
                txtApellido.classList.remove("is-valid");
                txtNombre.classList.add("is-valid");
                return false;
            }
            txtApellido.classList.remove("is-invalid");
            txtApellido.classList.add("is-valid");
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mi Perfil</h1>

    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label for="txtEmail" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ErrorMessage="El nombre es requerido" CssClass="validacion" ControlToValidate="txtNombre" runat="server" />--%>
            </div>
            <div class="mb-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" ClientIDMode="Static" runat="server" CssClass="form-control"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ErrorMessage="El apellido es requerido" CssClass="validacion" ControlToValidate="txtApellido" runat="server" />--%>
                <%--<asp:RangeValidator ErrorMessage="fuera de rango.." CssClass="validacion" ControlToValidate="txtApellido" Type="Integer" MinimumValue="1" MaximumValue="256" runat="server" />
                <asp:RegularExpressionValidator ErrorMessage="Formato incorrecto..." CssClass="validacion" ControlToValidate="txtApellido" ValidationExpression="^[0-9]+$" runat="server" />--%>
            </div>
            <div class="mb-3">
                <label for="txtFechaNacimiento" class="form-label">Fecha de Nacimiento</label>
                <asp:TextBox ID="txtFechaNacimiento" TextMode="Date" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="La fecha de nacimiento es requerida" CssClass="validacion" ControlToValidate="txtFechaNacimiento" runat="server" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label for="txtImagen" class="form-label">Imagen Perfil</label>
                <input type="file" id="txtImagen" class="form-control" runat="server" />
            </div>
            <asp:Image ID="imgNuevoPerfil" CssClass="img-fluid mb-3" ImageUrl="https://img.freepik.com/vector-premium/vector-icono-imagen-predeterminado-pagina-imagen-faltante-diseno-sitio-web-o-aplicacion-movil-no-hay-foto-disponible_87543-11093.jpg" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" OnClientClick="return validar()" CssClass="btn btn-primary" runat="server" Text="Guardar" />
            <a href="/">Regresar</a>
        </div>
    </div>

</asp:Content>
