using System;
using System.Data.SqlClient;

namespace EOAS
{
    public partial class LoginRegister1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand search = new SqlCommand("select * from login where username='" + name.Text + "'", con);
            SqlDataReader sdr = search.ExecuteReader();
            if (sdr.Read())
            {
                LinkButton1.Visible = true;
            }
            else if (password.Text == cpassword.Text)
            {
                sdr.Close();
                SqlCommand insert = new SqlCommand("insert into login values('" + name.Text + "','" + password.Text + "')", con);
                if (insert.ExecuteNonQuery() > 0)
                {
                    Label1.Text = "registration Success";
                    LinkButton1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Check Password And Try again";
            }
            Label1.Visible = true;
            name.Text = "";
            password.Text = "";
        }
    }
}