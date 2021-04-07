using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;
namespace WebBasedLearningSystem
{
    public partial class Test : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");


        }



        protected void Button1_Click1(object sender, EventArgs e)
        {          
            con.Open();
            cmd = new SqlCommand("Select * from Test where (T_ID='" + TextBox1.Text + "' OR T_name='" + TextBox2.Text + "') AND T_Subject='" + TextBox3.Text + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Response.ContentType = "pdf,jpeg,png,jpg";
                Response.AppendHeader("Content-Disposition","attachment; filename=MyTest.pdf");
                Response.TransmitFile(Server.MapPath(dr["T_Paper"].ToString()));
                Response.End();
            }
            else
            {
                Label2.Text = "Test not found !";
                
            }

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            con.Close();
        }
    }
}