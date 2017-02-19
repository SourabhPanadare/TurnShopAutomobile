<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" MasterPageFile="~/ParentMasterPage.master" UICulture="auto" Culture="auto" Inherits="AutomobilePurchaseOrder.Registration" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<fieldset style="width:510px; height: 354px;">
 <asp:Label ID="Label2" runat="server" Align="Center" 
        Text=" Welcome To TurnShop Automobile Registration Page" 
        meta:resourcekey="Label2Resource1"></asp:Label>   


     
    <table style="width: 100%; height: 403px;">
    
   
    <tr>
        <td style="width: 240px">
<asp:Label runat="server" ID="lbuserid" Text="UserName" ForeColor="Black" 
                meta:resourcekey="lbuseridResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtusername" Width="177px" 
                meta:resourcekey="txtusernameResource1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
    ErrorMessage="Name is Required"
    ControlToValidate="txtusername"
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator1Resource1"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px">
<asp:Label runat="server" ID="lbmail" Text="EMail" ForeColor="Black" 
                meta:resourcekey="lbmailResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtmail" Width="177px" meta:resourcekey="txtmailResource1"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
    ErrorMessage="E-Mail is Required"
    ControlToValidate="txtmail" 
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator6Resource1"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
        ErrorMessage="Please Enter Valid Email" 
        ControlToValidate="txtmail"
        Dispalay="Dynamic"
       Text="*" meta:resourcekey="RegularExpressionValidator1Resource1"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px">
<asp:Label runat="server" ID="lbpwd" Text="Password" ForeColor="Black" 
                meta:resourcekey="lbpwdResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtpwd" TextMode="Password" Width="178px" 
                meta:resourcekey="txtpwdResource1"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
    ErrorMessage="Password is Required"
    ControlToValidate="txtpwd"   
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator2Resource1"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px">
<asp:Label runat="server" ID="lbrepwd" Text="Confirm Password" ForeColor="Black" 
                meta:resourcekey="lbrepwdResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtrepwd" TextMode="Password" Width="177px" 
                meta:resourcekey="txtrepwdResource1"></asp:TextBox>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
    ErrorMessage="Password is Required"
    ControlToValidate="txtrepwd"
    Display="Dynamic" 
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator3Resource1"></asp:RequiredFieldValidator>


<asp:CompareValidator ID="CompareValidator1" 
 ErrorMessage="Passwords must match!"
  ControlToValidate = "txtpwd" 
  ControlToCompare = "txtrepwd" 
  Dispalay="Dynamic"
  Text="*" 
  Runat = "Server" meta:resourcekey="CompareValidator1Resource1" ></asp:CompareValidator>
  
        </td>
        <td>
            &nbsp;</td>
    </tr>
    
    <tr>
    <td>
    <asp:Label runat="server" ID="lbadd" Text="Address" ForeColor="Black" 
            meta:resourcekey="lbaddResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtadd"   TextMode="MultiLine" Width="177px" 
                meta:resourcekey="txtaddResource1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
    ErrorMessage="Address is Required"
    ControlToValidate="txtadd"
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator4Resource1"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    
    
     <tr>
    <td>
    <asp:Label runat="server" ID="lbcontact" Text="Contact" ForeColor="Black" 
            meta:resourcekey="lbcontactResource1"></asp:Label>
            :</td>
        <td>
<asp:TextBox runat="server" ID="txtcontact" Width="177px" 
                meta:resourcekey="txtcontactResource1"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
    ErrorMessage="Contact is Required"
    ControlToValidate="txtcontact"
   
    Text="*" FontColor="Red" meta:resourcekey="RequiredFieldValidator5Resource1"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
      ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
       ErrorMessage="Please Enter 10 Digit Number"
       ControlToValidate="txtcontact"
       Dispalay="Dynamic"
       Text="*" meta:resourcekey="RegularExpressionValidator2Resource1"></asp:RegularExpressionValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    
    
    <tr>
        <td style="width: 240px">
            <asp:Label runat="server" ID="lbcountry" Text="Country" ForeColor="Black" 
                meta:resourcekey="lbcountryResource1"></asp:Label></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="178px" 
                meta:resourcekey="DropDownList1Resource1">
            <asp:ListItem meta:resourcekey="ListItemResource4">Australia</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource5">Canada</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource6">China</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource7">France</asp:ListItem>
    
            <asp:ListItem meta:resourcekey="ListItemResource8">Germany</asp:ListItem>
   
            <asp:ListItem meta:resourcekey="ListItemResource9">India</asp:ListItem>
    
            <asp:ListItem meta:resourcekey="ListItemResource10">United Kingdom</asp:ListItem>
            <asp:ListItem meta:resourcekey="ListItemResource11">United States</asp:ListItem>
   
            
            
            </asp:DropDownList>
            
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 240px; height: 23px;">
            </td>
        <td style="height: 23px">
    <asp:Button ID="Button1" runat="server" Text="Submit"
                onclick="Button1_Click" meta:resourcekey="Button1Resource1"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
            
        </td>
        <td style="height: 23px">
            &nbsp;</td>
    </tr>
    <tr>
      
<td colspan="3">
    <asp:ValidationSummary HeaderText ="Please fix following Error" 
        ID="ValidationSummary1" runat="server" 
        meta:resourcekey="ValidationSummary1Resource1" />
</td>
</tr>


<tr>
<td colspan="3">
    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red" 
        FontColor="Red" meta:resourcekey="lblMessageResource1"></asp:Label>
</td>
</tr>

</table>
</fieldset>



</asp:Content>