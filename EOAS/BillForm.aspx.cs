using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EOAS
{
    public partial class BillForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-12BKQKU\SQLEXPRESS;Initial Catalog=evaluator;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            LinkButton6.Visible = false;
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select MobileNumber from EvaluatorData where MobileNumber='" + TextBox1.Text + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                sdr.Close();
                Loaddata();

            }
            else
            {
                Label3.Text = "invalid id";
                Label3.Visible = true;
            }

        }
        protected void Examiner_CheckedChanged(object sender, EventArgs e)
        {
            cexm.Text = "Examiner";
        }

        protected void cexaminer_CheckedChanged(object sender, EventArgs e)
        {
            cexm.Text = "Examiner & Chief Examiner";
        }
        protected void cexmonly_CheckedChanged(object sender, EventArgs e)
        {
            cexm.Text = "Chief Examiner";
        }
        protected void Loaddata()
        {
            SqlCommand sb = new SqlCommand("select * from BundleSlip Where MobileNumber='" + TextBox1.Text + "' and ID='" + TextBox2.Text + "'", con);
            SqlDataReader bdr = sb.ExecuteReader();
            if (bdr.Read())
            {
                Session["subject"] = Convert.ToString(bdr.GetValue(5));
                Session["date"] = Convert.ToString(bdr.GetValue(12));
                Session["bassigned"] = Convert.ToString(bdr.GetValue(8));
                Session["nscripts"] = Convert.ToString(bdr.GetValue(9));
                Session["name"] = Convert.ToString(bdr.GetValue(1));
                Session["code"] = Convert.ToString(bdr.GetValue(6)) + "-" + Convert.ToString(bdr.GetValue(7));
                bdr.Close();
            }
            SqlCommand des = new SqlCommand("select * from EvaluatorData where MobileNumber='" + TextBox1.Text + "'", con);
            SqlDataReader edr = des.ExecuteReader();
            if (edr.Read())
            {
                Session["designation"] = Convert.ToString(edr.GetValue(3));
                Session["acno"] = Convert.ToString(edr.GetValue(9));
                Session["bankname"] = Convert.ToString(edr.GetValue(8));
                Session["ifsc"] = Convert.ToString(edr.GetValue(10));
                edr.Close();
            }
            int x = Convert.ToInt32(Session["bassigned"]) * Convert.ToInt32(Session["nscripts"]);
            int a = 20 * x;
            int y;
            if ( Examiner.Checked)
            {
                y = 0;
            }
            else if ( cexmonly.Checked)
            {
                x = 0;
                a = 0;
                y = 1200;
            }
            else
            {
                y = 1200;
            }
            int t = a + y + 200;
            Session["gt"] = Convert.ToString(t);
            Session["semister"] = Convert.ToString(DropDownList1.SelectedItem);
            Session["course"] = TextBox3.Text;
            Session["tscripts"] = Convert.ToString(x);
            Session["extra"] = Convert.ToString(y);
            Session["money20"] = Convert.ToString(a);
            Session["cexam"] = cexm.Text;
            Session["inwords"] = ConvertWholeNumber(Convert.ToString(t));
            SqlCommand src = new SqlCommand("select BillID from BillForm where BundleID='" + TextBox2.Text + "'", con);
            SqlDataReader srcdr = src.ExecuteReader();
            if (srcdr.Read())
            {
                Label1.Text = "Bill Already Generated Check in previous Bills or ";
                Label1.Visible = true;
                LinkButton6.Visible=true;
                srcdr.Close();
            }
            else
            {
                srcdr.Close();
                SqlCommand bill = new SqlCommand("Insert into BillForm values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + Convert.ToString(Session["name"]) + "','" + Convert.ToString(Session["designation"]) + "','" + cexm.Text + "','" + Convert.ToString(Session["code"]) + "','" + Convert.ToString(Session["course"]) + "','" + Convert.ToString(Session["subject"]) + "','" + Convert.ToString(Session["semister"]) + "','" + TextBox2.Text + "','" + Convert.ToString(Session["acno"]) + "','" + Convert.ToString(Session["bankname"]) + "','" + Convert.ToString(Session["ifsc"]) + "','" + Convert.ToString(Session["tscripts"]) + "','" + Convert.ToString(Session["money20"]) + "','" + Convert.ToString(Session["extra"]) + "','200','" + Convert.ToString(t) + "','" + Convert.ToString(Session["date"]) + "')", con);
                if (bill.ExecuteNonQuery() > 0)
                {
                    Response.Write("<script>alert('Data inserted')</script>");
                    Response.Redirect("~/BillFormDisplay1.aspx");
                }
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlCommand smd = new SqlCommand("select * from BundleSlip where MobileNumber='" + TextBox1.Text + "'", con);
            SqlDataReader rrr = smd.ExecuteReader();
            if (TextBox1.Text == "" || TextBox1.Text.Length != 10)
            {
                idvalid.Text = "Enter valid Id";
                idvalid.Visible = true;
            }
            else if (rrr.Read())
            {
                rrr.Close();
                GridView1.Visible = true;
                idvalid.Visible = false;
            }
            else
            {
                idvalid.Text = "Data not found...!";
                idvalid.Visible = true;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            int index = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CheckBox cb = (CheckBox)GridView1.Rows[index].FindControl("CheckBox1");
            if (cb.Checked)
            {
                TextBox2.Text = GridView1.Rows[index].Cells[1].Text;
                TextBox3.Text = GridView1.Rows[index].Cells[5].Text;
                //Session["date"] = GridView1.Rows[index].Cells[13].Text;
            }
            else
            {
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            if (TextBox3.Text == "MSc" || TextBox3.Text == "MCom" || TextBox3.Text == "MBA")
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add(new ListItem("-Semister-", "0"));
                DropDownList1.Items.Add(new ListItem("I", "1"));
                DropDownList1.Items.Add(new ListItem("II", "2"));
                DropDownList1.Items.Add(new ListItem("III", "3"));
                DropDownList1.Items.Add(new ListItem("IV", "4"));
            }
            else
            {
                DropDownList1.Items.Clear();
                DropDownList1.Items.Add(new ListItem("-Semister-", "0"));
                DropDownList1.Items.Add(new ListItem("I", "1"));
                DropDownList1.Items.Add(new ListItem("II", "2"));
                DropDownList1.Items.Add(new ListItem("III", "3"));
                DropDownList1.Items.Add(new ListItem("IV", "4"));
                DropDownList1.Items.Add(new ListItem("V", "5"));
                DropDownList1.Items.Add(new ListItem("VI", "6"));
            }
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
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlCommand smd = new SqlCommand("select * from BundleSlip where MobileNumber='" + TextBox1.Text + "'", con);
            SqlDataReader rrr = smd.ExecuteReader();
            if (TextBox1.Text == "" || TextBox1.Text.Length != 10)
            {
                idvalid.Text = "Enter valid Id";
                idvalid.Visible = true;
            }
            else if (rrr.Read())
            {
                rrr.Close();
                GridView1.Visible = true;
                idvalid.Visible = false;
            }
            else
            {
                idvalid.Text = "Data not found...!";
                idvalid.Visible = true;
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BillFormDisplay1.aspx");
        }
    }
}