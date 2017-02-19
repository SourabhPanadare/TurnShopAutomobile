using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using Demo;
using System.Collections.Generic;
using AutomobilePurchaseOrder.ServiceReference1;
namespace AutomobilePurchaseOrder.PurchaseOrder
{
    
    public partial class PO : System.Web.UI.Page
    {
        ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
        string connStr = ConfigurationManager.ConnectionStrings["RegConnectionString"].ConnectionString;
        SqlDataAdapter sqlda = new SqlDataAdapter();
        SqlCommand com = new SqlCommand();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                
                bindgrid();
                
            }
        }

        protected void bindgrid()
        {
            SqlConnection conn = new SqlConnection(connStr);
            dt = new DataTable();
            com.Connection = conn;
            com.CommandText = "SELECT * FROM ORDER_DETAILS";
            sqlda = new SqlDataAdapter(com);
            sqlda.Fill(dt);
            PurchaseOrderFormView.DataSource = dt;
            PurchaseOrderFormView.DataBind();

        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow == null)
            {
                DetailsView1.Visible = false;
            }
            else
            {
                DetailsView1.Visible = true;
            }
        } 





        protected void PurchaseOrderFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            PurchaseOrderFormView.PageIndex = e.NewPageIndex;
            bindgrid();
        }

        protected void PurchaseOrderFormView_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {
            DataKey key = PurchaseOrderFormView.DataKey;
            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "DELETE FROM ORDER_DETAILS WHERE order_id='" + key.Value.ToString() + "'";
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();
           
            bindgrid();
        }

        protected void PurchaseOrderFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

            DataKey key = PurchaseOrderFormView.DataKey;
            
            TextBox txtOrderDate = (TextBox)PurchaseOrderFormView.FindControl("txtOrderDate");
            TextBox txtPartId    = (TextBox)PurchaseOrderFormView.FindControl("txtPartId");
            TextBox txtPartName  = (TextBox)PurchaseOrderFormView.FindControl("txtPartName");

            TextBox txtCarModel  = (TextBox)PurchaseOrderFormView.FindControl("txtCarModel");
            TextBox txtQuantity  = (TextBox)PurchaseOrderFormView.FindControl("txtQuantity");
            TextBox txtCost      = (TextBox)PurchaseOrderFormView.FindControl("txtCost");
            TextBox txtTax       = (TextBox)PurchaseOrderFormView.FindControl("txtTax");
            TextBox txtTotal     = (TextBox)PurchaseOrderFormView.FindControl("txtTotal");

            double dbQty = Double.Parse(txtQuantity.Text);
            double dbCost = Double.Parse(txtCost.Text);
            double dbTax = Double.Parse(txtTax.Text);

            double dbTaxPer = (dbTax / 100);
            double dbTotal = (dbQty * dbCost);
            double dbSubtotal = (dbTaxPer * dbTotal);
            double dblResults = (dbTotal + dbSubtotal);
            txtTotal.Text = dblResults.ToString();


            
            TextBox txtName      = (TextBox)PurchaseOrderFormView.FindControl("txtName");
            TextBox txtAddress   = (TextBox)PurchaseOrderFormView.FindControl("txtAddress");
            TextBox txtPhone     = (TextBox)PurchaseOrderFormView.FindControl("txtPhone");
            TextBox txtEmail     = (TextBox)PurchaseOrderFormView.FindControl("txtEmail");

            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "UPDATE ORDER_DETAILS SET orderdate ='" + txtOrderDate.Text + "',part_id ='" + txtPartId.Text + "',part_name ='" + txtPartName.Text + "',carmodel ='" + txtCarModel.Text + "', cost ='" + txtCost.Text + "', quantity ='" + txtQuantity.Text + "',tax ='" + txtTax.Text + "' , amt ='" + txtTotal.Text + "', org_name ='" + txtName.Text + "' , add1 ='" + txtAddress.Text + "',  phone1 ='" + txtPhone.Text + "' ,email1 ='" + txtEmail.Text + "' WHERE order_id='" + key.Value.ToString() + "'";
            conn.Open();
            com.ExecuteNonQuery();
           
            bindgrid();
            conn.Close();
        }

        protected void PurchaseOrderFormView_ModeChanging(object sender, FormViewModeEventArgs e)
        {
            PurchaseOrderFormView.ChangeMode(e.NewMode);
            bindgrid();
            if (e.NewMode == FormViewMode.Edit)
            {
                PurchaseOrderFormView.AllowPaging = false;
            }
            else
            {
                PurchaseOrderFormView.AllowPaging = true;
            }
        }

        protected void PurchaseOrderFormView_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            PurchaseOrderFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void PurchaseOrderFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            PurchaseOrderFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void PurchaseOrderFormView_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            TextBox txtOrderId   = (TextBox)PurchaseOrderFormView.FindControl("txtOrderId");
            TextBox txtOrderDate = (TextBox)PurchaseOrderFormView.FindControl("txtOrderDate");
            TextBox txtPartId    = (TextBox)PurchaseOrderFormView.FindControl("txtPartId");
            TextBox txtPartName  = (TextBox)PurchaseOrderFormView.FindControl("txtPartName");

            TextBox txtCarModel  = (TextBox)PurchaseOrderFormView.FindControl("txtCarModel");
            TextBox txtQuantity  = (TextBox)PurchaseOrderFormView.FindControl("txtQuantity");
            TextBox txtCost      = (TextBox)PurchaseOrderFormView.FindControl("txtCost");
            TextBox txtTax       = (TextBox)PurchaseOrderFormView.FindControl("txtTax");
            TextBox txtTotal     = (TextBox)PurchaseOrderFormView.FindControl("txtTotal");
            double dbQty = Double.Parse(txtQuantity.Text);
            double dbCost = Double.Parse(txtCost.Text);
            double dbTax = Double.Parse(txtTax.Text);

            double dbTaxPer = (dbTax / 100);
            double dbTotal = (dbQty * dbCost);
            double dbSubtotal = (dbTaxPer * dbTotal);
            double dblResults = (dbTotal + dbSubtotal);
            txtTotal.Text = dblResults.ToString();

            TextBox txtName      = (TextBox)PurchaseOrderFormView.FindControl("txtName");
            TextBox txtAddress   = (TextBox)PurchaseOrderFormView.FindControl("txtAddress");
            TextBox txtPhone     = (TextBox)PurchaseOrderFormView.FindControl("txtPhone");
            TextBox txtEmail     = (TextBox)PurchaseOrderFormView.FindControl("txtEmail");
            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "INSERT INTO ORDER_DETAILS Values('" + txtOrderId.Text + "','" + txtOrderDate.Text + "', '" + txtPartId.Text + "','" + txtPartName.Text + "' ,'" + txtCarModel.Text + "', '" + txtCost.Text + "','" + txtQuantity.Text + "' , '" + txtTax.Text + "', '" + txtTotal.Text + "', '" + txtName.Text + "', '" + txtAddress.Text + "', '" + txtPhone.Text + "','" + txtEmail.Text + "' )";
            conn.Open();
            com.ExecuteNonQuery();
            
            bindgrid();
            conn.Close();
        }

      

       

       

        }

       
    }



