using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace ecommerce_web
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            UsuarioNegocio usuarioNegocio = new UsuarioNegocio();
            EmailService emailService = new EmailService();

            usuario.Email = txtEmail.Text;
            usuario.Pass = txtPassword.Text;

            int id = usuarioNegocio.insertarNuevo(usuario);

            emailService.armarCorreo(usuario.Email, "Bienvenido al Ecommerce Web!", "Hola, te damos la bienvenida a la App");
            emailService.enviarCorreo();
            Response.Redirect("Default.aspx", false);

        }
    }
}