using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ServiceModel;
using System.ServiceModel.PeerResolvers;
namespace P2PChatServer
{
    public partial class Form1 : Form
    {
        CustomPeerResolverService cprs;
        ServiceHost host;

        public Form1()
        {
            InitializeComponent();
            lblMessage.Text = "";
            btnStop.Enabled = false;
        }

        private void btnStart_Click(object sender, EventArgs e)
        {
            try
            {
                cprs = new CustomPeerResolverService();
                host = new ServiceHost(cprs);
                cprs.Open();
                host.Open();
                lblMessage.Text = "Chat Server Started";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.ToString());
            }
            finally
            {
                btnStart.Enabled = false;
                btnStop.Enabled = true;

            }
        }

        private void btnStop_Click(object sender, EventArgs e)
        {
            try{
              cprs.Close();
              host.Close();
              lblMessage.Text = "Chat Server Stopped";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error:" + ex.ToString());
            }
            finally
            {
                btnStart.Enabled = true;
                btnStop.Enabled = false;

            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
 
