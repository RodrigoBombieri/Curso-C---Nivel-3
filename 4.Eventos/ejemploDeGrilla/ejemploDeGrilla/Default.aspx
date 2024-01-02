<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemploDeGrilla.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .oculto{
            display: none;
        }
    </style>
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvAutos" DataKeyNames="Id" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" runat="server" CssClass="table table-primary table-bordered table-responsive-md-4" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
                    <asp:BoundField HeaderText="Modelos" DataField="Modelo" />
                    <asp:BoundField HeaderText="Colores" DataField="Color" />
                    <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
                    <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                </Columns>
            </asp:GridView>
            <a href="AutoForm.aspx" class="btn btn-primary">Agregar</a>
            <asp:Button ID="btnBuscar" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscar_Click" runat="server"/>
            <asp:TextBox ID="txtIDBuscar" cssclass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvDireccion" DataKeyNames="Id" OnSelectedIndexChanged="dgvDireccion_SelectedIndexChanged" runat="server" CssClass="table table-primary table-bordered table-responsive-md-4" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
                    <asp:BoundField HeaderText="Calle" DataField="Calle" />
                    <asp:BoundField HeaderText="Numero" DataField="Numero" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />
                </Columns>
            </asp:GridView>
            <a href="FormPractica.aspx" class="btn btn-primary">Agregar</a>
            <asp:Button ID="btnBuscarDireccion" CssClass="btn btn-primary" Text="Buscar" OnClick="btnBuscarDireccion_Click" runat="server" />
            <asp:TextBox ID="txtIDDireccionBuscar" cssclass="form-control" runat="server"></asp:TextBox>
        </div>
    </div>
</asp:Content>
