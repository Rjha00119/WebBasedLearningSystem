using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebBasedLearningSystem
{
    public partial class Payment : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from COURSE where c_id = "+Request.QueryString["id"].ToString()+"", conn);
            repeater1.DataSource = cmd.ExecuteReader();
            repeater1.DataBind();
            conn.Close();
        }
    }
}