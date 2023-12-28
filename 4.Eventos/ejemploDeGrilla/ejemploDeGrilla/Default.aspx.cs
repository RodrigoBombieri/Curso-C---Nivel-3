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
            /// Devuelve una lista de autos
            AutoNegocio negocio = new AutoNegocio();


            /// Con el datasource se le asigna la lista de autos al datagridview
            dgvAutos.DataSource = negocio.listar();
            dgvAutos2.DataSource = negocio.listar();
            /// Con el databind se le asigna el datasource al datagridview y arma la grilla
            dgvAutos.DataBind();
            dgvAutos2.DataBind();
        }
    }
}