using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace WebBasedLearningSystem
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlCommand cmd;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                conn.Open();
                cmd = new SqlCommand("select * from TRAINER Where UserId ='" + Session["UserId"].ToString() + "' ", conn);

                dr = cmd.ExecuteReader();

                dr.Read();
                if (dr.HasRows == true)
                {
                    Label2.Text = dr["T_ID"].ToString();
                    Label3.Text = dr["T_NAME"].ToString();
                    Label4.Text = dr["UserId"].ToString();
                    Label5.Text = dr["Age"].ToString();
                    Label6.Text = dr["Sex"].ToString();
                    Label7.Text = dr["Mobile"].ToString();
                    Label8.Text = dr["EMAIL"].ToString();
                    Label9.Text = dr["Address"].ToString();
                    Label11.Text = dr["QUALIFICATION"].ToString();
                    Label12.Text = dr["EXPERIENCE"].ToString();

                    TextBox2.Text = dr["T_NAME"].ToString();
                    TextBox5.Text = dr["Age"].ToString();
                    TextBox3.Text = dr["Mobile"].ToString();
                    TextBox6.Text = dr["QUALIFICATION"].ToString();
                    TextBox7.Text = dr["EXPERIENCE"].ToString();
                    TextBox4.Text = dr["ADDRESS"].ToString();

                }

                conn.Close();
            }
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Label3.Visible = false;
            Label5.Visible = false;
            Label7.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label9.Visible = false;

            TextBox2.Visible = true;
            TextBox5.Visible = true;
            TextBox3.Visible = true;
            TextBox6.Visible = true;
            TextBox7.Visible = true;
            TextBox4.Visible = true;

            Button1.Visible = true;
            Button2.Visible = true;
            LinkButton2.Visible = false;
        }

        protected void Button2_Click(object sender, System.EventArgs e)
        {
            Label3.Visible = true;
            Label5.Visible = true;
            Label7.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            Label9.Visible = true;

            TextBox2.Visible = false;
            TextBox5.Visible = false;
            TextBox3.Visible = false;
            TextBox6.Visible = false;
            TextBox7.Visible = false;
            TextBox4.Visible = false;

            Button1.Visible = false;
            Button2.Visible = false;
            LinkButton2.Visible = true;
        }

        protected void Button1_Click(object sender, System.EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update TRAINER SET T_NAME='" + TextBox2.Text + "', Age='" + TextBox5.Text + "', Mobile='" + TextBox3.Text + "', QUALIFICATION='"+TextBox6.Text+"',EXPERIENCE='"+TextBox7.Text+"', ADDRESS='"+TextBox4.Text+"' Where UserId ='" + Label4.Text + "'", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label13.Text = "Edit sucessfully";
            }
            else
            {
                Label13.Text = "Edit unscucessful";
            }
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            conn.Close();
        }
    }
}