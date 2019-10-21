using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GallileosGallery.Webpages
{
    public partial class Search_Page_user : System.Web.UI.Page
    {
        String t = "";
        string str = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30";
        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Grid_search.Visible = false;
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from TableNames ;", con);
                dr = cmd.ExecuteReader();
                ddl_table_names.Items.Add("");
                ddl_table_names.SelectedValue = "";
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        ddl_table_names.Items.Add(dr.GetString(0));
                    }
                }
            }
        }


        protected void btn_search_Click(object sender, EventArgs e)
        {
            String search_query = tb_search.Text;

            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("searchRecord", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@tablename", SqlDbType.VarChar).Value = ddl_table_names.SelectedValue;
            cmd.Parameters.Add("@query", SqlDbType.VarChar).Value = search_query;
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            Grid_search.DataSource = dt;
            Grid_search.DataBind();
            con.Close();
            Label2.Visible = true;
            Grid_search.Visible = true;
        }



    }
}