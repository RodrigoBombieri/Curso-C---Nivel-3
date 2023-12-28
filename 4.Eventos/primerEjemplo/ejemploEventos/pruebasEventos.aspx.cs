using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploEventos
{
    public partial class pruebasEventos : System.Web.UI.Page
    {
        /// En las páginas web, los eventos se ejecutan en el orden que se muestran en la página.
        protected void Page_Load(object sender, EventArgs e)
        { 
            /// Postback: es una validación que se hace para saber si la página se está cargando por primera vez 
            /// En caso que sea la primera vez que se carga la página, se ejecuta el código 
            /// que está dentro del if, las veces siguientes que se cargue la página, no se ejecutará el código
            if(!IsPostBack)
            {
                /// codigo a ejecutar
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = txtMensaje.Text;
            lblMensaje.Text = "Hola " + nombre;

            /// Redireccionar a otra página con un parámetro en la URL
            Response.Redirect("Default.aspx?nombre=" + nombre, false);
        }

        protected void lblMensaje_TextChanged(object sender, EventArgs e)
        {
            lblSecundario.Text = "Hola Mundo";
        }

        
    }
}