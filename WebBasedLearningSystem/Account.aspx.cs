using System;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class Account : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlCommand cmd;
        SqlDataReader dr;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                conn.Open();
                cmd = new SqlCommand("select * from LEARNER Where UserId ='" + Session["UserId"].ToString() + "' ", conn);

                dr = cmd.ExecuteReader();

                dr.Read();
                if (dr.HasRows == true)
                {
                    Label2.Text = dr["L_ID"].ToString();
                    Label3.Text = dr["L_NAME"].ToString();
                    Label4.Text = dr["UserId"].ToString();
                    Label5.Text = dr["DOB"].ToString();
                    Label6.Text = dr["SEX"].ToString();
                    Label7.Text = dr["MOBILE"].ToString();
                    Label8.Text = dr["EMAIL"].ToString();
                    Label9.Text = dr["ADDRESS"].ToString();

                    TextBox2.Text = dr["L_NAME"].ToString();
                    TextBox3.Text = dr["MOBILE"].ToString();
                    TextBox4.Text = dr["ADDRESS"].ToString();

                }

                conn.Close();
            }

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
            Label3.Visible = false;
            Label7.Visible = false;
            Label9.Visible = false;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            TextBox4.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            LinkButton2.Visible = false;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Visible = true;
            Label7.Visible = true;
            Label9.Visible = true;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            TextBox4.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            LinkButton2.Visible = true;

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update LEARNER SET L_NAME='" + TextBox2.Text + "', MOBILE='" + TextBox3.Text + "', ADDRESS='" + TextBox4.Text + "' Where UserId ='" + Label4.Text + "'", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label10.Text = "Edit sucessfully";
            }
            else
            {
                Label10.Text = "Edit unscucessful";
            }
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            conn.Close();
        }


    }

}
