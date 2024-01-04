<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductosLista.aspx.cs" Inherits="ecommerce_web.PoductosLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos con Store Procedure</h1>
    <asp:GridView ID="dgvProductos" DataKeyNames="Id" OnSelectedIndexChanged="dgvProductos_SelectedIndexChanged" CssClass="table" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
            <asp:BoundField DataField="Nombre" HeaderText="Codigo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Codigo" />
            <asp:BoundField DataField="Marca" HeaderText="Codigo" />
            <asp:BoundField DataField="Categoria" HeaderText="Codigo" />
            <asp:ImageField DataImageUrlField="UrlImagen" ControlStyle-Height="100px" ControlStyle-Width="100px" HeaderText="Imagen" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" />
            <asp:CommandField ShowSelectButton="true" SelectText="Ver Detalle"  HeaderText="Ver Detalle"/>
        </Columns>
    </asp:GridView>
</asp:Content>
