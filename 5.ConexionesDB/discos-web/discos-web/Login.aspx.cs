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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            UsuarioNegocio negocio = new UsuarioNegocio();

            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;
                
                if(Validacion.validaTextoVacio(txtEmail) || Validacion.validaTextoVacio(txtPassword))
                {
                    Session.Add("error", "Debe completar ambos campos.");
                    Response.Redirect("Error.aspx");
                }


                usuario.Email = txtEmail.Text;
                usuario.Pass = txtPassword.Text;
                /// Nos va a devolver el objeto cargado con el email y pass, y ademas al loguearse
                /// le carga el id y si es admin o no
                if (negocio.login(usuario))
                {
                    /// Nos indica si hay una session activa (usuario logueado) y guarda en session
                    /// Para que se "guarde" el login del usuario y no tenga que hacerlo a cada rato
                    Session.Add("usuario", usuario);

                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    Session.Add("error", "usuario o pass incorrectos");
                    Response.Redirect("Error.aspx", false);
                }

            }
            catch (System.Threading.ThreadAbortException ex) { }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}