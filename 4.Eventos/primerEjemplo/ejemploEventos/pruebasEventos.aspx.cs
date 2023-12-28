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
            string nombre = txtNombre.Text;
            string pass = txtPassword.Text;
            lblMensaje.Text = "Hola " + nombre;

            /// Session es un objeto que permite almacenar información en el servidor
            /// y usarlo en cualquier página del sitio web
            Session.Add("usuario", nombre);
            Session.Add("pass", pass);
 
            /// Redireccionar a otra página CON un parámetro en la URL
            /// Response.Redirect("Default.aspx?nombre=" + nombre + "&pass=" + txtPassword.Text, false);

            /// Redireccionar a otra página SIN mostrar los parámetros en la URL
            Response.Redirect("Default.aspx", false);
        }

        protected void lblMensaje_TextChanged(object sender, EventArgs e)
        {
            lblSecundario.Text = "Hola Mundo";
        }

        
    }
}