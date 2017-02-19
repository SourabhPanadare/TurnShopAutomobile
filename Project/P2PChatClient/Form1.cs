using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.ServiceModel;
namespace P2PChatClient
{

    [ServiceContract(CallbackContract = typeof(IChatService))]
    public interface IChatService
    {
        [OperationContract(IsOneWay = true)]
        void Join(string memberName);
        [OperationContract(IsOneWay = true)]
        void Leave(string memberName);
        [OperationContract(IsOneWay = true)]
        void SendMessage(string memberName, string message);
    }

    public interface IChatChannel : IChatService, IClientChannel
    {
    }

    public partial class Form1 : Form,IChatService
    {
        delegate void UserJoined(string name);
        delegate void UserSendMessage(string name, string message);
        delegate void UserLeft(string name);

        static event UserJoined NewJoin;

        static event UserSendMessage MessageSent;
        static event UserLeft RemoveUser;

        string userName;
        IChatChannel channel;
        DuplexChannelFactory<IChatChannel> factory;
        public Form1()
        {
            InitializeComponent();
            this.AcceptButton = btnJoin;
        }
        public Form1(string userName)
        {
            this.userName = userName;
        }
        void Form1_RemoveUser(string name)
        {
            try
            {
                txtChatMessages.AppendText("\r\n");
                txtChatMessages.AppendText(name + "left at" + DateTime.Now.ToString());
            }
            catch (Exception ex)
            {
                System.Diagnostics.Trace.WriteLine(ex.ToString());
            }
        }

        void Form1_MessageSent(string name, string message)
        
           
            {
                txtChatMessages.AppendText("\r\n");
                txtChatMessages.AppendText(name + "says:" + message);
            }
        void Form1_NewJoin(string name)
        {
            txtChatMessages.AppendText("\r\n");
            txtChatMessages.AppendText(name + "joined at:["+DateTime.Now.ToString()+"]");
        }

        public void Join(string memberName)
        {

            if (NewJoin != null)
            {
                NewJoin(memberName);
            }
        }
        public new void Leave(string memberName)
        {
            if(RemoveUser!=(null))
            {
            RemoveUser(memberName);
            }

        }

        public void SendMessage(string memberName, string message)
        {
            if (MessageSent != null)
            {
                MessageSent(memberName, message);
            }
        }

        private void btnJoin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() != "")
            {
                try
                {
                    NewJoin += new UserJoined(Form1_NewJoin);
                    MessageSent += new UserSendMessage(Form1_MessageSent);
                    RemoveUser += new UserLeft(Form1_RemoveUser);
                    channel = null;
                    this.userName = txtUserName.Text.Trim();
                    InstanceContext context = new InstanceContext(new Form1(txtUserName.Text.Trim()));
                    factory = new DuplexChannelFactory<IChatChannel>(context, "ChatEndPoint");
                    channel = factory.CreateChannel();
                    channel.Open();
                    channel.Join(this.userName);
                    gbChatWindow.Enabled = true;
                    gbUserInfo.Enabled = false;
                    this.AcceptButton = btnSend;
                    txtChatMessages.AppendText("******Welcome to Turn Shop Automobile Chat Application****\r\n");
                    txtSendMessage.Select();
                    txtSendMessage.Focus();
                    this.Text = "Chat Clent-" + txtUserName.Text;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString(), "Error");
                }
            }
        }

        private void btnSend_Click(object sender, EventArgs e)
        {
            channel.SendMessage(this.userName,txtSendMessage.Text.Trim());
            txtSendMessage.Clear();
            txtSendMessage.Focus();
        }

        private void btnLeave_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            try
            {
                if (channel != null)
                {
                    channel.Leave(this.userName);
                    channel.Close();
                }
                if (factory != null)
                {
                    factory.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }
        


    }
}
