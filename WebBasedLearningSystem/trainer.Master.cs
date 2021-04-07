using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasedLearningSystem
{
    public partial class trainer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserId"] != null)
            {
                Label1.Text = "Hello, " + Session["UserId"].ToString();
                HyperLink6.Visible = false;
                LinkButton1.Visible = true;
            }
            else
            {
                Label1.Text = "Hello Visitor, Welcome!!!";
                HyperLink6.Visible = true;
                LinkButton1.Visible = false;

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("Signout.aspx");
        }
    }
}