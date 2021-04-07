using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;
using System.Configuration;
namespace WebBasedLearningSystem
{
    public partial class categories : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");

        //string conn = ConfigurationManager.ConnectionStrings["database"].ConnectionString;
        //SqlConnection conn= new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                bind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
            public void bind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from COURSE", conn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }
    }
}