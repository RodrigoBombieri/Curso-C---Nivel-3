using dominioD;
using negocioD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace discos_web
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Disco> listaDiscos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscoNegocio negocio = new DiscoNegocio();
            listaDiscos = negocio.listarConSP();

            if (!IsPostBack)
            {
                repRepeater.DataSource = listaDiscos;
                repRepeater.DataBind();
            }
        }
    }
}