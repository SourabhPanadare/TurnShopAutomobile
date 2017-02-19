using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
namespace AutomobilePurchaseOrder
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void LoginButton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand comm = new SqlCommand("select * from dbo.EMPLOYEE_DETAILS where Emp_Name=@emp_name", conn);
                comm.Parameters.AddWithValue("@emp_name", loginUser.UserName);


                var rd = comm.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Session["UserName"] = rd["Emp_Name"].ToString();
                        string role = (rd["Role"].ToString());
                        switch (role)
                        {

                            case "r_admin":
                                Response.Redirect("Admin/Admin.aspx");
                                break;

                            case "r_supp":
                                Response.Redirect("Supplier/Supp.aspx");
                                break;

                            case "r_po":
                                Response.Redirect("PurchaseOrder/PO.aspx");
                                break;



                        }
                    }
                }
                else
                {
                    loginUser.FailureText = "There was Problem";
                }
            }
            catch (Exception exception)
            {

                Response.Write(exception.StackTrace);
            }
        }
    }
}


