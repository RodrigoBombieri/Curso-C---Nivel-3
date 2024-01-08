using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocioP;
using dominioP;

namespace pokedex_web
{
    public partial class PokemonsLista : System.Web.UI.Page
    {
        public bool filtroAvanzado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            filtroAvanzado = false;
            PokemonNegocio negocio = new PokemonNegocio();
            /// Guardamos en session la lista de pokemons para poder usarla en el evento SelectedIndexChanged
            Session.Add("listaPokemons", negocio.listar());
            /// Cargamos el gridview con la lista de pokemons que esta en session
            dgvPokemons.DataSource = Session["listaPokemons"];
            dgvPokemons.DataBind();
        }

        protected void dgvPokemons_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvPokemons.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioPokemon.aspx?id=" + id);
        }

        protected void dgvPokemons_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            /// Para que funcione la paginación, hay que agregar la propiedad AllowPaging="True" en el 
            /// GridView, entonces el evento PageIndexChanging se dispara cuando se cambia de página.
            dgvPokemons.PageIndex = e.NewPageIndex;
            dgvPokemons.DataBind();
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            /// Si el campo de texto esta vacio, cargamos el gridview con la lista 
            /// de pokemons que esta en session
            List<Pokemon> lista = (List<Pokemon>)Session["listaPokemons"];
            /// Si el campo de texto no esta vacio, filtramos la lista de pokemons 
            /// Por nombre (minuscula o mayuscula) o por numero
            List<Pokemon> listaFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtFiltro.Text.ToUpper()) || x.Numero.ToString().Contains(txtFiltro.Text));
            /// Cargamos el gridview con la lista filtrada
            dgvPokemons.DataSource = listaFiltrada;
            dgvPokemons.DataBind();
        }

        protected void chkFiltroAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            // Si el checkbox esta seleccionado, habilitamos el filtro avanzado
            filtroAvanzado = chkFiltroAvanzado.Checked;
            // Si el filtro avanzado esta habilitado, deshabilitamos el filtro rapido
            txtFiltro.Enabled = !filtroAvanzado;
        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCriterio.Items.Clear();
            if(ddlCampo.SelectedItem.ToString() == "Número")
            {
                ddlCriterio.Items.Add("Igual a");
                ddlCriterio.Items.Add("Mayor a");
                ddlCriterio.Items.Add("Menor a");
            }
            else
            {
                ddlCriterio.Items.Add("Contiene");
                ddlCriterio.Items.Add("Comienza con");
                ddlCriterio.Items.Add("Termina con");
            }
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                PokemonNegocio negocio = new PokemonNegocio();
                dgvPokemons.DataSource = negocio.filtrar(ddlCampo.SelectedItem.ToString(),
                    ddlCriterio.SelectedItem.ToString(), txtFiltroAvanzado.Text, 
                    ddlEstado.SelectedItem.ToString());
                dgvPokemons.DataBind();

            }
            catch (Exception ex)
            {

                Session.Add("Error", ex);
                throw;
            }
        }
    }
}