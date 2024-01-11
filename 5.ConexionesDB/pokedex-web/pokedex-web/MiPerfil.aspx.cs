using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominioP;

namespace pokedex_web
{
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /// Si es distinto de null es porque hay un usuario logueado
            /// Si no hay un usuario logueado redirecciono a la pagina de login          
            Trainee trainee = Session["trainee"] != null ? (Trainee)Session["trainee"] : null;
            /// Si el trainee es null o el id es 0 significa que no hay un usuario logueado
            /// Entonces redirecciono a la pagina de login
            if(!(trainee != null && trainee.Id != 0))
                Response.Redirect("Login.aspx");

        }
    }
}