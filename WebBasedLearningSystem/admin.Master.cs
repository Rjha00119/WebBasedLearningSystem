using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebBasedLearningSystem
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["UserId"] != null)
                {
                    Label2.Text = "Hello " + Session["UserId"].ToString();
                    HyperLink7.Visible = false;
                    LinkButton1.Visible = true;
                }
                else
                {
                    Label2.Text = "Hello Visitor, Welcome!!!";
                    HyperLink7.Visible = true;
                    LinkButton1.Visible = false;

                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Signout.aspx");
        }
    }
}