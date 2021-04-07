using System;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class Reg1 : System.Web.UI.Page
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
            cmd = new SqlCommand("insert into LEARNER(L_NAME,DOB,SEX,MOBILE,EMAIL,ADDRESS,Password,UserId) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"','"+TextBox8.Text+"')", con);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "Registration successful. Now you can login using login credentials";

            }
            else
            {
                Label1.Text = "something wrong ??";
            }
            con.Close();

            con.Open();
            
            cmd = new SqlCommand("insert into LOGIN (UserId,Password,UserType)values ('" + TextBox8.Text + "','" + TextBox6.Text + "','Learner')", con);
              int y = cmd.ExecuteNonQuery();
              TextBox1.Text = "";
              TextBox2.Text = "";
              TextBox3.Text = "";
              TextBox4.Text = "";
              TextBox5.Text = "";
              TextBox6.Text = "";
              TextBox7.Text = "";
              TextBox8.Text = "";

              con.Close();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox6_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}