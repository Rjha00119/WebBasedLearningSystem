using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
namespace WebBasedLearningSystem
{
    public partial class Notification : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
          con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into NOTIFICATION(N_MSG) values ('" + TextBox1.Text + "')", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label2.Text = "Notification send Sucessfully!!";
            }
            else
            {
                Label2.Text = "Something wrong?";
            }
            TextBox1.Text = "";
            con.Close();
        }
    }
}