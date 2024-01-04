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
    public partial class DiscosListaForeach : System.Web.UI.Page
    {
        public List<Disco> listaDiscos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscoNegocio negocio = new DiscoNegocio();
            listaDiscos = negocio.listarConSP();

            if(!IsPostBack)
            {
                repRepeater.DataSource = listaDiscos;
                repRepeater.DataBind();
            }
        }
    }
}