using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Security.Cryptography;
using System.Text;
using System.Resources;
using System.Threading;
using System.Globalization;




namespace AutomobilePurchaseOrder
{
    public partial class Registration : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if (Page.IsValid)
                {



                 SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                 conn.Open();
                
                SqlCommand cmd = new SqlCommand("spRegisterUser", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                
                SqlParameter username = new SqlParameter("@UserName", txtusername.Text);
                SqlParameter password = new SqlParameter("@Password", txtpwd.Text);
                SqlParameter email = new SqlParameter("@Email", txtmail.Text);
                SqlParameter address = new SqlParameter("@Address", txtadd.Text);
                SqlParameter contact = new SqlParameter("@Contact", txtcontact.Text);
                SqlParameter country = new SqlParameter("@Country", DropDownList1.SelectedItem.ToString());

                cmd.Parameters.Add(username);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);
                cmd.Parameters.Add(address);
                cmd.Parameters.Add(contact);
                cmd.Parameters.Add(country);


               int ReturnCode = Convert.ToInt32(cmd.ExecuteScalar().ToString()); 
                if (ReturnCode == -1)
                {
                    lblMessage.Text = "User Name already in use, please choose another user name";
                }
                else  
                {

                    Response.Redirect("~/Message.aspx");
                }
               

                
               
                conn.Close();

            }
           
           
        }

        
        
        
        
        
        
    }
}
