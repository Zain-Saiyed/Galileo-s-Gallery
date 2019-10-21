using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace GallileosGallery.Webpages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlDataAdapter da = null;
        DataSet ds = null;
        SqlDataReader dr = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_user(Object sender, EventArgs e)
        {
            String username = tb_username.Text ;
            String password = tb_password.Text;
            SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename = Galelio.mdf; Integrated Security = True; Connect Timeout = 30");
            con.Open(); 
            SqlCommand cmd = new SqlCommand("Select email from [dbo].[user] where email='" + username + "' and password='" + password + "';", con);
            dr = cmd.ExecuteReader();           
            if (dr.HasRows)
            {
                /*bool flag = dr.Read();
                String value = dr["priviledge"].ToString();


                if ( value == "1" )
                {
                    con.Close();
                    Response.Redirect("Search_Page.aspx");
                }
                else
                {
                    con.Close();
                    Response.Redirect("Search_Page_user.aspx");
                }
                      */
                con.Close();
                Response.Redirect("Search_Page.aspx");
            }

            con.Close();
        }


    }


}