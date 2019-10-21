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
    public partial class Update_Page : System.Web.UI.Page
    {
        String t = "";

        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            LBL_Status.Visible = false;
            Label2.Visible = col1.Visible = col2.Visible = tb1.Visible = tb2.Visible = btn_update_values.Visible = false;
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

        protected void btn_update_values_Click(object sender, EventArgs e)
        {
            String keyVal = tb1.Text;
            String newValue = tb2.Text;
            
            if (string.Compare(keyVal, "") != 0 || string.Compare(newValue, "") != 0)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30");
                SqlCommand cmd = new SqlCommand("updateNumRecord", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tablename", SqlDbType.VarChar).Value = ddl_table_names.SelectedValue;
                cmd.Parameters.AddWithValue("@colname", SqlDbType.VarChar).Value = ddl_table_columns.SelectedValue;
                cmd.Parameters.AddWithValue("@keyval", SqlDbType.VarChar).Value = keyVal;
                cmd.Parameters.AddWithValue("@newvalue", SqlDbType.VarChar).Value = newValue;
                
                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    LBL_Status.Text = "UPDATION STATUS : SUCCESSFULL";
                    LBL_Status.ForeColor = System.Drawing.Color.Green;
                    LBL_Status.Visible = true;
                }
                catch (Exception)
                {
                    LBL_Status.Text = "UPDATION STATUS : FAILED ";
                    LBL_Status.ForeColor = System.Drawing.Color.Red;
                    LBL_Status.Visible = true;
                }
                finally
                { }
            }
            else
            {
                LBL_Status.Text = "INSERTION STATUS : FAILED ";
                LBL_Status.ForeColor = System.Drawing.Color.Red;
                LBL_Status.Visible = true;
            }
        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert_Page.aspx");
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete_Page.aspx");
        }

        protected void btn_search_page_go_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_Page.aspx");
        }

        protected void btn_initiate_insert_Click(object sender, EventArgs e)
        {
            Label2.Visible = col1.Visible = col2.Visible = tb1.Visible = tb2.Visible = btn_update_values.Visible = true;
        }

        protected void ddl_table_names_SelectedIndexChanged(object sender, EventArgs e)
        {
            string table_value = ddl_table_names.SelectedValue;
            populate_ddl_column_names_sql(table_value);
        }

        private void populate_ddl_column_names_sql(String table_name)
        {
            List<string> col_names = new List<string>();
            col_names.Add("col1");
            col_names.Add("col2");
            col_names.Add("col3");
            col_names.Add("col4");
            col_names.Add("col5");
            col_names.Add("col6");
            col_names.Add("col7");
            col_names.Add("col8");
            col_names.Add("col9");
            ddl_table_columns.Items.Clear();
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from table_columns where table_name='" + table_name + "';", con);  //col1,col2,col3,col4,col5,col6
            dr = cmd.ExecuteReader();

            ddl_table_columns.Items.Add("");
            ddl_table_columns.SelectedValue = "";
            if (dr.HasRows)
            {
                while (dr.Read())
                {                    
                    foreach (string value in col_names)
                    {
                        
                        string col = dr[value].ToString();
                        ddl_table_columns.Items.Add(col);
                    }
                   
                }
            }
        }
    }
}