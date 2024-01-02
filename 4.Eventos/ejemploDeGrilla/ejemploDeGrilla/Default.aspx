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
        </div>
    </div>
</asp:Content>
