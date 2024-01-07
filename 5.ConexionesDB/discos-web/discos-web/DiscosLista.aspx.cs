using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocioD;
using dominioD;

namespace discos_web
{
    public partial class DiscosLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscoNegocio negocio = new DiscoNegocio();
            Session.Add("listaDiscos", negocio.listar());
            dgvDiscos.DataSource = Session["listaDiscos"];
            dgvDiscos.DataBind();
        }

        protected void dgvDiscos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = dgvDiscos.SelectedDataKey.Value.ToString();
            Response.Redirect("FormularioDisco.aspx?id=" + id);
        }

        protected void dgvDiscos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvDiscos.PageIndex = e.NewPageIndex;
            dgvDiscos.DataBind();
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            List<Disco> lista = (List<Disco>)Session["listaDiscos"];
            List<Disco> listaFiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            dgvDiscos.DataSource = listaFiltrada;
            dgvDiscos.DataBind();
        }
    }
}