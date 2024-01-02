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
            if (!IsPostBack)
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
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Direccion d = new Direccion();
            d.Id = int.Parse(txtID.Text);
            d.Calle = txtCalle.Text;
            d.Numero = int.Parse(txtNumero.Text);

            ((List<Direccion>)Session["listaDireccion"]).Add(d);
            Response.Redirect("Default.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            List<Direccion> temporal = (List<Direccion>)Session["listaDireccion"];
            Direccion seleccionado = temporal.Find(x => x.Id == id);

            if (seleccionado != null)
            {
                seleccionado.Calle = txtCalle.Text;
                seleccionado.Numero = int.Parse(txtNumero.Text);
                Response.Redirect("Default.aspx");

            }
                
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            List<Direccion> temporal = (List<Direccion>)Session["listaDireccion"];
            Direccion seleccionado = temporal.Find(x => x.Id == id);
            
            if(seleccionado != null)
            {
                ((List<Direccion>)Session["listaDireccion"]).Remove(seleccionado);
                Response.Redirect("Default.aspx");
            }
        }
    }
}