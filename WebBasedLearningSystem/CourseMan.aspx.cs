using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class CourseMan : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into COURSE(C_NAME,C_DURATION,C_FEE,C_TRAINER,DETAILS) values ('" + TextBox2.Text + "','" +TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"')", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label3.Text = "COURSE ADDED SUCESSFULLY";

            }
            else
            {
                Label3.Text = "SOMETHING GOING WRONG??";
            }
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            con.Close();
        }

        protected void SqlDataSource7_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}