<%@ Page    Language="C#" AutoEventWireup="True" CodeBehind="Supp.aspx.cs" MasterPageFile="~/Supplier/Supplier.master" Inherits="AutomobilePurchaseOrder.Supplier.Supp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FormView ID="SupplierFormView" runat="server" DataKeyNames="mfg_id"  AllowPaging="True" 
                  onitemdeleting="SupplierFormView_ItemDeleting"
                  onpageindexchanging="SupplierFormView_PageIndexChanging"
                  onitemupdating="SupplierFormView_ItemUpdating"
                  oniteminserted="SupplierFormView_ItemInserted"
                  oniteminserting="SupplierFormView_ItemInserting"
                  onitemupdated="SupplierFormView_ItemUpdated"
                  onmodechanging="SupplierFormView_ModeChanging" 
        style="margin-right: 154px" Height="366px" 
        Width="722px" CellPadding="4" ForeColor="#333333">
     
     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
     
     <HeaderStyle backcolor="#5D7B9D"
                  forecolor="White" Font-Bold="True"/>
 
     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
 
     <RowStyle backcolor="#F7F6F3" ForeColor="#333333"/>        
 
     <ItemTemplate>
     
        <table style="width: 100%; height: 277px;">
            <tr>
                <td style="height: 65px; width: 274px;">
                    <asp:Label ID="Label1" runat="server" Text="Manufacturer Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                
            </tr>
            <tr>
                <td style="width: 274px; height: 37px;">
                    &nbsp;Mfg ID:
                </td>
                <td style="width: 112px; height: 37px;">
                   &nbsp; <%# Eval("mfg_id") %>
                </td>
                <td style="width: 213px; height: 37px;">
                     &nbsp;&nbsp; Manufacturer:</td>
                 <td style="height: 37px">
                     &nbsp; <%# Eval("org_name") %>
                </td>    
                  
            </tr>
            
            <tr>
                <td style="width: 274px; height: 52px;">
                    &nbsp;Part Name:
                </td>
                <td style="width: 112px; height: 52px;">
                   &nbsp; <%# Eval("part_name") %>
                </td>
                <td style="width: 213px; height: 52px;">
                     &nbsp;&nbsp; Address:</td>
                 <td style="height: 52px">
                     &nbsp; <%# Eval("address") %>
                </td>    
                  
            </tr>
            
            <tr>
                <td style="width: 274px; height: 50px;">
                    &nbsp;Phone:
                </td>
                <td style="width: 112px; height: 50px;">
                   &nbsp; <%# Eval("phone") %>
                </td>
                 <td style="width: 213px; height: 52px;">
                     &nbsp;&nbsp;Email:</td>
                 <td style="height: 52px">
                     &nbsp; <%# Eval("email") %>
                </td>  
                  
            </tr>
            <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="EditButton"
                                        Text="Edit"
                                        CommandName="Edit"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="NewButton"
                                        Text="New"
                                        CommandName="New"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="DeleteButton"
                                        Text="Delete"
                                        CommandName="Delete"
                                        RunAt="server"/>
                      </td>
                    </tr>
                  </table>                
      </ItemTemplate>
      
      <EditItemTemplate>
       <table style="width: 100%; height: 335px;">
            <tr>
                <td style="height: 67px; width: 318px;">
                    <asp:Label ID="Label1" runat="server" Text="Manufacturing Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                </tr>
            <td style="width: 85px; height: 67px;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    SelectCommand="SELECT [part_name] FROM [PART_DETAILS]"></asp:SqlDataSource>
            </td>
            <tr>
                <td style="width: 318px; height: 54px;">
                    &nbsp; MfgID:
                </td>
                <td style="width: 85px; height: 54px;">
                    <asp:Label ID="lblMfgID" runat="server" Text='<%# Eval("mfg_id") %>' > </asp:Label>
                </td>
                <td style="width: 213px; height: 54px;">
                     &nbsp; Manufacturer:</td>
                 <td style="height: 54px">
                    <asp:TextBox ID="txtOrgName"
                                         Text='<%# Bind("org_name") %>'
                                         RunAt="Server" />
                </td>    
                  
            </tr>
            <tr>
                <td style="width: 318px; height: 68px;">
                    &nbsp; Part Name:
                </td>
                <td style="width: 85px; height: 68px;">
                   
                    
                    <asp:DropDownList ID="ddlPartName" runat="server"  
                        DataSourceID="SqlDataSource1" DataTextField="part_name" 
                        DataValueField="part_name" Height="20px" Width="95px">
                    </asp:DropDownList>
                   
                    
                </td>
                <td style="width: 213px; height: 68px;">
                     &nbsp;
                    Address:</td>
                 <td style="height: 68px">
                    <asp:TextBox ID="txtAddress"
                                         Text='<%# Bind("address") %>'
                                         RunAt="Server" />
                </td>    
                  
            </tr>
            
             <tr>
                <td style="width: 318px; height: 65px;">
                    &nbsp; Phone:
                </td>
                <td style="width: 85px; height: 65px;">
                   <asp:TextBox ID="txtPhone"
                                         Text='<%# Bind("phone")%>'
                                         RunAt="Server" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                        ErrorMessage="Please Enter 10 Digit Number"
                                                        ControlToValidate="txtPhone"
                                                        Dispalay="Dynamic"
                                                        Text="*" ForeColor="Red">                     
               </asp:RegularExpressionValidator>                     
                </td>
                <td style="width: 213px; height: 65px;">
                     &nbsp;&nbsp;Email:</td>
                 <td style="height: 65px">
                    <asp:TextBox ID="txtEmail"
                                         Text='<%# Bind("email") %>'
                                         RunAt="Server" />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ErrorMessage="Please Enter Valid Email" 
                                                        ControlToValidate="txtEmail"
                                                        Dispalay="Dynamic"
                                                        Text="*"
                                                        ForeColor="Red">
                         </asp:RegularExpressionValidator>                       
                </td>    
                  
            </tr>
            
             <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="UpdateButton"
                                        Text="Update"
                                        CommandName="Update"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="CancelUpdateButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                    <tr>      <td colspan="3">
    <asp:ValidationSummary HeaderText ="Please fix following Error" ForeColor="Red" ID="ValidationSummary1" runat="server" />
</td>
</tr>


<tr>
<td colspan="3">
    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Red" FontColor="Red"></asp:Label>
</td>
</tr> 
                  </table>   
      </EditItemTemplate>
      
       <InsertItemTemplate>
       <table style="width: 100%; height: 342px;">
            <tr>
                <td style="height: 45px; width: 389px;">
                    <asp:Label ID="Label1" runat="server" Text="Manufacturing Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                </tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    SelectCommand="SELECT [part_name] FROM [PART_DETAILS]"></asp:SqlDataSource>
            </td>
            <tr>
                <td style="width: 389px; height: 51px;">
                    &nbsp;&nbsp; MfgID:
                </td>
                <td style="width: 112px; height: 51px;">
                  <asp:Label ID="lblMfgID" runat="server" Text='<%# Eval("mfg_id") %>' > </asp:Label>
                </td>
                <td style="width: 213px; height: 51px;">
                     &nbsp; Manufacturer:</td>
                 <td style="height: 51px">
                    <asp:TextBox ID="txtOrgName"
                                         Text='<%# Bind("org_name") %>'
                                         RunAt="Server" />
                </td>    
                  
            </tr>
            <tr>
                <td style="width: 389px; height: 82px;">
                    &nbsp;&nbsp; Part Name:
                </td>
                <td style="width: 112px; height: 82px;">
                   
                    
                  
                    <asp:DropDownList ID="ddlPartName" runat="server" Height="28px" Width="125px" 
                        DataSourceID="SqlDataSource1" DataTextField="part_name" 
                        DataValueField="part_name">
                    </asp:DropDownList>
                   
                    
                  
                </td>
                <td style="width: 213px; height: 82px;">
                     &nbsp;
                    Address:</td>
                 <td style="height: 82px">
                    <asp:TextBox ID="txtAddress"
                                         Text='<%# Bind("address") %>'
                                         RunAt="Server" />
                </td>    
                  
            </tr>
            
             <tr>
                <td style="width: 389px">
                    &nbsp;&nbsp; Phone:
                </td>
                <td style="width: 112px">
                   <asp:TextBox ID="txtPhone"
                                         Text='<%# Bind("phone")%>' RunAt="Server" />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                        ErrorMessage="Please Enter 10 Digit Number"
                                                        ControlToValidate="txtPhone"
                                                        Dispalay="Dynamic"
                                                        Text="*" ForeColor="Red">                     
               </asp:RegularExpressionValidator>
                </td>
                <td style="width: 213px">
                     &nbsp; Email:</td>
                 <td>
                    <asp:TextBox ID="txtEmail"
                                         Text='<%# Bind("email") %>'
                                         RunAt="Server" />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ErrorMessage="Please Enter Valid Email" 
                                                        ControlToValidate="txtEmail"
                                                        Dispalay="Dynamic"
                                                        Text="*"
                                                        ForeColor="Red">
                         </asp:RegularExpressionValidator>                           
                </td>    
                  
            </tr>
              <tr>
                      <td colspan="2">
                        <asp:LinkButton ID="InsertButton"
                                        Text="Insert"
                                        CommandName="Insert"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="CancelInsertButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                      </td>
                    </tr>
                     <tr>      <td colspan="3">
    <asp:ValidationSummary HeaderText ="Please fix following Error" ForeColor="Red" ID="ValidationSummary1" runat="server" />
</td>
</tr>


<tr>
<td colspan="3">
    <asp:Label ID="lblMessage" runat="server" Font-Bold="true" ForeColor="Red" FontColor="Red"></asp:Label>
</td>
</tr>
                  </table>   
      </InsertItemTemplate>
     <EditRowStyle BackColor="#999999" />
     </asp:FormView>
</asp:Content>