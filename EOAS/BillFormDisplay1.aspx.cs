using System;

namespace EOAS

{
    public partial class BillFormDisplay1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            course.Text = Convert.ToString(Session["course"]);
            semister.Text = Convert.ToString(Session["semister"]);
            name.Text = Convert.ToString(Session["name"]);
            designation.Text = Convert.ToString(Session["designation"]);
            acno.Text = Convert.ToString(Session["acno"]);
            branchname.Text = Convert.ToString(Session["bankname"]);
            ifsc.Text = Convert.ToString(Session["ifsc"]);
            sub.Text = Convert.ToString(Session["subject"]);
            nans.Text = Convert.ToString(Session["tscripts"]);
            exm.Text = Convert.ToString(Session["cexam"]);
            sem.Text = semister.Text;
            pval.Text = Convert.ToString(Session["money20"]);
            ptype.Text = "200";
            total.Text = Convert.ToString(Session["gt"]);
            figrs.Text = total.Text;
            pset.Text = Convert.ToString(Session["extra"]);
            date.Text = Convert.ToString(Session["date"]);
            code.Text = Convert.ToString(Session["code"]);
            wrs.Text = Convert.ToString(Session["inwords"]);
        }

    }
}
