using System;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class TrReg : System.Web.UI.Page
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
            cmd = new SqlCommand("insert into TRAINER(T_NAME,UserId,Age,Sex,Mobile,Email,Qualification,Experience,Address,Password) values ('" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox20.Text + "')", con);
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

            cmd = new SqlCommand("insert into LOGIN (UserId,Password,UserType)values ('" + TextBox12.Text + "','" + TextBox20.Text + "','Trainer')", con);
            int y = cmd.ExecuteNonQuery();
            TextBox11.Text = "";
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text=  "";
            DropDownList1.SelectedIndex= -1;
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            
            con.Close();
        }
    }
}