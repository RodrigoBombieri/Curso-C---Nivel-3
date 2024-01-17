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
    public partial class MiPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    if (Seguridad.sesionActiva(Session["usuario"]))
                    {
                        Usuario user = (Usuario)Session["usuario"];
                        txtEmail.Text = user.Email;
                        txtEmail.ReadOnly = true;
                        txtNombre.Text = user.Nombre;
                        txtApellido.Text = user.Apellido;
                        txtFechaNacimiento.Text = user.FechaNacimiento.ToString("yyyy-MM-dd");
                        if (!string.IsNullOrEmpty(user.ImagenPerfil))
                            imgNuevoPerfil.ImageUrl = "~/Images/" + user.ImagenPerfil;
                    }
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Page.Validate();
                if (!Page.IsValid)
                    return;


                UsuarioNegocio negocio = new UsuarioNegocio();
                Usuario usuario = (Usuario)Session["usuario"];

                if (txtImagen.PostedFile.FileName != "")
                {
                    string ruta = Server.MapPath("./Images/");
                    txtImagen.PostedFile.SaveAs(ruta + "perfil-" + usuario.Id + ".jpg");
                    usuario.ImagenPerfil = "perfil-" + usuario.Id + ".jpg";
                }

                usuario.Nombre = txtNombre.Text;
                usuario.Apellido = txtApellido.Text;
                usuario.FechaNacimiento = DateTime.Parse(txtFechaNacimiento.Text);
                negocio.actualizar(usuario);

                Image img = (Image)Master.FindControl("imgAvatar");
                img.ImageUrl = "~/Images/" + usuario.ImagenPerfil;
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}