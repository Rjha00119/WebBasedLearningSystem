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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
        }



        protected void Button1_Click(object sender, EventArgs e)
        {


           

            con.Open();
             cmd = new SqlCommand("select * from LOGIN where UserId = '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "'", con);
             
             dr = cmd.ExecuteReader();

             if (dr.Read())
             {
                 string type = dr["UserType"].ToString();

                 if (type == "Management")
                 {
                     Session["UserId"] = TextBox1.Text;
                     Response.Redirect("ManHome.aspx");
                     
                 }
                 else if (type == "Learner")
                 {
                     Session["UserId"] = TextBox1.Text;
                     Response.Redirect("LearnerHome.aspx");
                 }
                 else if (type == "Trainer")
                 {
                     Session["UserId"] = TextBox1.Text;
                     Response.Redirect("TrainerHome.aspx");
                 }
                 else
                 {
                     Label1.Text = "Invalid User Id or PAssword - Relogin with Correct UserId & Password";
                 }
             }
            con.Close();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        
    }
}