using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominioP;
using negocioP;

namespace pokedex_web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Trainee trainee = new Trainee();
            TraineeNegocio negocio = new TraineeNegocio();

            try
            {
                /// capturo los datos ingresados en el formulario
                trainee.Email = txtEmail.Text;
                trainee.Pass = txtPassword.Text;
                /// Esto va a devolver un objeto trainee con todos los datos del usuario y el id y si es admin o no
                if (negocio.login(trainee))
                {
                    /// si el login es correcto guardo el objeto en session y redirecciono a la pagina principal
                    Session.Add("trainee", trainee);                  
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    /// si el login es incorrecto redirecciono a la pagina de error
                    Session.Add("error", "Usuario o contraseña incorrectos");
                    Response.Redirect("Error.aspx");
                }
                
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx");
            }
        }
    }
}