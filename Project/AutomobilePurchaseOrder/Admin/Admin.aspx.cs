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
namespace AutomobilePurchaseOrder.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
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

        protected void bindgrid()
        {
            SqlConnection conn = new SqlConnection(connStr);
            dt = new DataTable();
            com.Connection = conn;
            com.CommandText = "SELECT * FROM EMPLOYEE_DETAILS E,ROLES_DETAILS R WHERE E.Role= R.ROLE_NAME";
            sqlda = new SqlDataAdapter(com);
            sqlda.Fill(dt);
            AdminFormView.DataSource = dt;
            AdminFormView.DataBind();

        }





        protected void AdminFormView_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            AdminFormView.PageIndex = e.NewPageIndex;
            bindgrid();
        }

        protected void AdminFormView_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {
            DataKey key = AdminFormView.DataKey;
            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "DELETE FROM EMPLOYEE_DETAILS WHERE Emp_ID='" + key.Value.ToString() + "'";
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

            bindgrid();
        }


        protected void AdminFormView_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {

            DataKey key = AdminFormView.DataKey;
            Label lblEmpID = (Label)AdminFormView.FindControl("lblEmpID");
            TextBox TxtEmpName = (TextBox)AdminFormView.FindControl("TxtEmpName");
            DropDownList DdlRoleName = (DropDownList)AdminFormView.FindControl("DdlRoleName");
            TextBox TxtEmpAddress = (TextBox)AdminFormView.FindControl("TxtEmpAddress");

            TextBox TxtContact = (TextBox)AdminFormView.FindControl("TxtContact");
            TextBox TxtEmail = (TextBox)AdminFormView.FindControl("TxtEmail");


            TextBox TxtDepartment = (TextBox)AdminFormView.FindControl("TxtDepartment");
            TextBox TxtDesignation = (TextBox)AdminFormView.FindControl("TxtDesignation");

            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "UPDATE EMPLOYEE_DETAILS SET Emp_Name ='" + TxtEmpName.Text + "',Role ='" + DdlRoleName.Text + "', Emp_Address ='" + TxtEmpAddress.Text + "',  Contact ='" + TxtContact.Text + "' ,Email ='" + TxtEmail.Text + "' WHERE Emp_ID='" + key.Value.ToString() + "'";
            conn.Open();
            com.ExecuteNonQuery();
            Response.Write("Record updated successfully");
            bindgrid();
            conn.Close();
        }

        protected void AdminFormView_ModeChanging(object sender, FormViewModeEventArgs e)
        {
            AdminFormView.ChangeMode(e.NewMode);
            bindgrid();
            if (e.NewMode == FormViewMode.Edit)
            {
                AdminFormView.AllowPaging = false;
            }
            else
            {
                AdminFormView.AllowPaging = true;
            }
        }

        protected void AdminFormView_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            AdminFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void AdminFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            AdminFormView.ChangeMode(FormViewMode.ReadOnly);
        }
        protected void AdminFormView_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            DataKey key = AdminFormView.DataKey;
            TextBox TxtEmpName = (TextBox)AdminFormView.FindControl("TxtEmpName");
            DropDownList DdlRoleName = (DropDownList)AdminFormView.FindControl("DdlRoleName");
            TextBox TxtEmpAddress = (TextBox)AdminFormView.FindControl("TxtEmpAddress");

            TextBox TxtContact = (TextBox)AdminFormView.FindControl("TxtContact");
            TextBox TxtEmail = (TextBox)AdminFormView.FindControl("TxtEmail");


            TextBox TxtDepartment = (TextBox)AdminFormView.FindControl("TxtDepartment");
            TextBox TxtDesignation = (TextBox)AdminFormView.FindControl("TxtDesignation");

            SqlConnection conn = new SqlConnection(connStr);
            com.Connection = conn;
            com.CommandText = "INSERT INTO EMPLOYEE_DETAILS (Emp_Name,Emp_Address,Email,Contact,Department,Role,Designation)Values('" + TxtEmpName.Text + "','" + TxtEmpAddress.Text + "' ,'" + TxtEmail.Text + "','" + TxtContact.Text + "','" + TxtDepartment.Text + "' ,'" + DdlRoleName.Text + "','" + TxtDesignation.Text + "')";
            conn.Open();
            com.ExecuteNonQuery();
            Response.Write("Record inserted successfully");
            bindgrid();
            conn.Close();
        }

        

    }

       

 }



