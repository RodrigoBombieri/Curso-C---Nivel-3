<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DiscosLista.aspx.cs" Inherits="discos_web.DiscosLista" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .oculto {
            display: none;
        }
    </style>
    <h1>Lista Discos usando Store Procedure</h1>
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label runat="server" Text="Filtro: "></asp:Label>
                <asp:TextBox ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>
    <asp:GridView ID="dgvDiscos" DataKeyNames="Id" OnSelectedIndexChanged="dgvDiscos_SelectedIndexChanged" 
        CssClass="table" AutoGenerateColumns="false" 
        OnPageIndexChanging="dgvDiscos_PageIndexChanging" 
        AllowPaging="true" PageSize="5" runat="server">
        <Columns>
            <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto" />
            <asp:BoundField HeaderText="Titulo" DataField="Titulo" />
            <asp:BoundField HeaderText="Cantidad de Canciones" DataField="CantidadCanciones" />
            <asp:ImageField HeaderText="Portada" DataImageUrlField="UrlImagenTapa" ControlStyle-Height="100px" ControlStyle-Width="100px" />
            <asp:BoundField HeaderText="Estilo" DataField="Estilo.Descripcion" />
            <asp:BoundField HeaderText="Edicion" DataField="Edicion.Descripcion" />
            <asp:CommandField ShowSelectButton="true" SelectText="✍︎" HeaderText="Accion" />
        </Columns>
    </asp:GridView>
    <a href="FormularioDisco.aspx" class="btn btn-primary">Agregar Disco</a>
</asp:Content>
