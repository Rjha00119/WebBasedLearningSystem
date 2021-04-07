using System;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into CONTACT(Name,Email,Mobile,Query) values ('" + txtName.Text + "','" + txtEmail.Text + "','" + txtContact.Text + "','" + TextBox1.Text + "')", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label8.Text = "Thank's for contacting us.";

            }
            else
            {
                Label8.Text = "something wrong ??";
            }
            txtContact.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            TextBox1.Text = "";
            con.Close();

        }
    }
}