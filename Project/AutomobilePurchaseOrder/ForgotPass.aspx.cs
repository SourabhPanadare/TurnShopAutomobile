using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AutomobilePurchaseOrder
{
    public partial class ForgotPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
            

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            getUserPassword(PasswordRecovery1.UserName);
        }

        public void getUserPassword( string UserName)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);


            conn.Open();

            SqlCommand cmd = new SqlCommand("retriveUserPassword", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@userName", UserName));

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Response.Write("<script>alert('Password is  :" + dr[0].ToString() + "')</script>");
                    
                }
              
            }
            else
            {
                Response.Write("<script>alert('User Name does not exist')</script>");
            }
           
            conn.Close();
        }

    }
}
