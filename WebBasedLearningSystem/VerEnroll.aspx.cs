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
    public partial class VerEnroll : System.Web.UI.Page
    {

        SqlCommand cmd;
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from COURSE where c_id = " + Request.QueryString["id"].ToString() + "", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            
            dr.Read();
            if (dr.HasRows)
            {
                TextBox5.Text = dr["C_ID"].ToString();
                TextBox6.Text = dr["C_FEE"].ToString();
            }
            conn.Close();
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("select * from COURSE where c_id = " + Request.QueryString["id"].ToString() + "", conn);
            repeater1.DataSource = cmd1.ExecuteReader();
            repeater1.DataBind();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("insert into ENROLLMENT(LearnerName,Mobile,Email,Address,PaymentType) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "')", conn);
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                Label5.Text = "You have sucessfully Enrolled!!";

            }
            else
            {
                Label5.Text = "something wrong ??";
            }
            conn.Close();

            conn.Open();

            cmd = new SqlCommand("insert into PAYMENT (Mobile,Email,Mode,Status)values ('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','Sucess')", conn);
            int y = cmd.ExecuteNonQuery();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            conn.Close();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}