<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Part.aspx.cs" MasterPageFile="~/Supplier/Supplier.master" Inherits="AutomobilePurchaseOrder.Supplier.Part" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
        <br />
        <table style="width: 59%;">
            <tr>
                <td>
                    <asp:WebPartZone ID="WebPartZone1" runat="server" BorderColor="#CCCCCC" 
                        Font-Names="Verdana" Padding="6" style="margin-bottom: 0px">
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
  
    
            <asp:GridView ID="gvPartDetails" runat="server" Width="100%"
                    AutoGenerateColumns="False" ShowFooter="True"
                    
                   
                    ForeColor="#333333" GridLines="None" 
                    onrowcommand="gvPartDetails_RowCommand">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>     
                
                      
                    <asp:TemplateField HeaderText="PartID">
                        <ItemTemplate>
                            <asp:Label ID="lblPartID" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem,"part_id") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>           
                            <asp:Label ID="lblEditPartID" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem, "part_id") %>'></asp:Label>           
                        </EditItemTemplate>
                        
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="PartName">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem, "part_name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>           
                            <asp:TextBox ID="txtEditName" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem,"part_name") %>'></asp:TextBox> 
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtPartName" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
                    
                    <asp:TemplateField HeaderText="CarModel">
                        <ItemTemplate>
                            <asp:Label ID="lblCarModel" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem,"carmodel") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>           
                          <asp:TextBox ID="txtEditCarModel" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem, "carmodel") %>'></asp:TextBox>    
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtCarModel" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
                    
                    
                    <asp:TemplateField HeaderText="Cost">
                        <ItemTemplate>
                            <asp:Label ID="lblCost" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem,"cost") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>           
                            <asp:TextBox ID="txtEditCost" runat="server" Text='<%#DataBinder.Eval(
Container.DataItem,"cost") %>'></asp:TextBox>           
                        </EditItemTemplate>
                       <FooterTemplate>
                            <asp:TextBox ID="txtCost" runat="server" ></asp:TextBox>
                        </FooterTemplate>
                    </asp:TemplateField>
                    
                    
                    
                   
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                           <asp:LinkButton ID="linkbtnEdit" runat="server" CommandName="EditRow" 
                                Text="Edit" CommandArgument='<%# Eval("part_id") %>&#039; '/>
                           <asp:LinkButton ID="linkbtnDelete" runat="server" CommandName="DeleteRow" 
                                Text="Delete" CommandArgument='&#039;<%# Eval("part_id") %>&#039; '/>
                        </ItemTemplate>
                        <EditItemTemplate>
                           <asp:LinkButton ID="linkbtnUpdate" runat="server" CommandName="UpdateRow" 
                                Text="Update" CommandArgument='&#039;<%# Eval("part_id") %>&#039; '/>
                          <asp:LinkButton ID="linkbtnCancel" runat="server" CommandName="CancelUpdate" 
                                Text="Cancel" CommandArgument='&#039;<%# Eval("part_id") %>&#039; '/>
                        </EditItemTemplate>
                        <FooterTemplate>
                           <asp:LinkButton ID="lbInsert" runat="server" CommandName="InsertRow" 
                                Text="Insert" Width="100px" 
                                CommandArgument='&#039;<%# Eval("part_id") %>&#039; '></asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>            
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
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