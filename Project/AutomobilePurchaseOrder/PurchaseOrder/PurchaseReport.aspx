<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PurchaseReport.aspx.cs" MasterPageFile="~/PurchaseOrder/PO.master"  Inherits="AutomobilePurchaseOrder.PurchaseOrder.PurchaseReport" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
   
    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
    <td>
    
    <asp:Label ID="Label1" runat="server" Text="Enter OrderID:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtorderid" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnGIR" runat="server" Text="Generate Invoice" Height="31px" 
        Width="126px" onclick="btnGIR_Click" />
      <br/>  
  <br/>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
    AutoDataBind="True" Height="50px" 
    Width="350px" />
</td>
</tr>
</table>
 </asp:Content>