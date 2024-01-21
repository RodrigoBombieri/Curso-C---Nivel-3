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

            try
            {
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (!string.IsNullOrEmpty(id) || !IsPostBack)
                {
                    PokemonNegocio negocio = new PokemonNegocio();
                    listaPokemon = negocio.listar(id);
                }
                else
                {
                    Response.Redirect("Default.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx");
            }


        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }

        // Diccionario para mapear tipos de Pokémon a rutas de imágenes
        private Dictionary<string, string> rutasImagenesPorTipo = new Dictionary<string, string>
        {
            { "Fuego", "https://upload.wikimedia.org/wikipedia/commons/a/a6/Fuego_Pokemon.svg" },
            { "Planta", "https://upload.wikimedia.org/wikipedia/commons/f/f2/Planta_Pokemon.svg" },
            { "Agua", "https://upload.wikimedia.org/wikipedia/commons/3/36/Agua_Pokemon.svg" },
            { "Veneno", "https://upload.wikimedia.org/wikipedia/commons/e/e7/Veneno_Pokemon.svg" },
            { "Psíquico", "https://upload.wikimedia.org/wikipedia/commons/b/b7/Ps%C3%ADquico_Pokemon.svg" },
            { "Normal", "https://upload.wikimedia.org/wikipedia/commons/9/9d/Normal_Pokemon.svg" },
            { "Bicho", "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Bicho_Pokemon.svg/2560px-Bicho_Pokemon.svg.png" },
            { "Acero", "https://upload.wikimedia.org/wikipedia/commons/2/2e/Acero_Pokemon.svg" },
            { "Eléctrico", "https://upload.wikimedia.org/wikipedia/commons/2/2b/El%C3%A9ctrico_Pokemon.svg" },
            { "Dragón", "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Pok%C3%A9mon_type_Dragon_fr.svg/2560px-Pok%C3%A9mon_type_Dragon_fr.svg.png" },                       
            { "Fantasma", "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Fantasma_Pokemon.svg/2560px-Fantasma_Pokemon.svg.png" },
            { "Hielo", "https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Hielo_Pokemon.svg/1280px-Hielo_Pokemon.svg.png" },
            { "Lucha", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Lucha_Pokemon.svg/1280px-Lucha_Pokemon.svg.png" },
            { "Roca", "https://upload.wikimedia.org/wikipedia/commons/4/46/Roca_Pokemon.svg" },
            { "Tierra", "https://upload.wikimedia.org/wikipedia/commons/4/43/Tierra_Pokemon.svg" },
            { "Volador", "https://upload.wikimedia.org/wikipedia/commons/9/9d/Volador_Pokemon.svg" },
        };

        // Obtiene la ruta de la imagen del tipo
        protected string ObtenerRutaImagenTipo(string tipo)
        {
            // Verificar si el tipo existe en el diccionario
            if (rutasImagenesPorTipo.TryGetValue(tipo, out string rutaImagen))
            {
                return rutaImagen;
            }
            else
            {
                // Si no hay una imagen definida para el tipo devuelve una imagen por defecto
                return "https://i.pinimg.com/originals/a7/73/64/a773645c4ef8e7c77eee0f70e3e9e5a4.jpg";
            }
        }
    }
}