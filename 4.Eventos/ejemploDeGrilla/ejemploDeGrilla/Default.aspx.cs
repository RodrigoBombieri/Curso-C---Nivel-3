using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace ejemploDeGrilla
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Preguntamos si la lista de autos esta vacia y si esta vacia la cargamos
            if (Session["listaAutos"] == null)
            {
                /// Devuelve una lista de autos
                AutoNegocio negocio = new AutoNegocio();
                /// Guardamos la lista en sesion para que no se pierda y SE PUEDA SEGUIR USANDO
                /// en otros formularios, sino la lista se pierde cuando se cierra el formulario)
                Session.Add("listaAutos", negocio.listar());            
            }
            else
            {
                /// Si la lista contiene datos, la cargamos en el datagridview
                dgvAutos.DataSource = Session["listaAutos"];
                dgvAutos.DataBind();
            }   

            /// Con el datasource se le asigna la lista de autos al datagridview
            /// Carcamos la grilla desde la lista que tenemos en sesion
            dgvAutos.DataSource = Session["listaAutos"];
            /// Con el databind se le asigna el datasource al datagridview y arma la grilla
            dgvAutos.DataBind();
        }
    }
}