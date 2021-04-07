using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace WebBasedLearningSystem
{
    public partial class TrainerMan : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server =DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

        

        
        public void bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from TRAINER", conn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            conn.Open();
            
            Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("label1");

            cmd = new SqlCommand("delete from Trainer where T_ID='" + id.Text + "'", conn);
            cmd.ExecuteNonQuery();

            conn.Close();
            bind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        
    }
}