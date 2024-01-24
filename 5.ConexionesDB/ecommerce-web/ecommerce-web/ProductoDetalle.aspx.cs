using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace ecommerce_web
{
    public partial class ProductoDetalle : System.Web.UI.Page
    {
        public List<Articulo> ListaArticulos {  get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if(id != null && !IsPostBack)
            {
                ArticuloNegocio negocio = new ArticuloNegocio();
                ListaArticulos = negocio.listar(id);
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        public static string ObtenerIdUsuario()
        {
            // Obtener el usuario de la sesión
            Usuario usuario = HttpContext.Current.Session["usuario"] as Usuario;

            // Verificar si el usuario está autenticado
            if (Seguridad.sesionActiva(usuario))
            {
                // Si está autenticado, devuelve el ID del usuario
                return usuario.Id.ToString();
            }

            // Si el usuario no está autenticado o no hay información de usuario en la sesión,
            // devuelve una cadena vacía
            return string.Empty;
        }

    }
}