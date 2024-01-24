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
            // Lógica para obtener el ID del usuario logueado (puedes cambiar esto según tu método de autenticación)
            // Por ejemplo, si estás usando Forms Authentication:
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                return HttpContext.Current.User.Identity.Name; // Usar el nombre del usuario como ID temporalmente
            }
            return string.Empty;
        }

    }
}