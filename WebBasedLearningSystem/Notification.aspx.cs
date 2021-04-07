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
    public partial class Notification1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

            Panel2.Visible = true;

            String mycon = "Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem";
            String myquery = "select * from NOTIFICATION order by N_NUMBER DESC";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                Label3.Text = ds.Tables[0].Rows[0]["N_MSG"].ToString();

            }

            con.Close();


        }
    }
}