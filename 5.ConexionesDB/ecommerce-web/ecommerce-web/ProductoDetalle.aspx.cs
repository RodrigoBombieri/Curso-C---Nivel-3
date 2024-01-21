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
    }
}