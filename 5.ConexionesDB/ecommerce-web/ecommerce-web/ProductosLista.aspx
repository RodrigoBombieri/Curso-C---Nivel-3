<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductosLista.aspx.cs" Inherits="ecommerce_web.PoductosLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos con Store Procedure</h1>
   <div class="row">
       <div class="col-6">
           <div class="mb-3">
               <asp:Label runat="server" Text="Filtrar: "></asp:Label>
               <asp:TextBox ID="txtFiltro" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged" runat="server"></asp:TextBox>
           </div>
       </div>
   </div>

    <asp:GridView ID="dgvProductos" DataKeyNames="Id" OnSelectedIndexChanged="dgvProductos_SelectedIndexChanged" 
        CssClass="table" AutoGenerateColumns="false" 
        OnPageIndexChanging="dgvProductos_PageIndexChanging"
        AllowPaging="true" PageSize="5" runat="server">
        <Columns>
            <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
            <asp:BoundField DataField="Nombre" HeaderText="Codigo" />
            <asp:BoundField DataField="Descripcion" HeaderText="Codigo" />
            <asp:BoundField DataField="Marca" HeaderText="Codigo" />
            <asp:BoundField DataField="Categoria" HeaderText="Codigo" />
            <asp:ImageField DataImageUrlField="UrlImagen" ControlStyle-Height="100px" ControlStyle-Width="100px" HeaderText="Imagen" />
            <asp:BoundField DataField="Precio" HeaderText="Precio" />
            <asp:CommandField ShowSelectButton="true" SelectText="Ver Detalle"  HeaderText="Ver Detalle"/>
            <asp:CommandField ShowSelectButton="true" SelectText="✍︎"  HeaderText="Accion"/>
        </Columns>
    </asp:GridView>
    <a href="FormularioProducto.aspx" class="btn btn-primary">Nuevo Producto</a>
</asp:Content>
