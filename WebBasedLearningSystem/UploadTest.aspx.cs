using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace WebBasedLearningSystem
{
    public partial class UploadTeat : System.Web.UI.Page
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
            

                 if(FileUpload1.HasFile)
                 {
                     string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                     if (extension == ".pdf" || extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                     {
                         if (FileUpload1.PostedFile.ContentLength < 51200000)
                         {
                             FileUpload1.SaveAs(Server.MapPath("Content//" + FileUpload1.FileName));

                             string Path = "~/Content/" + FileUpload1.FileName;
                             
                             cmd = new SqlCommand("insert into TEST(T_ID,T_NAME,T_SUBJECT,T_PAPER) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Path + "')", con);
                             int x = cmd.ExecuteNonQuery();


                             if (x > 0)
                             {
                                 Label2.Text = "Test uploaded Sucessfully!!";

                             }
                             else
                             {
                                 Label2.Text = "something wrong ";
                             }
                         }
                     }
                     TextBox1.Text = "";
                     TextBox2.Text = "";
                     TextBox3.Text = "";
                    con.Close();
                }
            }
        
    }
}