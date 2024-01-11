using negocioD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace discos_web
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Exceptua las pantallas que no quiero que valide (las que no necesitan un usuario logueado)
            if (!(Page is Login || Page is Default || Page is Registro))
            {
                /// Si no hay una sesionActiva (devolvió false), redirigimos a login para iniciar sesion
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
            }
        }

        protected void brnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx", false);
        }
    }
}