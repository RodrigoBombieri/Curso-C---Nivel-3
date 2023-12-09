using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PortfolioASP
{
    public partial class Proyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCheck1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Label1.Text = "Checked";
            }
            else
            {
                Label1.Text = "Unchecked";
            }
        }

    }
}