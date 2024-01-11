using dominioP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocioP;

namespace pokedex_web
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Si la pagina no es login o registro y no hay un usuario logueado redirecciono a la pagina de login
            if (!(Page is Login || Page is Registro || Page is Default))
                /// Si la sesion no esta activa redirecciono a la pagina de login
                if (!Seguridad.sesionActiva(Session["trainee"]))
                {
                    Response.Redirect("Login.aspx");
                }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            /// Cierro la sesion y redirecciono a la pagina de login
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}