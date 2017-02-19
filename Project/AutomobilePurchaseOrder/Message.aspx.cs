using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace AutomobilePurchaseOrder
{
    public partial class Message : System.Web.UI.Page
    {
        public string approved;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);


            conn.Open();

            SqlCommand cmd = new SqlCommand("Select Approved From LOGIN_DETAILS ", conn);
           
          

            SqlDataReader dr = cmd.ExecuteReader();

            lblMessage.ForeColor = System.Drawing.Color.LightGreen;
                while (dr.Read())
                {

                    approved = dr["Approved"].ToString();
                    if(approved=="True")
                    {
                        lblMessage.Text = "Admin Has Authenticated You Can Login By Clicking Following Link";
                    }
            
                    else{
                        lblMessage.Text="Thank You For Registration,Please Wait Till Admin Authenticate you";
                        }
                }
           
           
            conn.Close();
        }
        

        
    }
}
