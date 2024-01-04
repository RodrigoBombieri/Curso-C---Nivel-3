using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocioD;

namespace discos_web
{
    public partial class DiscosLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscoNegocio negocio = new DiscoNegocio();
            dgvDiscos.DataSource = negocio.listarConSP();
            dgvDiscos.DataBind();
        }

        protected void dgvDiscos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvDiscos.SelectedDataKey.Value.ToString();
            Response.Redirect("DetalleDisco.aspx?id=" + id);
        }
    }
}