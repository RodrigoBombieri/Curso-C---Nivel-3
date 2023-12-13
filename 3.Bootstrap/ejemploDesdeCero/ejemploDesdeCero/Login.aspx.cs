using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploDesdeCero
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text; /// Obtengo el valor del campo email
            string password = txtPassword.Text; /// Obtengo el valor del campo password


        }

        protected void OnTextChangedHandler(object sender, EventArgs e)
        {
            TextBox currentTextBox = (TextBox)sender;

            if (currentTextBox.Text != "")
            {
                currentTextBox.CssClass = "form-control is-valid";
            }
            else
            {
                currentTextBox.CssClass = "form-control is-invalid";
            }

            /// Ver como hacer para que cambie el foco al proximo campo



        }
    }
}