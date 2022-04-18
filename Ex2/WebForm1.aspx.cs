using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["Login"] = UserNameBox.Text;
                Session["Password"] = PasswordBox.Text;
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}