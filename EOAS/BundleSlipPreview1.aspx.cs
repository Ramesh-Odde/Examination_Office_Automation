using System;

namespace Welcome_page
{
    public partial class BundleSlipPreview1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = Convert.ToString(Session["name1"]);
            sname.Text = Convert.ToString(Session["subject"]);
            adr.Text = Convert.ToString(Session["address"]);
            nscripts.Text = Convert.ToString(Session["nscripts"]);
            issuedate.Text = Convert.ToString(Session["issuedate"]);
            returndate.Text = Convert.ToString(Session["returndate"]);
        }
    }
}
