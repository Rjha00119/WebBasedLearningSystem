using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class Fpassword : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("update LOGIN set Password ='" + TextBox9.Text + "' where Userid='" + TextBox6.Text + "' and UserType='" + TextBox7.Text + "'", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Response.Redirect("Login.aspx");
            }
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";

            con.Close();
        }
    }
}