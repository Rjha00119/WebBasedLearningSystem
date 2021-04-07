using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebBasedLearningSystem
{
    public partial class DownloadResult : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
        SqlDataReader dr;
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
            SqlCommand cmd = new SqlCommand("select * from RESULT", conn);
            GridView2.DataSource = cmd.ExecuteReader();
            GridView2.DataBind();
            conn.Close();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                string path = e.CommandArgument.ToString();
               
                Response.AppendHeader("Content-Disposition", "attachment; filename=Result.pdf");
                Response.TransmitFile(Server.MapPath(path).ToString());
                Response.End();
            }

        }



    }
}