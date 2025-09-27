using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOAS
{
    public partial class EvaluatorData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Columns[13].Visible = false;
            con.Open();
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            SqlCommand src = new SqlCommand("Select * from EvaluatorData where MobileNumber='" + MobileNumber.Text + "'", con);
            SqlDataReader idr = src.ExecuteReader();
            if (idr.HasRows)
            {
                idr.Close();
                Label1.Text = "Mobile Number already exists Please go to update for any changes";
                Label1.Visible = true;
                GridView1.Visible = false;
            }
            else if (NameoftheInstitution.Text == "" || PlaceoftheInstitution.Text == "" || Designation.SelectedIndex == 0 || NameoftheDepartment.SelectedIndex == 0 || EmailID.Text == "" || ResidentialAddress.Text == "" || BankName.Text == "" || AccountNumber.Text == "" || BranchName.Text == "" || IFSCCode.Text == "" || NameasperBank.Text == "" || YearsofExperience.Text == "")
            {
                Label1.Text = "Please Fill All Fields";
                Label1.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                idr.Close();
                Random gen = new Random();
                SqlCommand cmd = new SqlCommand("insert into EvaluatorData values('" + NameoftheDepartment.SelectedValue + "','" + NameoftheInstitution.Text + "','" + PlaceoftheInstitution.Text + "','" + Designation.SelectedValue + "','" + MobileNumber.Text + "','" + EmailID.Text + "','" + ResidentialAddress.Text + "','" + BankName.Text + "','" + BranchName.Text + "','" + AccountNumber.Text + "','" + IFSCCode.Text + "','" + NameasperBank.Text + "','" + YearsofExperience.Text + "','"+ gen.Next(000000, 999999) +"')", con);
                if (cmd.ExecuteNonQuery() == 1)
                {
                    Response.Write("<script>alert('Data Has been Inserted')</script>");
                    GridView1.DataBind();
                    GridView2.DataBind();
                    View_Click(null, null);
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (MobileNumber.Text != "")
            {
                View_Click(null, null);
                GridView1.AutoGenerateEditButton = true;
            }
            else
            {
                GridView2.Visible = false;
                GridView1.Visible = false;
                Label1.Text = "Enter Valid MobileNumber as ID";
                Label1.Visible = true;
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            MobileNumber.Text = "";
            NameoftheInstitution.Text = "";
            PlaceoftheInstitution.Text = "";
            Designation.SelectedIndex = 0;
            NameoftheDepartment.SelectedIndex = 0;
            EmailID.Text = "";
            ResidentialAddress.Text = "";
            BankName.Text = "";
            AccountNumber.Text = "";
            BranchName.Text = "";
            IFSCCode.Text = "";
            NameasperBank.Text = "";
            YearsofExperience.Text = "";
            Label1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            if (MobileNumber.Text != "")
            {
                View_Click(null, null);
                GridView1.Columns[13].Visible = true;
            }
            else
            {
                GridView2.Visible = false;
                GridView1.Visible = false;
                Label1.Text = "Enter valid Mobile Number as ID";
                Label1.Visible = true;
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void MobileNumber_TextChanged(object sender, EventArgs e)
        {
            SqlCommand fill = new SqlCommand("select * from EvaluatorData where MobileNumber='" + MobileNumber.Text + "'", con);
            SqlDataReader fillr = fill.ExecuteReader();
            if (fillr.Read())
            {
                NameoftheDepartment.SelectedValue = Convert.ToString(fillr.GetValue(0));
                NameoftheInstitution.Text = Convert.ToString(fillr.GetValue(1));
                PlaceoftheInstitution.Text = Convert.ToString(fillr.GetValue(2));
                Designation.SelectedValue = Convert.ToString(fillr.GetValue(3));
                EmailID.Text = Convert.ToString(fillr.GetValue(5));
                ResidentialAddress.Text = Convert.ToString(fillr.GetValue(6));
                BankName.Text = Convert.ToString(fillr.GetValue(7));
                BranchName.Text = Convert.ToString(fillr.GetValue(8));
                AccountNumber.Text = Convert.ToString(fillr.GetValue(9));
                IFSCCode.Text = Convert.ToString(fillr.GetValue(10));
                NameasperBank.Text = Convert.ToString(fillr.GetValue(11));
                YearsofExperience.Text = Convert.ToString(fillr.GetValue(12));
                fillr.Close();
            }
            else
            {
                NameoftheDepartment.SelectedIndex = 0;
                NameoftheInstitution.Text = "";
                PlaceoftheInstitution.Text = "";
                Designation.SelectedIndex = 0;
                EmailID.Text = "";
                ResidentialAddress.Text = "";
                BankName.Text = "";
                BranchName.Text = "";
                AccountNumber.Text = "";
                IFSCCode.Text = "";
                NameasperBank.Text = "";
                YearsofExperience.Text = "";
                Label1.Visible = false;
                fillr.Close();
            }
            GridView2.Visible = false;
            GridView1.Visible = true;
        }

        protected void LinkDelete_Click(object sender, EventArgs e)
        {
            int index = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
            string id = GridView1.Rows[index].Cells[4].Text;
            SqlCommand ddr = new SqlCommand("Delete From EvaluatorData Where MobileNumber='" + id + "'", con);
            int t = ddr.ExecuteNonQuery();
            if (t > 0)
            {
                Response.Write("<script>alert('Record Deleted')</script>");
                Delete_Click(null, null);
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void View_Click(object sender, EventArgs e)
        {
            if (MobileNumber.Text == "")
            {
                SqlCommand data = new SqlCommand("select * from EvaluatorData", con);
                SqlDataReader datar = data.ExecuteReader();
                if (datar.Read())
                {
                    Label1.Visible = false;
                    GridView2.Visible = true;
                    GridView1.Visible = false;
                }
                else
                {
                    Label1.Text = "error";
                    Label1.Visible = true;
                }
                datar.Close();
            }
            else
            {
                GridView1.AutoGenerateEditButton = false;
                GridView1.Columns[13].Visible = false;
                SqlCommand cmd = new SqlCommand("select * from EvaluatorData where MobileNumber='" + MobileNumber.Text + "'", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    //sdr.Close();
                    Label1.Visible = false;
                    GridView1.Visible = true;
                    GridView2.Visible = false;
                }
                else
                {
                    sdr.Close();
                    Label1.Text = "The specified value does not exist in the database";
                    Label1.Visible = true;
                    MobileNumber_TextChanged(null, null);
                }
            }
        }

        protected void Insert_Click1(object sender, EventArgs e)
        {
            SqlCommand src = new SqlCommand("Select * from EvaluatorData where MobileNumber='" + MobileNumber.Text + "'", con);
            SqlDataReader idr = src.ExecuteReader();
            if (idr.HasRows)
            {
                idr.Close();
                Label1.Text = "Mobile Number already exists Please go to update for any changes";
                Label1.Visible = true;
                GridView1.Visible = false;
            }
            else if (NameoftheInstitution.Text == "" || PlaceoftheInstitution.Text == "" || Designation.SelectedIndex == 0 || NameoftheDepartment.SelectedIndex == 0 || EmailID.Text == "" || ResidentialAddress.Text == "" || BankName.Text == "" || AccountNumber.Text == "" || BranchName.Text == "" || IFSCCode.Text == "" || NameasperBank.Text == "" || YearsofExperience.Text == "")
            {
                Label1.Text = "Please Fill All Fields";
                Label1.Visible = true;
                GridView1.Visible = false;
            }
            else
            {
                idr.Close();
                Random gen = new Random();
                //Response.Write("<script>confirm('Name :' + NameasperBank.Text + '\n Mobile Number :' + MobileNumber.Text + '\n Email :' + EmailID.Text + '\n Department :' + NameoftheDepartment.SelectedValue + '\n Designation :' + Designation.SelectedValue + '\n Institution' + NameoftheInstitution.Text + '\n Place of Institution :' + PlaceoftheInstitution.Text + '\n Residential Address :' + ResidentialAddress.Text + '\n Bank Name :' + BankName.Text + '\n Branch :' + BranchName.Text + '\n IFSC code :' + IFSCCode.Text + 'Account Number :' + AccountNumber.Text + '\n Expirience :' +YearsofExperience.Text)</Script>");
                SqlCommand cmd = new SqlCommand("insert into EvaluatorData values('" + NameoftheDepartment.SelectedValue + "','" + NameoftheInstitution.Text + "','" + PlaceoftheInstitution.Text + "','" + Designation.SelectedValue + "','" + MobileNumber.Text + "','" + EmailID.Text + "','" + ResidentialAddress.Text + "','" + BankName.Text + "','" + BranchName.Text + "','" + AccountNumber.Text + "','" + IFSCCode.Text + "','" + NameasperBank.Text + "','" + YearsofExperience.Text + "','" + gen.Next(000000, 999999) + "')", con);
                if (cmd.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert('Data Has been Inserted')</script>");
                    GridView1.DataBind();
                    GridView2.DataBind();
                    View_Click(null, null);
                }
            }
        }
    }
}