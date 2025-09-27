using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Welcome_page
{
    public partial class BundleSlip : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Bundlefrom.Text == "" || Bundleto.Text == "" || NoofScripts.Text == "" || DateofIssue.Text == "" || DateofReturn.Text == "" || DropDownList1.SelectedIndex == 0 || MobileNumber.Text == "")
            {
                Label2.Text = "Please Fill All Fields";
                Gridview1.Visible = false;
                Label2.Visible = true;
            }
            else
            {
                Label2.Visible = false;
                SqlCommand cod = new SqlCommand("select CodeNoto from BundleSlip where CodeNofrom='" + Bundlefrom.Text + "' and MobileNumber='" + MobileNumber.Text + "' and CodeNoto='" + Bundleto.Text + "'", con);
                SqlDataReader codr = cod.ExecuteReader();
                if (codr.Read())
                {
                    codr.Close();
                    Label2.Text = "Bundles assigned already";
                    Button5_Click1(null, null);
                    Label2.Visible = true;
                }
                else
                {
                    codr.Close();
                    Random gid = new Random();
                    int id = gid.Next(00000000, 99999999);
                    SqlCommand src = new SqlCommand("Select * from BundleSlip where ID='" + id + "'", con);
                    SqlDataReader idr = src.ExecuteReader();
                    if (idr.Read())
                    {
                        idr.Close();
                        Button6_Click(null, null);
                    }
                    else
                    {
                        idr.Close();
                        SqlCommand cmd = new SqlCommand("insert into BundleSlip values('" + id + "','" + EvaluatorName.Text + "','" + MobileNumber.Text + "','" + Address.Text + "','" + DropDownList1.SelectedValue + "','" + SubjectName.Text + "','" + Bundlefrom.Text + "','" + Bundleto.Text + "','" + BundlesAssigned.SelectedValue + "','" + NoofScripts.Text + "','" + DateofIssue.Text + "','" + DateofReturn.Text + "','" + null + "')", con);
                        if (cmd.ExecuteNonQuery() > 0)
                        {
                            Response.Write("<script>alert('Data Has been Inserted')</script>");
                            Button5_Click1(null, null);
                        }
                    }

                }
            }
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Label2.Visible = false;
            if (MobileNumber.Text != "" && MobileNumber.Text.Length == 10)
            {
                SqlCommand view = new SqlCommand("Select * from Bundleslip where MobileNumber='" + MobileNumber.Text + "'", con);
                SqlDataReader sdr = view.ExecuteReader();
                if (sdr.Read())
                {
                    Gridview1.DataBind();
                    Gridview1.Visible = true;
                    sdr.Close();
                }
                else
                {
                    Label2.Text = "The specified value does not exist in the database";
                    Label2.Visible = true;
                }
            }
            else
            {
                Label2.Text = "Enter a Valid Mobile Number";
                Label2.Visible = true;
            }
            Gridview1.Columns[13].Visible = true;
            Gridview1.AutoGenerateEditButton = false;
            Gridview1.Columns[14].Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Button5_Click1(null, null);
            Gridview1.Columns[13].Visible = false;
            Gridview1.AutoGenerateEditButton = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Button5_Click1(null, null);
            Gridview1.Columns[13].Visible = false;
            Gridview1.Columns[14].Visible = true;
        }
        protected void Gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {

            int index = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
            Session["name1"] = Gridview1.Rows[index].Cells[1].Text;
            Session["subject"] = Gridview1.Rows[index].Cells[5].Text;
            Session["address"] = Gridview1.Rows[index].Cells[3].Text;
            Session["nscripts"] = Gridview1.Rows[index].Cells[9].Text;
            Session["issuedate"] = Gridview1.Rows[index].Cells[10].Text;
            Session["returndate"] = Gridview1.Rows[index].Cells[11].Text;
            Response.Redirect("~/BundleSlipPreview1.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int index = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
            string id = Gridview1.Rows[index].Cells[0].Text;
            SqlCommand ddr = new SqlCommand("Delete From BundleSlip Where ID='" + id + "'", con);
            int t = ddr.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Record Deleted ')</script>");
                Button3_Click(null, null);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            EvaluatorName.Text = "";
            MobileNumber.Text = "";
            Address.Text = "";
            DropDownList1.SelectedIndex = 0;
            Bundlefrom.Text = "";
            Bundleto.Text = "";
            BundlesAssigned.SelectedIndex = 0;
            NoofScripts.Text = "";
            DateofIssue.Text = "";
            DateofReturn.Text = "";
        }

        protected void MobileNumber_TextChanged(object sender, EventArgs e)
        {
            SqlCommand ver = new SqlCommand("select * from evaluatordata where mobilenumber='" + MobileNumber.Text + "'", con);
            SqlDataReader verdr = ver.ExecuteReader();
            if (verdr.Read())
            {
                EvaluatorName.Text = Convert.ToString(verdr.GetValue(11));
                Address.Text = Convert.ToString(verdr.GetValue(6));
            }
            verdr.Close();
        }

        protected void bundleto_TextChanged(object sender, EventArgs e)
        {
            if (Bundlefrom.Text != "")
                NoofScripts.Text = Convert.ToString(Convert.ToInt32(Bundleto.Text) - Convert.ToInt32(Bundlefrom.Text) + 1);
        }

        protected void bundlefrom_TextChanged(object sender, EventArgs e)
        {
            if (Bundleto.Text != "")
                NoofScripts.Text = Convert.ToString(Convert.ToInt32(Bundleto.Text) - Convert.ToInt32(Bundlefrom.Text) + 1);
        }

        protected void MobileNumber_TextChanged1(object sender, EventArgs e)
        {
            SqlCommand ver = new SqlCommand("select * from evaluatordata where mobilenumber='" + MobileNumber.Text + "'", con);
            SqlDataReader verdr = ver.ExecuteReader();
            if (verdr.Read())
            {
                EvaluatorName.Text = Convert.ToString(verdr.GetValue(11));
                Address.Text = Convert.ToString(verdr.GetValue(6));
            }
            verdr.Close();
            Button5_Click1(null, null);
        }
    }
}
