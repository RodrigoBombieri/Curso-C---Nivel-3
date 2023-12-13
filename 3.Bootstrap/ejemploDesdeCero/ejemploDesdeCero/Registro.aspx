<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ejemploDesdeCero.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>Registrarse</h1>
    </div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col">
            <div class="col-mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" runat="server"></asp:TextBox>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>

            <div class="col-mb-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" runat="server"></asp:TextBox>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>
            <div class="col-mb-3">
                <label for="txtUsername" class="form-label">Username</label>
                <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend3">@</span>

                    <asp:TextBox ID="txtUsername" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" runat="server"></asp:TextBox>
                    <div id="validationServerUsernameFeedback" class="invalid-feedback">
                        Please choose a username.
                    </div>
                </div>
            </div>
            <div class="col-mb-3">
                <label for="txtCiudad" class="form-label">City</label>
                <asp:TextBox ID="txtCiudad" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" aria-describedby="validationServer03Feedback" runat="server"></asp:TextBox>
                <div id="validationServer03Feedback" class="invalid-feedback">
                    Please provide a valid city.
                </div>
            </div>

            <div class="col-mb-3">
                <label for="txtEmail" class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" type="email" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" runat="server"></asp:TextBox>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>
            <div class="col-mb-3">
                <label for="txtPassword" class="form-label">Contraseña</label>
                <asp:TextBox ID="txtPassword" type="password" class="form-control is-invalid" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" runat="server"></asp:TextBox>
                <div class="valid-feedback">
                    Looks good!
                </div>
            </div>
            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" aria-describedby="invalidCheck3Feedback" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" required>
                    <asp:Label ID="Label1" class="form-check-label" for="invalidCheck3" runat="server" AutoPostBack="true" OnTextChanged="OnTextChangedHandler" Text="Agree to terms and conditions"></asp:Label>

                    <div id="invalidCheck3Feedback" class="invalid-feedback">
                        You must agree before submitting.
                    </div>
                </div>
            </div>
            <div class="col-12">
                <button class="btn btn-primary" type="submit">Registrarse</button>
            </div>
        </div>
        <div class="col-2"></div>
    </div>
</asp:Content>
