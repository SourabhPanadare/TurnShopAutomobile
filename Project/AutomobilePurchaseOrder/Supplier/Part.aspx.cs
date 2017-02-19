using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;
using System.Data;
using AutomobilePurchaseOrder.ServiceReference1;
namespace AutomobilePurchaseOrder.Supplier
{
    public partial class Part : System.Web.UI.Page
    {
        ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showdata();
            }
        }

        private void showdata()
        {
            DataSet ds = new DataSet();
            ds = obj.SelectPartDetails();
            gvPartDetails.DataSource = ds;
            gvPartDetails.DataBind();

        }

        protected void gvPartDetails_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditRow")
            {
                int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
                gvPartDetails.EditIndex = rowIndex;
                showdata();
            }
            else if (e.CommandName == "DeleteRow")
    {
        PartDetails partInfo = new PartDetails();
        int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
        Label lblPartID = (Label)gvPartDetails.Rows[rowIndex].FindControl("lblPartID");
        partInfo.PartID = int.Parse(lblPartID.Text);
        
        obj.DeletePartDetails(partInfo);
        showdata();
    }
    else if (e.CommandName == "CancelUpdate")
    {
        gvPartDetails.EditIndex = -1;
        showdata();
    }
    else if (e.CommandName == "UpdateRow")
    {
        int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
        PartDetails partInfo = new PartDetails();

        Label lblEditPartID = (Label)gvPartDetails.Rows[rowIndex].FindControl("lblEditPartID");


        TextBox txtEditName = ((TextBox)gvPartDetails.Rows[rowIndex].FindControl("txtEditName"));
        TextBox txtEditCarModel = ((TextBox)gvPartDetails.Rows[rowIndex].FindControl("txtEditCarModel"));
        TextBox txtEditCost = ((TextBox)gvPartDetails.Rows[rowIndex].FindControl("txtEditCost"));

        partInfo.PartID = int.Parse(lblEditPartID.Text);
        partInfo.PartName = txtEditName.Text;
        partInfo.CarModel = txtEditCarModel.Text;
        partInfo.Cost     = float.Parse(txtEditCost.Text);
        obj.UpdatePartDetails(partInfo);

        gvPartDetails.EditIndex = -1;
        showdata();
    }
    else if (e.CommandName == "InsertRow")
    {
        PartDetails partInfo = new PartDetails();
        TextBox txtPartName = ((TextBox)gvPartDetails.FooterRow.FindControl("txtPartName"));
        TextBox txtCarModel = ((TextBox)gvPartDetails.FooterRow.FindControl("txtCarModel"));
        TextBox txtCost = ((TextBox)gvPartDetails.FooterRow.FindControl("txtCost"));

        partInfo.PartName = txtPartName.Text;
        partInfo.CarModel = txtCarModel.Text;
        partInfo.Cost = float.Parse(txtCost.Text);
        obj.InsertPartDetails(partInfo);

        showdata();
    }
}
        }

      



    }

