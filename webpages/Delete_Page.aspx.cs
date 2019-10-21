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
    public partial class Delete_Page : System.Web.UI.Page
    {
        //String t = "";
        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            LBL_Status.Visible = false;
            Label2.Visible = col1.Visible =  tb1.Visible = btn_delete_values.Visible = false;
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

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update_Page.aspx");
        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insert_Page.aspx");
        }

        protected void btn_search_page_go_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search_Page.aspx");
        }

        protected void btn_delete_values_Click(object sender, EventArgs e)
        {
            String keyVal = tb1.Text;     

            if (string.Compare(keyVal, "") != 0)
            {
                SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=Galelio.mdf;Integrated Security = True; Connect Timeout = 30");
                SqlCommand cmd = new SqlCommand("deleteRecord", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@tablename", SqlDbType.VarChar).Value = ddl_table_names.SelectedValue;
                cmd.Parameters.AddWithValue("@query", SqlDbType.VarChar).Value = keyVal;             

                con.Open();
                try
                {
                    cmd.ExecuteNonQuery();
                    LBL_Status.Text = "DELETION STATUS : SUCCESSFULL !";
                    LBL_Status.ForeColor = System.Drawing.Color.Green;                    
                    LBL_Status.Visible = true;
                }
                catch (Exception)
                {
                    LBL_Status.Text = "DELETION STATUS : FAILED !";
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

        protected void btn_initiate_insert_Click(object sender, EventArgs e)
        {
            Label2.Visible = col1.Visible = tb1.Visible = btn_delete_values.Visible = true;
        }
    }
}