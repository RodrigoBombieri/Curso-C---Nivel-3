using negocioD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominioD;

namespace discos_web
{
    public partial class FormularioDisco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            try
            {
                if (!IsPostBack)
                {
                    EdicionNegocio edicionNegocio = new EdicionNegocio();
                    EstiloNegocio estiloNegocio = new EstiloNegocio();
                    List<Edicion> listaEdiciones = edicionNegocio.listar();
                    List<Estilo> listaEstilos = estiloNegocio.listar();

                    ddlEdicion.DataSource = listaEdiciones;
                    ddlEdicion.DataValueField = "Id";
                    ddlEdicion.DataTextField = "Descripcion";
                    ddlEdicion.DataBind();

                    ddlEstilo.DataSource = listaEstilos;
                    ddlEstilo.DataValueField = "Id";
                    ddlEstilo.DataTextField = "Descripcion";
                    ddlEstilo.DataBind();
                }

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
                /// redireccionar a pagina de error
            }

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Disco nuevo = new Disco();
                DiscoNegocio negocio = new DiscoNegocio();

                nuevo.Titulo = txtTitulo.Text;
                nuevo.CantidadCanciones = int.Parse(txtCantidadCanciones.Text);
                nuevo.UrlImagenTapa = txtUrlImagen.Text;

                nuevo.Edicion = new Edicion();
                nuevo.Edicion.Id = int.Parse(ddlEdicion.SelectedValue);

                nuevo.Estilo = new Estilo();
                nuevo.Estilo.Id = int.Parse(ddlEstilo.SelectedValue);

                negocio.agregarConSP(nuevo);
                Response.Redirect("DiscosLista.aspx");

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
                /// redireccionar a pagina de error
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgDisco.ImageUrl = txtUrlImagen.Text;
        }
    }
}