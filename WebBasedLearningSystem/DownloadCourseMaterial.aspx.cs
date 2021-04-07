using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace WebBasedLearningSystem
{
    public partial class DownloadCourseMaterial : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            
            cmd = new SqlCommand("Select * from COURSEMATERIAL where (C_ID='" + TextBox2.Text + "' ) AND C_NAME='" + TextBox3.Text + "'", con);
           
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Response.ContentType = "pdf,jpg,jpeg,png";
                Response.AppendHeader("Content-Disposition", "attachment; filename=CourseMaterial.pdf");
                Response.TransmitFile(Server.MapPath(dr["C_MATERIAL"].ToString()));
                Response.End();
            }
            else
            {
                Label2.Text = "Material Does not found !";

            }

            TextBox2.Text = "";
            TextBox3.Text = "";
            
            con.Close();
        }
    }
}