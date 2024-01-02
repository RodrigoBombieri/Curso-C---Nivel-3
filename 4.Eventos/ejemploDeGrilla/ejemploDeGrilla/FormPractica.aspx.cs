using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace ejemploDeGrilla
{
    public partial class FormPractica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Direccion> temporal = (List<Direccion>)Session["listaDireccion"];
                Direccion seleccionado = temporal.Find(x => x.Id == id);
                txtID.Text = seleccionado.Id.ToString();
                txtID.ReadOnly = true;
                txtCalle.Text = seleccionado.Calle;
                txtNumero.Text = seleccionado.Numero.ToString();

                btnAceptar.Enabled = false;
            }
            else
            {
                btnModificar.Enabled = false;
                btnEliminar.Enabled = false;
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}