using System;

namespace EOAS
{
    public partial class Modulespage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["values"] == null)
            {
                Response.Redirect("Login_page.aspx");
            }
            Label1.Text = Convert.ToString(Session["values"]);
        }
        protected void Logout_click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login_page.aspx");
        }
    }
}