using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using AutomobilePurchaseOrder.ServiceReference1;
namespace AutomobilePurchaseOrder.Supplier
{
    public partial class Supp : System.Web.UI.Page
    {
        ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindgrid();
                
            }
        }

        protected void bindgrid()
        {
            DataSet ds = new DataSet();
            ds = obj.SelectMfgDetails();
            SupplierFormView.DataSource = ds;
            SupplierFormView.DataBind();
            
        }

      

        protected void SupplierFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            SupplierFormView.PageIndex = e.NewPageIndex;
            bindgrid();
        }

        protected void SupplierFormView_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {
            DataKey key = SupplierFormView.DataKey;
            MfgDetails mfgInfo = new MfgDetails();
            Label lblMfgId = (Label)SupplierFormView.FindControl("lblMfgId");
            mfgInfo.MfgID = Convert.ToInt32(key.Value.ToString());
            obj.DeleteMfgDetails(mfgInfo);
            
            bindgrid();
        }

        protected void SupplierFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

            DataKey key = SupplierFormView.DataKey;
            MfgDetails mfgInfo = new MfgDetails();
            Label lblMfgId = (Label)SupplierFormView.FindControl("lblMfgId");
            TextBox txtOrgName = (TextBox)SupplierFormView.FindControl("txtOrgName");
            DropDownList ddlPartName = (DropDownList)SupplierFormView.FindControl("ddlPartName");
            TextBox txtAddress = (TextBox)SupplierFormView.FindControl("txtAddress");

            TextBox txtPhone = (TextBox)SupplierFormView.FindControl("txtPhone");
            TextBox txtEmail = (TextBox)SupplierFormView.FindControl("txtEmail");

            mfgInfo.MfgID = Convert.ToInt32(lblMfgId.Text);
            mfgInfo.OrgName = txtOrgName.Text;
            mfgInfo.PartName = ddlPartName.Text;
            mfgInfo.Address = txtAddress.Text;
            mfgInfo.Phone = txtPhone.Text;
            mfgInfo.Email = txtEmail.Text;
            obj.UpdateMfgDetails(mfgInfo);

           
           
            bindgrid();
            
        }

        protected void SupplierFormView_ModeChanging(object sender, FormViewModeEventArgs e)
        {
            SupplierFormView.ChangeMode(e.NewMode);
            bindgrid();
            if (e.NewMode == FormViewMode.Edit)
            {
                SupplierFormView.AllowPaging = false;
            }
            else
            {
                SupplierFormView.AllowPaging = true;
            }
        }

        protected void SupplierFormView_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            SupplierFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void SupplierFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            SupplierFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void SupplierFormView_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
             MfgDetails mfgInfo = new MfgDetails();
            DataKey key = SupplierFormView.DataKey;

            TextBox txtOrgName = (TextBox)SupplierFormView.FindControl("txtOrgName");
            DropDownList ddlPartName = (DropDownList)SupplierFormView.FindControl("ddlPartName");
            TextBox txtAddress = (TextBox)SupplierFormView.FindControl("txtAddress");

            TextBox txtPhone = (TextBox)SupplierFormView.FindControl("txtPhone");
            TextBox txtEmail = (TextBox)SupplierFormView.FindControl("txtEmail");
            
            
            
            
            mfgInfo.OrgName = txtOrgName.Text;
            mfgInfo.PartName = ddlPartName.Text;
            mfgInfo.Address = txtAddress.Text;
            mfgInfo.Phone = txtPhone.Text;
            mfgInfo.Email = txtEmail.Text;
            obj.InsertMfgDetails(mfgInfo);



            
            
            bindgrid();
            
        }
       
    }
}
