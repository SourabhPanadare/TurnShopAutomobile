<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs"  MasterPageFile="~/ParentMasterPage.master" Inherits="AutomobilePurchaseOrder.ContactUs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="font-family:Arial; height: 375px;">
<table>
<tr>
<td>
<fieldset style="width:404px; height: 354px;">
<legend>Contact US</legend>
<table>


<tr>
<td style="width: 126px; height: 47px">
<b> Name:</b>
</td>
<td style="height: 47px">
    <asp:TextBox ID="txtName" Width="200px" runat="server" Height="27px"></asp:TextBox>
</td>
<td style="height: 47px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="Name is Required"
    ControlToValidate="txtName"
    Text="*" FontColor="Red">
    </asp:RequiredFieldValidator>
</td>
</tr>



<tr>
<td style="width: 126px; height: 47px">
<b> Email:</b>
</td>
<td style="height: 47px">
    <asp:TextBox ID="txtEmail" Width="200px" runat="server" Height="28px"></asp:TextBox>
</td>
<td style="height: 47px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="Email is Required"
    ControlToValidate="txtEmail"
    Display="Dynamic"
    Text="*" FontColor="Red">
    </asp:RequiredFieldValidator>
    
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ErrorMessage="Please Enter Valid Email" 
        ControlToValidate="txtEmail"
        Dispalay="Dynamic"
       Text="*" ForeColor="Red">
       </asp:RegularExpressionValidator>

</td>
</tr>

<tr>
<td style="width: 126px; height: 46px">
<b> Subject:</b>
</td>
<td style="height: 46px">
    <asp:TextBox ID="txtSubject" Width="200px" runat="server" Height="28px"></asp:TextBox>
</td>
<td style="height: 46px">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="Subject is Required"
    ControlToValidate="txtSubject"
    Text="*" FontColor="Red">
    </asp:RequiredFieldValidator>
</td>
</tr>


<tr>

<td style="vertical-align:top; width: 126px;">
<b> Comments:</b>
</td>
<td style="vertical-align:top">
    <asp:TextBox ID="txtComments" Width="200px" runat="server" Height="22px" 
         Rows="3" TextMode="MultiLine"></asp:TextBox>
</td>
<td style="vertical-align:top">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
    ErrorMessage="Comments is Required"
    ControlToValidate="txtComments"
    Text="*" FontColor="Red">
    </asp:RequiredFieldValidator>
</td>
</tr>

<tr>
<td colspan="3" style="height: 46px">
    <asp:ValidationSummary HeaderText ="Please fix following Error" ForeColor="Red" ID="ValidationSummary1" runat="server" />
</td>
</tr>


<tr>
<td colspan="3" style="height: 5px">
    <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
</td>
</tr>

<tr>
<td colspan="3" style="height: 30px">
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
</td>
</tr>

</table>



</fieldset>
</td>


<td>
<fieldset style="width:404px; height: 354px;">
<legend>Contact Details</legend>
<table>

<tr>
<td>
<asp:Label ID="Label3" runat="server" Text="Phone" Font-Bold="True" 
        Font-Size="X-Large"></asp:Label>
</td>
</tr>
<tr>
<td style="width: 126px; height: 47px">
<b> Main:</b>
</td>
<td style="height: 47px">
  <b> +919742065780</b>  
</td>
</tr>
<tr>
<td style="width: 126px; height: 47px">
<b> AfterHours:</b>
</td>
<td style="height: 47px">
  <b> +917737206885</b>  
</td>
</tr>



<tr>

<td>
<asp:Label ID="Label4" runat="server" Text="Email" Font-Bold="True" 
        Font-Size="X-Large"></asp:Label>
</td>
</tr>

<tr>
<td style="width: 126px; height: 47px">
<b> Marketing:</b>
</td>
<td style="height: 47px">
  <asp:HyperLink ID="HyperLink1" runat="server">varunvsharan@dotnet.letpi.com</asp:HyperLink>
</td>
</tr>

<tr>
<td style="width: 126px; height: 47px">
<b>General:</b>
</td>
<td style="height: 47px">
 <asp:HyperLink ID="HyperLink2" runat="server">wriet2varun1001@gmail.com</asp:HyperLink> 
</td>
</tr>

<tr>
<td>
<asp:Label ID="Label5" runat="server" Text="Adress" Font-Bold="True" 
        Font-Size="X-Large"></asp:Label>
</td>
</tr>
<tr>
<td>
</td>
<td style="width: 126px; height: 47px">
<b> HBR Layout Banglore</b>
</td>

</tr>


</table>
    
</fieldset>

</td>
</tr>
</table>
</div>



</asp:Content>