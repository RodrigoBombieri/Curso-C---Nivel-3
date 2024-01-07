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
        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}