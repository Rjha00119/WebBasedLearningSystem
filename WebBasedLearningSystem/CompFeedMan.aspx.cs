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

    public partial class CompFeedMan : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlCommand cmd;
        
         
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
         
        }

      

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        } 
        public void bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from COMPFEED", conn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }


        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        
             conn.Open();
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("label1");

            cmd = new SqlCommand("delete from COMPFEED where CompFeed_ID='" + id.Text + "'", conn);
            cmd.ExecuteNonQuery();

            conn.Close();
            bind();
        }
    }
       
    }
