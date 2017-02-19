<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PO.aspx.cs" MasterPageFile="~/PurchaseOrder/PO.master" Inherits="AutomobilePurchaseOrder.PurchaseOrder.PO" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  
   
<table>


<tr>
<td>
    <asp:FormView ID="PurchaseOrderFormView" runat="server" Title="Purchase Order Form"
        DataKeyNames="order_id"  AllowPaging="True" 
                  onitemdeleting="PurchaseOrderFormView_ItemDeleting"
                  onpageindexchanging="PurchaseOrderFormView_PageIndexChanging"
                  onitemupdating="PurchaseOrderFormView_ItemUpdating"
                  oniteminserted="PurchaseOrderFormView_ItemInserted"
                  oniteminserting="PurchaseOrderFormView_ItemInserting"
                  onitemupdated="PurchaseOrderFormView_ItemUpdated"
                  onmodechanging="PurchaseOrderFormView_ModeChanging" 
           style="margin-right: 0px" Height="270px" 
        Width="655px" CellPadding="4" ForeColor="#333333">
     
        <PagerStyle ForeColor="White" HorizontalAlign="Center" 
            BackColor="#2461BF" />
     
     <HeaderStyle backcolor="#507CD1" Font-Bold="True" ForeColor="White"/>
 
        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
 
     <EditRowStyle backcolor="#2461BF"/>
    
     <ItemTemplate>
     
        <table style="width: 100%; height: 129px;">
            <tr>
                <td style="height: 27px; width: 274px;">
                    <asp:Label ID="Label1" runat="server" Text="Order Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                
            </tr>
            <tr>
                <td style="width: 274px">
                    &nbsp; Order ID:
                </td>
                <td style="width: 112px">
                   &nbsp; <%# Eval("order_id") %>
                </td>
                <td style="width: 213px">
                     &nbsp;
                    Order Date:</td>
                 <td>
                     &nbsp; <%# Eval("orderdate") %>
                </td>    
                  
            </tr>
           
            <tr>
                <td style="height: 43px; width: 274px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Part Details:"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td style="width: 274px">
                    &nbsp; Part ID:</td>
                  <td style="width: 112px">
                    &nbsp;<%# Eval("part_id") %>
                </td> 
                  <td style="width: 213px">
                    &nbsp;
                      Part Name:</td> 
                  <td>
                    &nbsp; <%# Eval("part_name") %>
                </td> 
            </tr>
            <tr>
                <td style="width: 274px">
                   &nbsp; CarModel:</td>
                  <td style="width: 112px">
                   &nbsp;<%# Eval("carmodel") %>
                </td> 
                
            </tr>
            <tr>
                <td style="height: 41px; width: 274px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Account Details"></asp:Label>
                    :</td>
                  
            </tr>
            
             <tr>
                <td style="width: 274px">
                    &nbsp;Quantity:</td>
                  <td style="width: 112px">
                    &nbsp; <%# Eval("quantity") %>
                </td> 
                  <td style="width: 213px">
                     &nbsp; Cost:</td> 
                       
                  <td>
                     &nbsp;<%# Eval("cost") %>
                </td> 
            </tr>
            
             <tr>
                <td style="width: 274px">
                      &nbsp;Tax:</td>
                  <td style="width: 112px">
                      &nbsp; <%# Eval("tax") %></td> 
                  <td style="width: 213px">
                      &nbsp; Total:</td> 
                  <td>
                      &nbsp; <%# Eval("amt") %></td> 
            </tr>
            <tr>
             <td style="height: 44px; width: 274px;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Manufacturing Details:"></asp:Label>
                    </td>
                    </tr>
               <tr>
                <td style="width: 274px">
                      &nbsp;Name:</td>
                  <td style="width: 112px">
                      &nbsp; <%# Eval("org_name") %></td> 
                  <td style="width: 213px">
                      &nbsp; Address:</td> 
                  <td>
                      &nbsp; <%# Eval("add1") %></td> 
            </tr>
            
             <tr>
                <td style="width: 274px">
                      &nbsp;Phone:</td>
                  <td style="width: 112px">
                      &nbsp; <%# Eval("phone1") %></td> 
                  <td style="width: 213px">
                      &nbsp; Email:</td> 
                  <td>
                      &nbsp; <%# Eval("email1") %></td> 
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
      
      
        <RowStyle BackColor="#EFF3FB" />
      
      
      <EditItemTemplate>
       <table style="width: 100%; height: 129px;">
            <tr>
                <td style="height: 21px; width: 398px;">
                    <asp:Label ID="Label1" runat="server" Text="Order Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                
            </tr>
            <tr>
                <td style="width: 398px">
                    &nbsp; Order ID:
                </td>
                <td style="width: 112px">
                   <asp:TextBox ID="txtOrderId"
                                         Text='<%# Bind("order_id")%>'
                                         RunAt="Server" />
                </td>
                <td style="width: 213px">
                     &nbsp;
                    OrderDate:</td>
                 <td>
                 
                    <asp:TextBox ID="txtOrderDate"
                                         Text='<%# Bind("orderdate") %>'
                                         RunAt="Server" />
                     <asp:ImageButton ID="ImageButton1" runat="server" 
                         ImageUrl="~/Images/calendar.jpg" Width="25px" />
                     <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                         PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
                         TargetControlID="txtOrderDate">
                     </asp:CalendarExtender>
                     
                </td>    
                  
            </tr>
           
            <tr>
                <td style="height: 28px; width: 398px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Part Details:"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td style="width: 398px">
                    &nbsp; Part ID:</td>
                  <td style="width: 112px">
                    <asp:TextBox ID="txtPartId"
                                         Text='<%# Bind("part_id") %>'
                                         RunAt="Server" />
                </td> 
                  <td style="width: 213px">
                    &nbsp;
                      Part Name:</td> 
                  <td>
                   <asp:TextBox ID="txtPartName"
                                         Text='<%# Bind("part_name") %>'
                                         RunAt="Server" />
                </td> 
            </tr>
            <tr>
                <td style="width: 398px">
                   &nbsp; CarModel:</td>
                  <td style="width: 112px">
                   <asp:TextBox ID="txtCarModel"
                                         Text='<%# Bind("carmodel") %>'
                                         RunAt="Server" />
                </td> 
                
            </tr>
            <tr>
                <td style="height: 17px; width: 398px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Account Details"></asp:Label>
                    :</td>
                  
            </tr>
            
             <tr>
                <td style="width: 398px">
                    &nbsp;Quantity:</td>
                  <td style="width: 112px">
                    <asp:TextBox ID="txtQuantity"
                                         Text='<%# Bind("quantity") %>'
                                         RunAt="Server" />
                </td> 
                  <td style="width: 213px">
                     &nbsp; Cost:</td> 
                       
                  <td>
                    <asp:TextBox ID="txtCost"
                                         Text='<%# Bind("cost") %>'
                                         RunAt="Server" />
                </td> 
            </tr>
            
             <tr>
                <td style="width: 398px">
                      &nbsp;Tax:</td>
                  <td style="width: 112px">
                      <asp:TextBox ID="txtTax"
                                         Text='<%# Bind("tax") %>'
                                         RunAt="Server" /></td> 
                  <td style="width: 213px">
                      &nbsp; Total:</td> 
                  <td>
                      <asp:TextBox ID="txtTotal"
                                         Text='<%# Bind("amt") %>'
                                         RunAt="Server" /></td> 
            </tr>
            <tr>
             <td style="height: 15px; width: 398px;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Manufacturing Details:"></asp:Label>
                    </td>
                    </tr>
               <tr>
                <td style="width: 398px">
                      &nbsp;Name:</td>
                  <td style="width: 112px">
                      <asp:TextBox ID="txtName"
                                         Text='<%# Bind("org_name") %>'
                                         RunAt="Server" /></td> 
                  <td style="width: 213px">
                      &nbsp; Address:</td> 
                  <td>
                     <asp:TextBox ID="txtAddress"
                                         Text='<%# Bind("add1") %>'
                                         RunAt="Server" /></td> 
            </tr>
            
             <tr>
                <td style="width: 398px">
                      &nbsp;Phone:</td>
                  <td style="width: 112px">
                     <asp:TextBox ID="txtPhone"
                                         Text='<%# Bind("phone1") %>'
                                         RunAt="Server" />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                       ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                       ErrorMessage="Please Enter 10 Digit Number"
                                                       ControlToValidate="txtPhone"
                                                       Dispalay="Dynamic"
                                                       Text="*" ForeColor="Red">
                        </asp:RegularExpressionValidator></td> 
                  <td style="width: 213px">
                      &nbsp; Email:</td> 
                  <td>
                     <asp:TextBox ID="txtEmail"
                                         Text='<%# Bind("email1") %>'
                                         RunAt="Server" />
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                        ErrorMessage="Please Enter Valid Email" 
                                                                        ControlToValidate="txtEmail"
                                                                        Dispalay="Dynamic"
                                                                        Text="*" ForeColor="Red">
                                         </asp:RegularExpressionValidator> </td> 
            </tr>      
                    
                   <tr>
                      <td colspan="2" style="height: 14px">
                        <asp:LinkButton ID="UpdateButton"
                                        Text="Update"
                                        CommandName="Update"
                                        RunAt="server"/>
                          &nbsp;
                        <asp:LinkButton ID="CancelUpdateButton"
                                        Text="Cancel"
                                        CommandName="Cancel"
                                        RunAt="server"/>
                           &nbsp;             
                          </td>
                    </tr>
                     <tr>
      
<td colspan="3">
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
       <table style="width: 100%; height: 129px;">
            <tr>
                <td style="height: 21px; width: 329px;">
                    <asp:Label ID="Label1" runat="server" Text="Order Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                
            </tr>
            <tr>
                <td style="width: 329px">
                    &nbsp; Order ID:
                </td>
                <td style="width: 112px">
                   <asp:TextBox ID="txtOrderId"
                                         Text='<%# Bind("order_id")%>'
                                         RunAt="Server" />
                </td>
                <td style="width: 213px">
                     &nbsp;
                    OrderDate:</td>
                 <td>
                    <asp:TextBox ID="txtOrderDate"
                                         Text='<%# Bind("orderdate") %>'
                                         RunAt="Server" />
                     <asp:ImageButton ID="ImageButton1" runat="server" 
                         ImageUrl="~/Images/calendar.jpg" Width="25px" />
                     <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
                         PopupButtonID="ImageButton1" PopupPosition="BottomRight" 
                         TargetControlID="txtOrderDate">
                     </asp:CalendarExtender>        
                </td>    
                  
            </tr>
           
            <tr>
                <td style="height: 9px; width: 329px;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Part Details:"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td style="width: 329px">
                    &nbsp; Part ID:</td>
                  <td style="width: 112px">
                    <asp:TextBox ID="txtPartId"
                                         Text='<%# Bind("part_id") %>'
                                         RunAt="Server" />
                </td> 
                  <td style="width: 213px">
                    &nbsp;
                      Part Name:</td> 
                  <td>
                   <asp:TextBox ID="txtPartName"
                                         Text='<%# Bind("part_name") %>'
                                         RunAt="Server" />
                </td> 
            </tr>
            <tr>
                <td style="width: 329px">
                   &nbsp; CarModel:</td>
                  <td style="width: 112px">
                   <asp:TextBox ID="txtCarModel"
                                         Text='<%# Bind("carmodel") %>'
                                         RunAt="Server" />
                </td> 
                
            </tr>
            <tr>
                <td style="width: 329px;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Account Details"></asp:Label>
                    :</td>
                  
            </tr>
            
             <tr>
                <td style="width: 329px">
                    &nbsp;Quantity:</td>
                  <td style="width: 112px">
                    <asp:TextBox ID="txtQuantity"
                                         Text='<%# Bind("quantity") %>'
                                         RunAt="Server" />
                </td> 
                  <td style="width: 213px">
                     &nbsp; Cost:</td> 
                       
                  <td>
                    <asp:TextBox ID="txtCost"
                                         Text='<%# Bind("cost") %>'
                                         RunAt="Server" />
                </td> 
            </tr>
            
             <tr>
                <td style="width: 329px">
                      &nbsp;Tax:</td>
                  <td style="width: 112px">
                      <asp:TextBox ID="txtTax"
                                         Text='<%# Bind("tax") %>'
                                         RunAt="Server" /></td> 
                  <td style="width: 213px">
                      &nbsp; Total:</td> 
                  <td>
                      <asp:TextBox ID="txtTotal"
                                         Text='<%# Bind("amt") %>'
                                         RunAt="Server" /></td> 
            </tr>
            <tr>
             <td style="height: 29px; width: 329px;">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Manufacturing Details:"></asp:Label>
                    </td>
                    </tr>
               <tr>
                <td style="width: 329px">
                      &nbsp;Name:</td>
                  <td style="width: 112px">
                      <asp:TextBox ID="txtName"
                                         Text='<%# Bind("org_name") %>'
                                         RunAt="Server" /></td> 
                  <td style="width: 213px">
                      &nbsp; Address:</td> 
                  <td>
                     <asp:TextBox ID="txtAddress"
                                         Text='<%# Bind("add1") %>'
                                         RunAt="Server" /></td> 
            </tr>
            
             <tr>
                <td style="width: 329px">
                      &nbsp;Phone:</td>
                  <td style="width: 112px">
                     <asp:TextBox ID="txtPhone"
                                         Text='<%# Bind("phone1") %>'
                                         RunAt="Server" /> 
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                       ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                       ErrorMessage="Please Enter 10 Digit Number"
                                                       ControlToValidate="txtPhone"
                                                       Dispalay="Dynamic"
                                                       Text="*" ForeColor="Red">
                        </asp:RegularExpressionValidator>  </td>              
                  <td style="width: 213px">
                      &nbsp; Email:</td> 
                  <td>
                     <asp:TextBox ID="txtEmail"
                                         Text='<%# Bind("email1") %>'
                                         RunAt="Server" />
                                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                                        ErrorMessage="Please Enter Valid Email" 
                                                                        ControlToValidate="txtEmail"
                                                                        Dispalay="Dynamic"
                                                                        Text="*" ForeColor="Red">
                                         </asp:RegularExpressionValidator> </td> 
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
                           &nbsp;             
                          </td>
                    </tr>
                     <tr>
      
<td colspan="3">
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
      
    </asp:FormView>  
  

      </td>          
   <td style="width: 389px">
   
      
   
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="part_id" 
           BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" 
           CellPadding="3" DataSourceID="ObjectDataSource1" GridLines="Horizontal" 
           Width="363px">
           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
           <Columns>
               <asp:CommandField ShowSelectButton="True" />
               <asp:BoundField DataField="part_id" HeaderText="Part ID" 
                   SortExpression="part_id" />
               <asp:BoundField DataField="part_name" HeaderText="Part Name" 
                   SortExpression="part_name" />
               <asp:BoundField DataField="org_name" HeaderText="Name" 
                   SortExpression="org_name" />
           </Columns>
           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           <AlternatingRowStyle BackColor="#F7F7F7" />
       </asp:GridView>
       <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="225px" 
           AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" 
           DataSourceID="ObjectDataSource2" GridLines="Horizontal">
           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
           <Fields>
           <asp:BoundField DataField="part_id" HeaderText="Part ID" 
                   SortExpression="part_id" />
                   
                 <asp:BoundField DataField="part_name" HeaderText="Part Name" 
                   SortExpression="part_name" />
                      
               <asp:BoundField DataField="carmodel" HeaderText="CarModel" 
                   SortExpression="carmodel" />
                   
                <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                
                <asp:BoundField DataField="org_name" HeaderText="Name" 
                   SortExpression="org_name" />
                   
               
               <asp:BoundField DataField="address" HeaderText="Address" 
                   SortExpression="address" />
               <asp:BoundField DataField="phone" HeaderText="Phone" 
                   SortExpression="phone" />
               <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
               
              
              
           </Fields>
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
           <AlternatingRowStyle BackColor="#F7F7F7" />
    </asp:DetailsView>
       <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
           SelectMethod="GetAllPurchasesBasicDetails" 
           TypeName="Demo.PurchaseDataAccessLayer"></asp:ObjectDataSource> 
       <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
           SelectMethod="GetAllPurchasesFullDetailsById" 
           TypeName="Demo.PurchaseDataAccessLayer">
           <SelectParameters>
               <asp:ControlParameter ControlID="GridView1" Name="part_id" 
                   PropertyName="SelectedValue" Type="Int32" />
           </SelectParameters>
       </asp:ObjectDataSource>
       
   </td>
    
   
   
      
                
                
                
   </tr>
  </table>
    
    
    
    
    
</asp:Content>