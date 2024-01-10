using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocioP;
using dominioP;

namespace pokedex_web
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
                Trainee user = new Trainee();
                TraineeNegocio traineeNegocio = new TraineeNegocio();
                EmailService emailService = new EmailService();

                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                /// capturar el id sirve para saber que usurio esta ingresando
                int id = traineeNegocio.insertarNuevo(user);

                emailService.armarCorreo(user.Email, "Bienvenida Taineer", "Hola te damos la bienvenida a la App");
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