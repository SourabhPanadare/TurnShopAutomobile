using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomobilePurchaseOrder.PurchaseOrder
{
    public partial class PO1 : System.Web.UI.MasterPage
    {
        
             protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("PO.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("PurchaseReport.aspx");
        }

    
   }
}
