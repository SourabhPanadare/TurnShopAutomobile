using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AutomobilePurchaseOrder.Admin
{
    public partial class LoginDetails : System.Web.UI.Page
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
               LoadData();
              
            }
            
        }

        protected void LoadData()
        {
            string connStr = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            string query = @"SELECT * FROM LOGIN_DETAILS ";
            SqlDataAdapter da = new SqlDataAdapter(query, connStr);
            DataTable table = new DataTable();
            da.Fill(table);
           
            AdminGridView.DataSource = table;
            AdminGridView.DataBind();

        }

        public void chkStatus_OnCheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkStatus = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chkStatus.NamingContainer;


            string cid = row.Cells[1].Text;
            bool status = chkStatus.Checked;


            string connStr = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
            string query = "UPDATE LOGIN_DETAILS SET Approved = @Approved WHERE  ID= @CategoryID";

            SqlConnection con = new SqlConnection(connStr);
            SqlCommand com = new SqlCommand(query, con);


            com.Parameters.Add("@Approved", SqlDbType.Bit).Value = status;
            com.Parameters.Add("@CategoryID", SqlDbType.Int).Value = cid;


            con.Open();
            com.ExecuteNonQuery();
            con.Close();

            LoadData();
        }

       

    }
}
