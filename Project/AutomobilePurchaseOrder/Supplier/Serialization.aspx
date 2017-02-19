<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Serialization.aspx.cs" MasterPageFile="~/Supplier/Supplier.master" Inherits="AutomobilePurchaseOrder.Supplier.Serialization" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <table style="width: 110%;">
            <tr>
                <td>
                    
      <fieldset style="width:404px; height: 354px;">
<legend>Serialize</legend>                  
    <asp:Label ID="Label1" runat="server" Text="Enter Model Number" 
        Font-Bold="True" Font-Names="Arial" ForeColor="#CCFFFF"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtPartNo" runat="server"></asp:TextBox> &nbsp;
    <asp:Button ID="btnShow" runat="server" Text="Show Details" onclick="btnShow_Click"  
        />  &nbsp;
     <br />
            
        <br /> 
   
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle BackColor="White" ForeColor="#003399" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
    
    &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnSave" runat="server" Text="Save to File" 
            Visible="False" onclick="btnSave_Click" /> &nbsp;
    <asp:Label ID="lblStatus" runat="server" Font-Bold="True" 
    Font-Size="Large"></asp:Label>  
  </fieldset>
</td>
        <br />

<td>
<fieldset style="width:457px; height: 354px;">
<legend>DeSerialize</legend>
<asp:Label ID="Label2" runat="server" Text="Select an XML file:" 
            Font-Bold="True" Font-Names="Arial" ForeColor="#CCFFFF"></asp:Label> &nbsp;
    <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" 
        EnableTheming="True" />
    <br /><br />
    <asp:Button ID="btnGetDetails" runat="server" Text="Get Details" 
        onclick="btnGetDetails_Click" /> <asp:Label ID="lblMessage" runat="server" Text="" 
            Font-Bold="True"></asp:Label> &nbsp;
   <br />
            
        <br /> 
    <asp:GridView ID="GridView2" runat="server" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <RowStyle BackColor="White" ForeColor="#003399" />
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:GridView>
            </tr>
</table>
</asp:Content>