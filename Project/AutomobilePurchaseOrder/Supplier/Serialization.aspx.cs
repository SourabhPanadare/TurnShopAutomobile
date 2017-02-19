using System;
using System.Collections;
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
using System.ServiceModel;

namespace AutomobilePurchaseOrder.Supplier
{
    public partial class Serialization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            

                ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
                DataSet dsObj = obj.QueryCarPart(txtPartNo.Text);
                if (dsObj.Tables[0].Rows.Count == 0)
                {
                   
                    btnSave.Visible = false;
                    lblStatus.Text = "";

                }
                else
                {
                    GridView1.DataSource = dsObj.Tables[0];
                    
                    btnSave.Visible = true;
                    lblStatus.Text = "";

                }


                GridView1.DataBind();
            }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ServiceReference1.ServiceClient obj = new
     ServiceReference1.ServiceClient();
            string status = obj.SerializeCarParts(txtPartNo.Text);

            if (status == "Success")
                lblStatus.Text =
                    "PartDetails_" + txtPartNo.Text + ".xml Created!";
            else
                lblStatus.Text = status;
        }

        protected void btnGetDetails_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string xmlFile = FileUpload1.PostedFile.FileName;
            if (xmlFile != "")
            {
                lblMessage.Text = "File: " + xmlFile;
                ds.ReadXml(xmlFile);
                GridView2.DataSource = ds.Tables[0];
            }
            else
            {
                lblMessage.Text = "Please select an XML file!";
            }
            GridView2.DataBind();
        }
        
   
     

        
    }
}
