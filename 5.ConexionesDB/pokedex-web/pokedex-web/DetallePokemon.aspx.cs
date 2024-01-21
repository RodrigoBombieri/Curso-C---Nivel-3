using dominioP;
using negocioP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_web
{
    public partial class DetallePokemon : System.Web.UI.Page
    {
        public List<Pokemon> listaPokemon { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != "" && !IsPostBack)
            {
                PokemonNegocio negocio = new PokemonNegocio();
                listaPokemon = negocio.listar(id);
                Pokemon seleccionado = listaPokemon[0];

                /// Cargamos los datos del pokemon en los controles
                

            }





        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}