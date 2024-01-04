using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace ecommerce_web
{
    public partial class PoductosLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            dgvProductos.DataSource = negocio.listarConSP();
            dgvProductos.DataBind();
        }

        protected void dgvProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvProductos.SelectedDataKey.Value.ToString();
            Response.Redirect("ProductoDetalle.aspx?id=" + id);
        }
    }
}