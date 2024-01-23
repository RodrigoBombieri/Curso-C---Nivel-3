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
        <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end;">
            <div class="mb-3">
                <asp:CheckBox ID="chkFiltroAvanzado" Text="Filtro Avanzado" AutoPostBack="true" OnCheckedChanged="chkFiltroAvanzado_CheckedChanged" runat="server" />
            </div>
        </div>

        <%if (chkFiltroAvanzado.Checked)
            {%>
        <div class="row">
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label ID="lblCampo" runat="server" Text="Campo"></asp:Label>
                    <asp:DropDownList ID="ddlCampo" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged" runat="server">
                        <asp:ListItem Text="Precio" ></asp:ListItem>
                        <asp:ListItem Text="Nombre"></asp:ListItem>
                        <asp:ListItem Text="Descripcion"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label ID="lblCriterio" runat="server" Text="Criterio"></asp:Label>
                    <asp:DropDownList ID="ddlCriterio" CssClass="form-control" AutoPostBack="true" runat="server">
                        <asp:ListItem Text="Igual a"></asp:ListItem>
                        <asp:ListItem Text="Mayor a"></asp:ListItem>
                        <asp:ListItem Text="Menor a"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label ID="lblFiltroAvanzado" runat="server" Text="Filtro"></asp:Label>
                    <asp:TextBox ID="txtFiltroAvanzado" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <div class="mb-3">
                    <asp:Button ID="btnBuscar" runat="server" CssClass="btn btn-primary" OnClick="btnBuscar_Click" Text="Buscar" />
                </div>
            </div>
        </div>
        <% } %>
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
            <asp:CommandField ShowSelectButton="true" SelectText="✍︎"  HeaderText="Accion"/>
        </Columns>
    </asp:GridView>
    <a href="FormularioProducto.aspx" class="btn btn-primary">Nuevo Producto</a>
</asp:Content>
