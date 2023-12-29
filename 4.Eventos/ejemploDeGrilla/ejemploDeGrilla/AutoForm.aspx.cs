using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace ejemploDeGrilla
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlColores.Items.Add("Rojo");
            ddlColores.Items.Add("Azul");
            ddlColores.Items.Add("Verde");
            ddlColores.Items.Add("Amarillo");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();

            a.Id = int.Parse(txtID.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColores.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Usado = chkUsado.Checked;
            
            if(rdbImportado.Checked)
            {
                a.Importado = true;
            }
            else if(rdbNacional.Checked)
            {
                a.Importado = false;
            }

            /// Con esto transformamos la lista de autos en una lista de autos con un casteo explicito 
            /// y le agregamos el auto que creamos
            ((List<Auto>)Session["listaAutos"]).Add(a);

            /// Y redireccionamos a la pagina principal
            Response.Redirect("Default.aspx");
        }
    }
}