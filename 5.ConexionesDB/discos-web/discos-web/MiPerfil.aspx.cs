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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Si no hay una sesionActiva (devolvió false), redirigimos a login para iniciar sesion
            if (!Seguridad.sesionActiva(Session["usuario"]))
                Response.Redirect("Login.aspx", false);
        }
    }
}