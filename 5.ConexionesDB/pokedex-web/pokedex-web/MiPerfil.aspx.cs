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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["trainee"]))
                    {
                        Trainee user = (Trainee)Session["trainee"];
                        txtEmail.Text = user.Email;
                        txtEmail.ReadOnly = true;
                        txtNombre.Text = user.Nombre;
                        txtApellido.Text = user.Apellido;
                        txtFechaNacimiento.Text = user.FechaNacimiento.ToString("yyyy-MM-dd");
                        if(!string.IsNullOrEmpty(user.ImagenPerfil))
                            imgNuevoPerfil.ImageUrl = "~/Images/" + user.ImagenPerfil;
                        
                    }
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                TraineeNegocio negocio = new TraineeNegocio();
                /// Por cada persona que se loguea se guarda una imagen
                /// va a guardar toda la ruta hasta la carpeta images
                /// PARA ESCRIBIR IMG SE USA EL ./
                string ruta = Server.MapPath("./Images/");
                /// obtengo el usuario logueado
                Trainee user = (Trainee)Session["trainee"];
                /// guardo la imagen en la carpeta images con el nombre perfil y el id del usuario
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id + ".jpg");

                /// guardo el nombre de la imagen en la base de datos
                user.ImagenPerfil = "perfil-" + user.Id + ".jpg";
                /// actualizo el usuario en la base de datos
                
                user.Nombre = txtNombre.Text;
                user.Apellido = txtApellido.Text;
               
                user.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);
                /// Actualizo el usuario en la base de datos
                negocio.actualizar(user);

                /// actualizar imagen del avatar

                Image img = (Image)Master.FindControl("imgAvatar");
                /// PARA LEER IMG SE USA LA ~/ Y EL NOMBRE DE LA CARPETA
                img.ImageUrl = "~/Images/" + user.ImagenPerfil;
                

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
            }
        }
    }
}