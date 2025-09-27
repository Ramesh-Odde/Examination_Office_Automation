using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOAS
{
    public partial class PreviousData : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["values"] == null)
            {
                Response.Redirect("Login_page.aspx");
            }
            con.Open();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int index = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[index].FindControl("CheckBox1");
            if (cb.Checked)
                TextBox2.Text = GridView1.Rows[index].Cells[1].Text;
            else
                TextBox2.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Loaddata();
        }
        protected void Loaddata()
        {
            SqlCommand cou = new SqlCommand("select * from billform where mobilenumber='" + TextBox1.Text + "' and BillID='" + TextBox2.Text + "'", con);
            SqlDataReader bdr = cou.ExecuteReader();
            if (bdr.Read())
            {
                Session["name"] = Convert.ToString(bdr.GetValue(2));
                Session["designation"] = Convert.ToString(bdr.GetValue(3));
                Session["cexam"] = Convert.ToString(bdr.GetValue(4));
                Session["code"] = Convert.ToString(bdr.GetValue(5));
                Session["course"] = Convert.ToString(bdr.GetValue(6));
                Session["subject"] = Convert.ToString(bdr.GetValue(7));
                Session["semister"] = Convert.ToString(bdr.GetValue(8));
                Session["acno"] = Convert.ToString(bdr.GetValue(10));
                Session["bankname"] = Convert.ToString(bdr.GetValue(11));
                Session["ifsc"] = Convert.ToString(bdr.GetValue(12));
                Session["tscripts"] = Convert.ToString(bdr.GetValue(13));
                Session["money20"] = Convert.ToString(bdr.GetValue(14));
                Session["extra"] = Convert.ToString(bdr.GetValue(15));
                Session["gt"] = Convert.ToString(bdr.GetValue(17));
                Session["date"] = Convert.ToString(bdr.GetValue(18));
                Session["inwords"] = ConvertWholeNumber(Convert.ToString(Convert.ToInt32(bdr.GetValue(17))));
                Response.Redirect("~/BillFormDisplay1.aspx");
            }
            else
            {
                Label1.Text = "BillID is Invalid";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (TextBox1.Text != "" && TextBox1.Text.Length == 10)
            {
                SqlCommand vi = new SqlCommand("select * from Billform where MobileNumber='" + TextBox1.Text + "'", con);
                SqlDataReader sdr = vi.ExecuteReader();
                if (sdr.Read())
                {
                    GridView1.Visible = true;
                }
                else
                {
                    Label1.Text = "Data Not Found....!";
                    Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Enter the Valid ID";
                Label1.Visible = true;
            }

        }

        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            int index = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[index].FindControl("CheckBox1");
            if (cb.Checked)
                TextBox2.Text = GridView1.Rows[index].Cells[1].Text;
            else
                TextBox2.Text = "";
        }
        private static String ones(String Number)
        {
            int _Number = Convert.ToInt32(Number);
            String name = "";
            switch (_Number)
            {

                case 1:
                    name = "One";
                    break;
                case 2:
                    name = "Two";
                    break;
                case 3:
                    name = "Three";
                    break;
                case 4:
                    name = "Four";
                    break;
                case 5:
                    name = "Five";
                    break;
                case 6:
                    name = "Six";
                    break;
                case 7:
                    name = "Seven";
                    break;
                case 8:
                    name = "Eight";
                    break;
                case 9:
                    name = "Nine";
                    break;
            }
            return name;
        }

        private static String tens(String Number)
        {
            int _Number = Convert.ToInt32(Number);
            String name = null;
            switch (_Number)
            {
                case 10:
                    name = "Ten";
                    break;
                case 11:
                    name = "Eleven";
                    break;
                case 12:
                    name = "Twelve";
                    break;
                case 13:
                    name = "Thirteen";
                    break;
                case 14:
                    name = "Fourteen";
                    break;
                case 15:
                    name = "Fifteen";
                    break;
                case 16:
                    name = "Sixteen";
                    break;
                case 17:
                    name = "Seventeen";
                    break;
                case 18:
                    name = "Eighteen";
                    break;
                case 19:
                    name = "Nineteen";
                    break;
                case 20:
                    name = "Twenty";
                    break;
                case 30:
                    name = "Thirty";
                    break;
                case 40:
                    name = "Fourty";
                    break;
                case 50:
                    name = "Fifty";
                    break;
                case 60:
                    name = "Sixty";
                    break;
                case 70:
                    name = "Seventy";
                    break;
                case 80:
                    name = "Eighty";
                    break;
                case 90:
                    name = "Ninety";
                    break;
                default:
                    if (_Number > 0)
                    {
                        name = tens(Number.Substring(0, 1) + "0") + " " + ones(Number.Substring(1));
                    }
                    break;
            }
            return name;
        }

        private static String ConvertWholeNumber(String Number)
        {
            string word = "";
            try
            {
                bool beginsZero = false;//tests for 0XX    
                bool isDone = false;//test if already translated    
                double dblAmt = (Convert.ToDouble(Number));
                //if ((dblAmt > 0) && number.StartsWith("0"))    
                if (dblAmt > 0)
                {//test for zero or digit zero in a nuemric    
                    beginsZero = Number.StartsWith("0");

                    int numDigits = Number.Length;
                    int pos = 0;//store digit grouping    
                    String place = "";//digit grouping name:hundres,thousand,etc...    
                    switch (numDigits)
                    {
                        case 1://ones' range    

                            word = ones(Number);
                            isDone = true;
                            break;
                        case 2://tens' range    
                            word = tens(Number);
                            isDone = true;
                            break;
                        case 3://hundreds' range    
                            pos = (numDigits % 3) + 1;
                            place = " Hundred ";
                            break;
                        case 4://thousands' range    
                        case 5:
                        case 6:
                            pos = (numDigits % 4) + 1;
                            place = " Thousand ";
                            break;
                        case 7://millions' range    
                        case 8:
                        case 9:
                            pos = (numDigits % 7) + 1;
                            place = " Million ";
                            break;
                        case 10://Billions's range    
                        case 11:
                        case 12:

                            pos = (numDigits % 10) + 1;
                            place = " Billion ";
                            break;
                        //add extra case options for anything above Billion...    
                        default:
                            isDone = true;
                            break;
                    }
                    if (!isDone)
                    {//if transalation is not done, continue...(Recursion comes in now!!)    
                        if (Number.Substring(0, pos) != "0" && Number.Substring(pos) != "0")
                        {
                            try
                            {
                                word = ConvertWholeNumber(Number.Substring(0, pos)) + place + ConvertWholeNumber(Number.Substring(pos));
                            }
                            catch { }
                        }
                        else
                        {
                            word = ConvertWholeNumber(Number.Substring(0, pos)) + ConvertWholeNumber(Number.Substring(pos));
                        }

                        //check for trailing zeros    
                        //if (beginsZero) word = " and " + word.Trim();    
                    }
                    //ignore digit grouping names    
                    if (word.Trim().Equals(place.Trim())) word = "";
                }
            }
            catch { }
            return word.Trim();
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int index = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            SqlCommand cmd = new SqlCommand("delete from billform where billid='" + GridView1.Rows[index].Cells[1].Text + "'", con);
            if (cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Deleted')</script>");
                GridView1.DataBind();
                //LinkButton1_Click(null, null);
            }
            else
            {
                Response.Write("<script>alert('Record Deletion failed')</script>");
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["values"] = null;
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Login_page.aspx");
        }
    }
}