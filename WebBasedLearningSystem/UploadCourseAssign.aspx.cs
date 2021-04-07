using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;


namespace WebBasedLearningSystem
{

    public partial class UploadCourseAssign : System.Web.UI.Page
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
            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (extension == ".pdf" || extension == ".jpg" || extension == ".jpeg" || extension == ".png")
                {
                    if (FileUpload1.PostedFile.ContentLength < 512000000)
                    {
                        FileUpload1.SaveAs(Server.MapPath("App_LocalResources//" + FileUpload1.FileName));

                        string Path = "~/App_LocalResources/" + FileUpload1.FileName;

                        if (FileUpload1.HasFile)
                        {
                            string extension1 = System.IO.Path.GetExtension(FileUpload2.FileName);
                            if (extension1 == ".pdf" || extension1 == ".jpg" || extension1 == ".jpeg" || extension1 == ".png")
                            {
                                if (FileUpload1.PostedFile.ContentLength < 512000000)
                                {
                                    FileUpload2.SaveAs(Server.MapPath("Assignment//" + FileUpload2.FileName));

                                    string Path1 = "~/Assignment/" + FileUpload2.FileName;


                                    cmd = new SqlCommand("insert into COURSEMATERIAL(C_ID , C_NAME , C_TRAINER , C_MATERIAL , ASSIGNMENT) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Path + "','" + Path1 + "')", con);
                                    int x = cmd.ExecuteNonQuery();
                                    if (x > 0)
                                    {
                                        Label2.Text = "Uploaded Sucessfully!!";

                                    }
                                    else
                                    {
                                        Label2.Text = "something wrong ";
                                    }
                                }
                            }
                        }
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