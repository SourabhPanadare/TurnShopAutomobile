<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Sponsors.ascx.cs" Inherits="AutomobilePurchaseOrder.UserControl.Sponsors" %>


    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>
        
        <ContentTemplate>
        <asp:Timer ID="Timer1" Interval="2000" runat="server" />
        <asp:AdRotator id="AdRotator1" AdvertisementFile="~/App_Data/Ad.xml" Runat="server" />
        </ContentTemplate>
        
    </asp:UpdatePanel>   
