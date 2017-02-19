<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" MasterPageFile="~/ParentMasterPage.master" Inherits="AutomobilePurchaseOrder.ForgotPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#F7F6F3" 
        BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="0.8em" Height="222px" Width="555px">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <SuccessTextStyle Font-Bold="True" ForeColor="#5D7B9D" />
    <TextBoxStyle Font-Size="0.8em" />
    <UserNameTemplate>
        <table border="0" cellpadding="1" cellspacing="0" 
            style="border-collapse:collapse;">
            <tr>
                <td>
                    <table border="0" cellpadding="0" style="height:170px;width:512px;">
                        <tr>
                            <td align="center" colspan="2">
                                Forgot Your Password?</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                Enter your User Name to receive your password.</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                        <tr>
                        <td align="left" colspan="2">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login Page</asp:HyperLink>
                            </td>
                            <td align="right" colspan="2">
                               
                                <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" 
                                    onclick="SubmitButton_Click" Text="Submit" 
                                    ValidationGroup="PasswordRecovery1" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </UserNameTemplate>
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
        ForeColor="White" />
    <SubmitButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
        BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#284775" />
</asp:PasswordRecovery>

</asp:Content>
