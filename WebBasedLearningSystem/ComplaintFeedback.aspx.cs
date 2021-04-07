using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
namespace WebBasedLearningSystem
{
    public partial class ComplaintFeedback : System.Web.UI.Page
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
            cmd = new SqlCommand("insert into COMPFEED(L_ID,CompFeed_MSG,Type) values ('" + TextBox2.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "')", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label4.Text = "Complaint/Feedback Registered Sucessfully!!!! ";

            }
            else
            {
                Label4.Text = "something wrong , Please Check";
            }
            TextBox1.Text = "";
            TextBox2.Text = "";
            con.Close();
        }
    }
}