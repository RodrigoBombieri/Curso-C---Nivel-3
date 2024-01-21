using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominioD;
using negocioD;

namespace discos_web
{
    public partial class DetalleDisco : System.Web.UI.Page
    {
        public List<Disco> listaDiscos {  get; set; } 
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
            if (id != "" && !IsPostBack)
            {
                DiscoNegocio negocio = new DiscoNegocio();
                listaDiscos = negocio.listar(id);
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
    }
}