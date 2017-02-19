using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace AutomobilePurchaseOrder.PurchaseOrder
{
    public partial class PurchaseReport : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString);
        SqlDataAdapter sqlda = new SqlDataAdapter();
        SqlCommand com = new SqlCommand();
        DataTable dsObj = new DataTable();
        ReportDocument rdoc = new ReportDocument();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnGIR_Click(object sender, EventArgs e)
        {

            conn.Open();
            com.Connection = conn;
            com.CommandText = "SELECT * FROM ORDER_DETAILS Where order_id='" + txtorderid.Text + "'";
            sqlda = new SqlDataAdapter(com);
            sqlda.Fill(dsObj);
           
                rdoc.Load(Server.MapPath("PurchaseOrderReport.rpt"));
                rdoc.SetDataSource(dsObj);
               
                CrystalReportViewer1.ReportSource = rdoc;
                CrystalReportViewer1.DataBind();
                
                conn.Close();
            
        }

    }

  
}
