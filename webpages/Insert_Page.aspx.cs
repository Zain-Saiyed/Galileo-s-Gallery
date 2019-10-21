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
    public partial class Insert_Page : System.Web.UI.Page
    {
        //String t = "";      
        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            LBL_Status.Visible = false;
            Label2.Visible = col1.Visible = col2.Visible = col3.Visible = col4.Visible = col5.Visible = col6.Visible = tb1.Visible = tb2.Visible = tb3.Visible = tb4.Visible = tb5.Visible = tb6.Visible = btn_insert_values.Visible = false;
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

        protected void btn_Initiate_Click(object sender, EventArgs e)
        {

            Label2.Visible = col1.Visible = col2.Visible = col3.Visible = col4.Visible = col5.Visible = col6.Visible =tb1.Visible = tb2.Visible = tb3.Visible = tb4.Visible = tb5.Visible = tb6.Visible = btn_insert_values.Visible = true;
 

        }

        protected void btn_search_page_go_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_Page.aspx");
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Page.aspx");
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete_Page.aspx");
        }

        protected void btn_insert_values_Click(object sender, EventArgs e)
        {
            String cols1 = tb1.Text;
            String cols2 = tb2.Text;
            String cols3 = tb3.Text;
            String cols4 = tb4.Text;
            String cols5 = tb5.Text;
            String cols6 = tb6.Text;
            if (string.Compare(cols1, "") != 0 || string.Compare(cols2, "") != 0 || string.Compare(cols3, "") != 0 || string.Compare(cols4, "") != 0 || string.Compare(cols5, "") != 0 || string.Compare(cols6, "") != 0 || string.Compare(cols1, null) != 0 || string.Compare(cols2, null) != 0 || string.Compare(cols3, null) != 0 || string.Compare(cols4, null) != 0 || string.Compare(cols5, null) != 0 || string.Compare(cols6, null) != 0)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30");
                SqlCommand cmd = new SqlCommand("insertrecordintoDwarfPlanets", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@xDwarfPID ", SqlDbType.VarChar).Value = cols1;
                cmd.Parameters.AddWithValue("@xEquitorialRadius", SqlDbType.VarChar).Value = cols2;
                cmd.Parameters.AddWithValue("@xSurfaceArea", SqlDbType.VarChar).Value = cols3;
                cmd.Parameters.AddWithValue("@xRotation", SqlDbType.VarChar).Value = cols4;
                cmd.Parameters.AddWithValue("@xOrbit", SqlDbType.VarChar).Value = cols5;
                cmd.Parameters.AddWithValue("@xSurfaceTemp", SqlDbType.VarChar).Value = cols6;
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    LBL_Status.Text = "INSERTION STATUS : SUCCESSFULL";
                    LBL_Status.ForeColor = System.Drawing.Color.Green;
                    LBL_Status.Visible = true;
                }
                catch (Exception )
                {
                    LBL_Status.Text = "INSERTION STATUS : FAILED ";
                    LBL_Status.ForeColor = System.Drawing.Color.Red;                   
                    LBL_Status.Visible = true;
                }
                finally
                {     }
            }
            else
            {
                LBL_Status.Text = "INSERTION STATUS : FAILED ";
                LBL_Status.ForeColor = System.Drawing.Color.Red;
                LBL_Status.Visible = true;
            }
        }
    }
}