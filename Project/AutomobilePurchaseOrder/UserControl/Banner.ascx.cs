using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AutomobilePurchaseOrder.UserControl
{
    public partial class Banner : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetImageUrl();
            }
        }
         protected void Timer1_Tick(object sender, EventArgs e)
        {
         SetImageUrl();
        }

        private void SetImageUrl()
        {
            Random _rand = new Random();
            int i = _rand.Next(1, 4);
            BannerImg.ImageUrl = "~/Images/Background/" + i.ToString() + ".jpg";
            
        }

    }

 }

