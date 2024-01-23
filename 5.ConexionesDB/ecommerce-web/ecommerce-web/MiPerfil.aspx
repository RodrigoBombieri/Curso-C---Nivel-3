<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="ecommerce_web.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .validacion{
            color: red;
            font-size: 12px;
        }
    </style>
    <script>
        function validar() {
            var campos = ["txtNombre", "txtApellido", "txtFechaNacimiento"];
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
    <h1>Mi Perfil</h1>

    <div class="row">
        <div class="col-md-4">
            <div class="mb-3">
                <label id="lblEmail" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label id="lblNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El nombre es requerido." CssClass="validacion" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="mb-3">
                <label id="lblApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" CssClass="form-control" runat="server" ClientIDMode="Static" oninput="validar(this)"></asp:TextBox>
                <asp:RequiredFieldValidator ErrorMessage="El apellido es requerido." CssClass="validacion" ControlToValidate="txtApellido" runat="server" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="mb-3">
                <label id="lblImgPerfil" class="form-label">Imagen Perfil</label>
                <input id="txtImagen" type="file" runat="server" class="form-control" />
            </div>
            <asp:Image ID="imgNuevoPerfil" ImageUrl="https://img.freepik.com/vector-premium/vector-icono-imagen-predeterminado-pagina-imagen-faltante-diseno-sitio-web-o-aplicacion-movil-no-hay-foto-disponible_87543-11093.jpg" CssClass="img-fluid mb-3" runat="server" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button ID="btnGuardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" runat="server" Text="Guardar" />
            <a href="/">Regresar</a> 
        </div>
    </div>

</asp:Content>
