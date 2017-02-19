<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" MasterPageFile="~/ParentMasterPage.master" Inherits="AutomobilePurchaseOrder.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Login ID="loginUser" runat="server" BackColor="#FFFBD6" 
    BorderColor="#FFDFAD" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" 
    Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="313px" 
    Width="381px" TextLayout="TextOnTop">
            <TextBoxStyle Font-Size="0.8em" />
            <LoginButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#990000" />
            <LayoutTemplate>
                <table border="0" cellpadding="1" cellspacing="0" 
                    style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="height: 227px; width: 323px">
                                <tr>
                                    <td align="center" colspan="2">
                                        Log In</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="loginUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="loginUser">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                    </td>
                                </tr>
                             <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                            ValidationGroup="Login1" onclick="LoginButton_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
      

                    <tr>
                    <td style="height: 21px">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Registration.aspx">Register Yourself</asp:HyperLink>
                                <br />
                                <br />
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigationUrl="ForgotPass.aspx" 
                                    NavigateUrl="~/ForgotPass.aspx">Forgot Password</asp:HyperLink>
                    </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <TitleTextStyle BackColor="#990000" Font-Bold="True" Font-Size="0.9em" 
                ForeColor="White" />
        </asp:Login>
        
    

</asp:Content>

