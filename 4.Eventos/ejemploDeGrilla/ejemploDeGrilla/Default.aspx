<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ejemploDeGrilla.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:GridView ID="dgvAutos" runat="server" CssClass="table table-primary table-bordered table-responsive-md-4" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Modelos" DataField="Modelo" />
            <asp:BoundField HeaderText="Colores" DataField="Color" />
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
        </Columns>
    </asp:GridView>
    <asp:GridView ID="dgvAutos2" runat="server" CssClass="table table-primary table-bordered table-responsive-md-4" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField HeaderText="Modelos" DataField="Modelo" />
        <asp:BoundField HeaderText="Colores" DataField="Color" />
        <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
        <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
    </Columns>
</asp:GridView>
</asp:Content>
