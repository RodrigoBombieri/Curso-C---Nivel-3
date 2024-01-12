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
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usuario = new Usuario();
                UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
                EmailService emailService = new EmailService();

                usuario.Email = txtEmail.Text;
                usuario.Pass = txtPassword.Text;
                usuario.Id = usuarioNegocio.insertarNuevo(usuario);

                Session.Add("usuario", usuario);

                emailService.armarCorreo(usuario.Email, "Bienvenido, que sea rock!", "Te damos la bienvenida a la App");
                emailService.enviarCorreo();
                Response.Redirect("Default.aspx", false);

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }
        }
    }
}