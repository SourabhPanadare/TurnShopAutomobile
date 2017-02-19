<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginDetails.aspx.cs" MasterPageFile="~/Admin/Admin.master" Inherits="AutomobilePurchaseOrder.Admin.LoginDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
        <br />
        <table style="width: 59%;">
            <tr>
                <td>
                    <asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC" 
                        Font-Names="Verdana" Padding="6">
                        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
                        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
                        </TitleBarVerbStyle>
                        <MenuLabelHoverStyle ForeColor="#D1DDF1"></MenuLabelHoverStyle>
                        <MenuPopupStyle BackColor="#507CD1" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
                        </MenuPopupStyle>
                        <MenuVerbStyle BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" ForeColor="White">
                        </MenuVerbStyle>
                        <PartTitleStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.8em" ForeColor="White">
                        </PartTitleStyle>
                         <CloseVerb Visible="false" />
                        <ZoneTemplate>
<asp:GridView ID="AdminGridView" runat="server" Title="Login Details" 
        CellPadding="4" ForeColor="#333333" GridLines="None" Height="232px" 
        Width="1026px">
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <Columns>
                                  <asp:TemplateField>
                                 <ItemTemplate>
                                <asp:CheckBox ID="chkStatus" runat="server" 
                                                AutoPostBack="true" OnCheckedChanged="chkStatus_OnCheckedChanged"
                                                Checked='<%# Convert.ToBoolean(Eval("Approved")) %>'
                                                Text='<%# Eval("Approved").ToString().Equals("True") ? " Approved " : " Not Approved " %>' />
                                </ItemTemplate>                    
                                 </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>  
                            </ZoneTemplate>
                        <MenuVerbHoverStyle BackColor="#EFF3FB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333">
                        </MenuVerbHoverStyle>
                        <PartChromeStyle BackColor="#EFF3FB" BorderColor="#D1DDF1" Font-Names="Verdana" ForeColor="#333333">
                        </PartChromeStyle>
                        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC">
                        </HeaderStyle>
                        <MenuLabelStyle ForeColor="White"></MenuLabelStyle>
                    </asp:WebPartZone>
                     </td>
            </tr>
        </table>
                             </asp:Content>