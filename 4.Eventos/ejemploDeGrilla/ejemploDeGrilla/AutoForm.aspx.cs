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
            ddlColores.Items.Add("Negro");
            ddlColores.Items.Add("Blanco");

            /// Con esto verifico que el ID en la URL sea valido 
            if (Request.QueryString["id"] != null)
            {
                /// Si entró Significa que vengo desde el boton Seleccionar con un ID precargado
                
                /// Guardamos el ID en una variable
                int id = int.Parse(Request.QueryString["id"].ToString());
                /// Me traigo de la Session, la lista temporal de autos
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                /// Para buscar el auto seleccionado usando lambra expression
                /// Me va a devolver de la lista el objeto seleccionado
                Auto seleccionado = temporal.Find( x => x.Id == id );
                /// Precarga en las cajas de texto los datos del elemento seleccionado
                txtModelo.Text = seleccionado.Modelo;
                
                txtID.Text = seleccionado.Id.ToString();
                txtID.ReadOnly = true;
                txtDescripcion.Text = seleccionado.Descripcion;

                txtFecha.Text = seleccionado.Fecha.ToString();

                ddlColores.SelectedValue = seleccionado.Color;

                chkUsado.Checked = seleccionado.Usado;

                rdbImportado.Checked = seleccionado.Importado;
                /// Si venimos desde el boton Seleccionar de la grilla, el boton Aceptar se deshabilita
                btnAceptar.Enabled=false;
            }
            else
            {
                btnModificar.Enabled = false;
                btnEliminar.Enabled = false;
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            /// Genero un nuevo auto
            Auto a = new Auto();

            /// Le cargo los parámetros
            a.Id = int.Parse(txtID.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDescripcion.Text;
            a.Color = ddlColores.SelectedValue;
            a.Fecha = DateTime.Parse(txtFecha.Text);
            a.Usado = chkUsado.Checked;
            /// Capturo el estado de los radioButton
            if(rdbImportado.Checked)
            {
                a.Importado = true;
            }
            else if(rdbNacional.Checked)
            {
                a.Importado = false;
            }
            /// -----> Ya tengo el auto cargado <------
            

            /// Recuperamos la lista de la Session para poder agregarle un elemento
            /// Con esto transformamos la lista de autos en una lista de autos con un casteo explicito 
            /// y le agregamos el auto que creamos a la grilla original
            ((List<Auto>)Session["listaAutos"]).Add(a);

            /// Y redireccionamos a la pagina principal
            Response.Redirect("Default.aspx");
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}