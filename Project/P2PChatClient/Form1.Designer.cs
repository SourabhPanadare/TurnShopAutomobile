namespace P2PChatClient
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gbUserInfo = new System.Windows.Forms.GroupBox();
            this.btnJoin = new System.Windows.Forms.Button();
            this.lblLoginName = new System.Windows.Forms.Label();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.gbChatWindow = new System.Windows.Forms.GroupBox();
            this.btnSend = new System.Windows.Forms.Button();
            this.txtSendMessage = new System.Windows.Forms.TextBox();
            this.txtChatMessages = new System.Windows.Forms.TextBox();
            this.btnLeave = new System.Windows.Forms.Button();
            this.gbUserInfo.SuspendLayout();
            this.gbChatWindow.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbUserInfo
            // 
            this.gbUserInfo.Controls.Add(this.btnJoin);
            this.gbUserInfo.Controls.Add(this.lblLoginName);
            this.gbUserInfo.Controls.Add(this.txtUserName);
            this.gbUserInfo.Location = new System.Drawing.Point(12, 12);
            this.gbUserInfo.Name = "gbUserInfo";
            this.gbUserInfo.Size = new System.Drawing.Size(291, 40);
            this.gbUserInfo.TabIndex = 0;
            this.gbUserInfo.TabStop = false;
            this.gbUserInfo.Text = "User Information";
            // 
            // btnJoin
            // 
            this.btnJoin.Location = new System.Drawing.Point(210, 10);
            this.btnJoin.Name = "btnJoin";
            this.btnJoin.Size = new System.Drawing.Size(75, 23);
            this.btnJoin.TabIndex = 2;
            this.btnJoin.Text = "Join";
            this.btnJoin.UseVisualStyleBackColor = true;
            this.btnJoin.Click += new System.EventHandler(this.btnJoin_Click);
            // 
            // lblLoginName
            // 
            this.lblLoginName.AutoSize = true;
            this.lblLoginName.Location = new System.Drawing.Point(15, 17);
            this.lblLoginName.Name = "lblLoginName";
            this.lblLoginName.Size = new System.Drawing.Size(60, 13);
            this.lblLoginName.TabIndex = 1;
            this.lblLoginName.Text = "User Name";
            // 
            // txtUserName
            // 
            this.txtUserName.Location = new System.Drawing.Point(84, 13);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(100, 20);
            this.txtUserName.TabIndex = 0;
            // 
            // gbChatWindow
            // 
            this.gbChatWindow.Controls.Add(this.btnSend);
            this.gbChatWindow.Controls.Add(this.txtSendMessage);
            this.gbChatWindow.Controls.Add(this.txtChatMessages);
            this.gbChatWindow.Location = new System.Drawing.Point(13, 86);
            this.gbChatWindow.Name = "gbChatWindow";
            this.gbChatWindow.Size = new System.Drawing.Size(390, 261);
            this.gbChatWindow.TabIndex = 1;
            this.gbChatWindow.TabStop = false;
            this.gbChatWindow.Text = "groupBox2";
            // 
            // btnSend
            // 
            this.btnSend.Location = new System.Drawing.Point(309, 232);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(75, 23);
            this.btnSend.TabIndex = 2;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // txtSendMessage
            // 
            this.txtSendMessage.Location = new System.Drawing.Point(7, 217);
            this.txtSendMessage.Multiline = true;
            this.txtSendMessage.Name = "txtSendMessage";
            this.txtSendMessage.Size = new System.Drawing.Size(283, 38);
            this.txtSendMessage.TabIndex = 1;
            // 
            // txtChatMessages
            // 
            this.txtChatMessages.Location = new System.Drawing.Point(7, 20);
            this.txtChatMessages.Multiline = true;
            this.txtChatMessages.Name = "txtChatMessages";
            this.txtChatMessages.Size = new System.Drawing.Size(377, 181);
            this.txtChatMessages.TabIndex = 0;
            this.txtChatMessages.Text = "Chat Windows";
            // 
            // btnLeave
            // 
            this.btnLeave.Location = new System.Drawing.Point(328, 22);
            this.btnLeave.Name = "btnLeave";
            this.btnLeave.Size = new System.Drawing.Size(75, 23);
            this.btnLeave.TabIndex = 2;
            this.btnLeave.Text = "Leave";
            this.btnLeave.UseVisualStyleBackColor = true;
            this.btnLeave.Click += new System.EventHandler(this.btnLeave_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(415, 373);
            this.Controls.Add(this.btnLeave);
            this.Controls.Add(this.gbChatWindow);
            this.Controls.Add(this.gbUserInfo);
            this.Name = "Form1";
            this.Text = "Chat Client";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.gbUserInfo.ResumeLayout(false);
            this.gbUserInfo.PerformLayout();
            this.gbChatWindow.ResumeLayout(false);
            this.gbChatWindow.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbUserInfo;
        private System.Windows.Forms.GroupBox gbChatWindow;
        private System.Windows.Forms.Button btnJoin;
        private System.Windows.Forms.Label lblLoginName;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.TextBox txtChatMessages;
        private System.Windows.Forms.Button btnLeave;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.TextBox txtSendMessage;
    }
}

