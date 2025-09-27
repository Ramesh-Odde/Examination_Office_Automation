using System;
using System.Data.SqlClient;

namespace EOAS
{
    public partial class Login_page : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string USERNAME = TextBox1.Text;
            string PASSWORD = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select * from Login where Username=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", USERNAME);
            cmd.Parameters.AddWithValue("@password", PASSWORD);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["values"] = TextBox1.Text;
                Server.Transfer("~/Modules.aspx");
            }
            else
            {
                Label1.Text = "Invalid Credinentials";
                Label1.Visible = true;
            }
            if (USERNAME == "")
            {
                Label2.Text = "Enter User Name";
                Label2.Visible = true;
            }
            else
                Label2.Visible = false;
            if (PASSWORD == "")
            {
                Label3.Text = "Enter Password";
                Label3.Visible = true;
            }
            else
                Label3.Visible = false;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginRegister.aspx");
        }
    }
}
