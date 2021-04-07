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
    public partial class DownAssignment : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Server = DESKTOP-6O9F2OR; Integrated Security=True; Initial Catalog=WebBasedLearningSystem");
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
            SqlCommand cmd = new SqlCommand("select * from COURSEMATERIAL", conn);
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                string path = e.CommandArgument.ToString();

                Response.AppendHeader("Content-Disposition", "attachment; filename=assignment.pdf");
                Response.TransmitFile(Server.MapPath(path).ToString());
                Response.End();
            }
        }
    }
}