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
        public bool confirmaEliminar {  get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            confirmaEliminar = false;
            try
            {
                /// Configuracion de la pantalla
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

                /// MODIFICACION DE DISCO
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                if (id != "" && !IsPostBack)
                {
                    DiscoNegocio negocio = new DiscoNegocio();
                    List<Disco> lista = negocio.listar(id);
                    Disco seleccionado = lista[0];

                    /// precargar los campos
                    txtId.Text = id;
                    txtTitulo.Text = seleccionado.Titulo;
                    txtCantidadCanciones.Text = seleccionado.CantidadCanciones.ToString();
                    txtUrlImagen.Text = seleccionado.UrlImagenTapa;
                    imgDisco.ImageUrl = seleccionado.UrlImagenTapa;

                    ddlEdicion.SelectedValue = seleccionado.Edicion.Id.ToString();
                    ddlEstilo.SelectedValue = seleccionado.Estilo.Id.ToString();

                }
                

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
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

                if (Request.QueryString["id"] != null)
                {
                    nuevo.Id = int.Parse(txtId.Text);
                    negocio.modificarConSP(nuevo);
                }
                else
                {
                    negocio.agregarConSP(nuevo);
                }
                Response.Redirect("DiscosLista.aspx");

            }
            catch (Exception ex)
            {

                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgDisco.ImageUrl = txtUrlImagen.Text;
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            confirmaEliminar = true;
        }

        protected void btnConfirmaEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkConfirmaEliminar.Checked)
                {
                    DiscoNegocio negocio = new DiscoNegocio();
                    negocio.eliminar(int.Parse(txtId.Text));
                    Response.Redirect("DiscosLista.aspx");
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.Message);
                Response.Redirect("Error.aspx", false);
            }
        }
    }
}