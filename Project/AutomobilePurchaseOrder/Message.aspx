<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" MasterPageFile="~/ParentMasterPage.master" Inherits="AutomobilePurchaseOrder.Message" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblMessage" runat="server" FontColor="Blue" 
        meta:resourcekey="lblMessageResource1"></asp:Label>
    <asp:HyperLink ID="HyperLink1"
        runat="server" ForeColor="Red" NavigateUrl="~/Login.aspx" 
        meta:resourcekey="HyperLink1Resource1">LoginPage</asp:HyperLink>
    </asp:Content>