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
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <asp:Label runat="server" Text="Filtrar"></asp:Label>
                <asp:TextBox ID="txtFiltro" runat="server" CssClass="form-control" AutoPostBack="true" OnTextChanged="txtFiltro_TextChanged"></asp:TextBox>
            </div>
        </div>
        <div class="col-6" style="display: flex; flex-direction: column; justify-content: flex-end;">
            <div class="mb-3">
                <asp:CheckBox ID="chkFiltroAvanzado" Text="Filtro Avanzado" AutoPostBack="true"
                    OnCheckedChanged="chkFiltroAvanzado_CheckedChanged" runat="server" />
            </div>
        </div>

        <%if (chkFiltroAvanzado.Checked)
            { %>
        <div class="row">
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label ID="lblCampo" runat="server" Text="Campo"></asp:Label>
                    <asp:DropDownList ID="ddlCampo" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlCampo_SelectedIndexChanged">
                        <asp:ListItem Text="Número" ></asp:ListItem>
                        <asp:ListItem Text="Nombre" ></asp:ListItem>
                        <asp:ListItem Text="Tipo" ></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label runat="server" Text="Criterio"></asp:Label>
                    <asp:DropDownList ID="ddlCriterio" runat="server" CssClass="form-control" AutoPostBack="true" >
                        <asp:ListItem Text="Empieza con "></asp:ListItem>
                        <asp:ListItem Text="Termina con"></asp:ListItem>
                        <asp:ListItem Text="Contiene"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label runat="server" Text="Filtro: "></asp:Label>
                    <asp:TextBox ID="txtFiltroAvanzado" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-3">
                <div class="mb-3">
                    <asp:Label runat="server" Text="Estado: "></asp:Label>
                    <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Activo "></asp:ListItem>
                        <asp:ListItem Text="Inactivo"></asp:ListItem>
                        <asp:ListItem Text="Todos"></asp:ListItem>
                    </asp:DropDownList>
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
