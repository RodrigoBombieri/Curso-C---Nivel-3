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
    public partial class FormularioPokemon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Enabled = false;
            try
            {
                /// Configuracion inicial de la pantalla
                if (!IsPostBack)
                {
                    ElementoNegocio negocio = new ElementoNegocio();
                    List<Elemento> lista = negocio.listar();

                    ddlTipo.DataSource = lista;
                    ddlTipo.DataValueField = "Id";
                    ddlTipo.DataTextField = "Descripcion";
                    ddlTipo.DataBind();

                    ddlDebilidad.DataSource = lista;
                    ddlDebilidad.DataValueField = "Id";
                    ddlDebilidad.DataTextField = "Descripcion";
                    ddlDebilidad.DataBind();
                }

                /// Configuracion si estamos MODIFICANDO un pokemon
                /// guardamos en la variable id el id que viene por querystring en caso de que sea 
                /// valido, sino guardamos un string vacio
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";
                /// Si el id es distinto de vacio y no es un postback, es decir, 
                /// si no se esta recargando la pagina, ingresamos al if
                if (id != "" && !IsPostBack)
                {
                    PokemonNegocio negocio = new PokemonNegocio();
                    //List<Pokemon> lista = negocio.listar(id);
                    //Pokemon seleccionado = lista[0];
                    /// Como ya sabemos que devuelve un solo elemento, podemos hacer lo siguiente:
                    /// va a guardar en la variable seleccionado el primer elemento de la lista
                    Pokemon seleccionado = (negocio.listar(id))[0];

                    /// Pre cargamos los campos del formulario
                    txtId.Text = id;
                    txtNumero.Text = seleccionado.Numero.ToString();
                    txtNombre.Text = seleccionado.Nombre;
                    txtDescripcion.Text = seleccionado.Descripcion;
                    txtUrlImagen.Text = seleccionado.UrlImagen;
                    imgPokemon.ImageUrl = seleccionado.UrlImagen;

                    ddlTipo.SelectedValue = seleccionado.Tipo.Id.ToString();
                    ddlDebilidad.SelectedValue = seleccionado.Debilidad.Id.ToString();
                }
                

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
                /// Redirigimos a la pantalla de error
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Pokemon nuevo = new Pokemon();
                PokemonNegocio negocio = new PokemonNegocio();

                nuevo.Numero = int.Parse(txtNumero.Text);
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtUrlImagen.Text;

                nuevo.Tipo = new Elemento();
                nuevo.Tipo.Id = int.Parse(ddlTipo.SelectedValue);

                nuevo.Debilidad = new Elemento();
                nuevo.Debilidad.Id = int.Parse(ddlDebilidad.SelectedValue);

                /// Si estamos modificando, el id viene por querystring
                if (Request.QueryString["id"] != null)
                {
                    /// Si entro aca es porque viene un id por querystring, entonces estoy modificando
                    /// le mando el id que viene por querystring al objeto nuevo
                    nuevo.Id = int.Parse(txtId.Text);
                    negocio.modificarConSP(nuevo);
                }
                else
                {
                    negocio.agregarConSP(nuevo);
                }

                Response.Redirect("PokemonsLista.aspx", false);
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
                /// Redirigimos a la pantalla de error
            }
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            imgPokemon.ImageUrl = txtUrlImagen.Text;
        }
    }
}