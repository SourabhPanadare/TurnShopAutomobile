<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" MasterPageFile="~/ParentMasterPage.master"  Inherits="AutomobilePurchaseOrder.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    
    <asp:Table ID="Table1" runat="server" CaptionAlign="Top" Height="403px" 
        Width="736px">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                <asp:Image ID="Image1" runat="server" src="../Images/TurnShop.png" />
            
    </asp:TableCell>
            
            
   <asp:TableCell runat="server">
         
         
         <asp:Panel ID="Panel1" runat="server" Font-Bold="True" ForeColor="Maroon" 
            Height="90%" Width="90%" style="margin-top: 0px" >
            Welcome to TurnShopAutoMobile 
            <br />
            <br />
            <br />
            <span> TurnShop Automobiles started out as a workshop for reparing Four Wheelers in 1972. <br /> <br /> <br />

From 1980 onwards,TurnShop Automobiles started manufacturing there own cars. Our car are popular due to Designs and Fuel Efficiency. <br /> <br /> <br />

We have increased our business in Several Folds. We have have expanded our business setup. Now we have various Manufacturing Division Accross US.</span>
            <br /> <br />
            
            
        </asp:Panel>

            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
 </asp:Content> 
    
