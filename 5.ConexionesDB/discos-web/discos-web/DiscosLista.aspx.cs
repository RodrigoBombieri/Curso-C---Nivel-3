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
        public bool filtroAvanzado { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Validar si es admin para acceder a esta seccion
            if (!Seguridad.esAdmin(Session["usuario"]))
            {
                Session.Add("error", "se requere permisos de admin para acceder a esta pantalla");
                Response.Redirect("Error.aspx", false);
            }

            filtroAvanzado = false;

            if (!IsPostBack)
            {
                DiscoNegocio negocio = new DiscoNegocio();
                Session.Add("listaDiscos", negocio.listar());
                dgvDiscos.DataSource = Session["listaDiscos"];
                dgvDiscos.DataBind();
            }
        }

        protected void dgvDiscos_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var id = dgvDiscos.SelectedDataKey.Value.ToString();
                Response.Redirect("FormularioDisco.aspx?id=" + id);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void dgvDiscos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                dgvDiscos.PageIndex = e.NewPageIndex;
                dgvDiscos.DataBind();
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            try
            {
                List<Disco> lista = (List<Disco>)Session["listaDiscos"];
                List<Disco> listaFiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(txtFiltro.Text.ToUpper()));
                dgvDiscos.DataSource = listaFiltrada;
                dgvDiscos.DataBind();
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void chkFiltroAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                filtroAvanzado = chkFiltroAvanzado.Checked;
                txtFiltro.Enabled = !filtroAvanzado;
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                ddlCriterio.Items.Clear();
                if (ddlCampo.SelectedItem.ToString() == "Cantidad Canciones")
                {
                    ddlCriterio.Items.Add("Igual a");
                    ddlCriterio.Items.Add("Mayor a");
                    ddlCriterio.Items.Add("Menor a");
                }
                else
                {
                    ddlCriterio.Items.Add("Contiene");
                    ddlCriterio.Items.Add("Empieza con");
                    ddlCriterio.Items.Add("Termina con");
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                DiscoNegocio negocio = new DiscoNegocio();

                /// Validacion para que cuando el campo de filtro este vacio, muestre todos los objetos
                if (string.IsNullOrEmpty(txtFiltroAvanzado.Text))
                {
                    dgvDiscos.DataSource = negocio.listarConSP();
                }
                /// y si no esta vacío, muestre el resultado del filtro
                else
                {
                    dgvDiscos.DataSource = negocio.filtrar(ddlCampo.SelectedItem.ToString(),
                        ddlCriterio.SelectedItem.ToString(), txtFiltroAvanzado.Text);
                }

                dgvDiscos.DataBind();
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}