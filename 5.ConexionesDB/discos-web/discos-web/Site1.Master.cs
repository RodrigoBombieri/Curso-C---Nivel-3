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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlECQSBGh032SFnX3lkF4CbEx9PvZxbFFcFscHj5qp9DjnVnYaohiMOKuLKrdJiF-8sVM&usqp=CAU";
            /// Exceptua las pantallas que no quiero que valide (las que no necesitan un usuario logueado)
            if (!(Page is Login || Page is Default || Page is Registro || Page is Error))
            {
                /// Si no hay una sesionActiva (devolvió false), redirigimos a login para iniciar sesion
                if (!Seguridad.sesionActiva(Session["usuario"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Usuario user = (Usuario)Session["usuario"];
                    lblUser.Text = user.Email;                   
                    if(!string.IsNullOrEmpty(user.ImagenPerfil))
                        imgAvatar.ImageUrl = "~/Images/" + user.ImagenPerfil;
                }
            }
        }

        protected void brnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx", false);
        }
    }
}