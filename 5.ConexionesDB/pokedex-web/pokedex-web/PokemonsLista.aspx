<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PokemonsLista.aspx.cs" Inherits="pokedex_web.PokemonsLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .oculto {
            display: none;
        }
    </style>
    <h1>Lista de Pokemons</h1>
    <asp:GridView ID="dgvPokemons" DataKeyNames="Id" OnSelectedIndexChanged="dgvPokemons_SelectedIndexChanged" 
        CssClass="table" AutoGenerateColumns="false" 
        OnPageIndexChanging="dgvPokemons_PageIndexChanging"
        AllowPaging="True" PageSize="5" runat="server">
        <Columns>
            <%--<asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />--%>
            <asp:BoundField HeaderText="Numero" DataField="Numero" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
            <asp:ImageField HeaderText="Imagen" ControlStyle-Width="100px" ControlStyle-Height="100px" DataImageUrlField="UrlImagen" />
            <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
            <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
            <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
            <asp:CommandField ShowSelectButton="true" SelectText="✍︎" HeaderText="Accion" />
        </Columns>
    </asp:GridView>
    <a href="FormularioPokemon.aspx" class="btn btn-primary">Agregar</a>
</asp:Content>
