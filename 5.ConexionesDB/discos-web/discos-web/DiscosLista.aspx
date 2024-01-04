<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiscosLista.aspx.cs" Inherits="discos_web.DiscosLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista Discos usando Store Procedure</h1>
    <asp:GridView ID="dgvDiscos" CssClass="table" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Titulo" DataField="Titulo" />
            <asp:BoundField HeaderText="Cantidad de Canciones" DataField="CantidadCanciones" />
            <asp:ImageField HeaderText="Portada" DataImageUrlField="UrlImagenTapa" ControlStyle-Height="100px" ControlStyle-Width="100px" />
            <asp:BoundField HeaderText="Estilo" DataField="Estilo.Descripcion" />
            <asp:BoundField HeaderText="Edicion" DataField="Edicion.Descripcion" />
        </Columns>
    </asp:GridView>
</asp:Content>
