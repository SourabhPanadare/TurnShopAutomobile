<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="AutomobilePurchaseOrder.UserControl.Banner" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
<asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
</asp:Timer>
 <asp:Image ID="BannerImg" runat="server" Height="200px" width="1300px" >
    </asp:Image>
    </ContentTemplate>
</asp:UpdatePanel>
