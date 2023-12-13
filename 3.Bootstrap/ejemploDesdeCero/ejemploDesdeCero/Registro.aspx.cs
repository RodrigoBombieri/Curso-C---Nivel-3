using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ejemploDesdeCero
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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

            // Encontrar el siguiente control en el orden de tabulación
            Control nextControl = FindNextControl(currentTextBox);

            // Establecer el foco en el siguiente control
            if (nextControl != null)
            {
                Page.SetFocus(nextControl);
            }
        }

        // Método para encontrar el siguiente control en el orden de tabulación
        private Control FindNextControl(Control currentControl)
        {
            Page page = currentControl.Page;
            int currentIndex = page.Controls.IndexOf(currentControl);

            if (currentIndex < page.Controls.Count - 1)
            {
                return page.Controls[currentIndex + 1];
            }

            return null;
        }

    }
}