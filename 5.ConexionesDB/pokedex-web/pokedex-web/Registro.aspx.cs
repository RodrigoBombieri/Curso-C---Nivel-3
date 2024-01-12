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
                
                // Cargo los datos ingresados en el formulario
                user.Email = txtEmail.Text;
                user.Pass = txtPassword.Text;
                /// Con esos datos realizo la insercion en la base de datos, y me devuelve el id del usuario
                /// Guardo el id en el objeto user
                user.Id = traineeNegocio.insertarNuevo(user);
                /// Le envio el objeto a la session para que quede abierta (logueado)
                Session.Add("trainee", user);

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