using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploEventos
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /// MANERA 1: usando el if
            //if (Request.QueryString["nombre"] != null)
            //{
            //    string nombre = Request.QueryString["nombre"].ToString();
            //    lblUser.Text = "Hola " + nombre;

            //}
            //else
            //{
            //    lblUser.Text = "No se ha ingresado un nombre";
            //}

            /// MANERA 2: usando el operador ternario
            /// o con el operador ternario usando el redirect     
            string nombre = Request.QueryString["nombre"] != null ? Request.QueryString["nombre"].ToString() : "Debes ingresar un nombre";
            lblUser.Text = "Bienvenido con Redirect: " + nombre;

            /// operador ternario usando un linkbutton
            string nombre2 = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "Debes ingresar un nombre";
            lblUser2.Text = "Bienvenido con linkButton: " + nombre2;
        }
    }
}