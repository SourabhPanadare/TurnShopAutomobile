<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" MasterPageFile="~/Admin/Admin.master" Inherits="AutomobilePurchaseOrder.Admin.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table>
        <tr>
        <td>
           
    
                
    
    
    <asp:FormView ID="AdminFormView" runat="server" Title="Employee Form"
                  DataKeyNames="Emp_ID"  AllowPaging="True" 
                  onitemdeleting="AdminFormView_ItemDeleting"
                  onpageindexchanging="AdminFormView_PageIndexChanging"
                  onitemupdating="AdminFormView_ItemUpdating"
                  oniteminserted="AdminFormView_ItemInserted"
                  oniteminserting="AdminFormView_ItemInserting"
                  onitemupdated="AdminFormView_ItemUpdated"
                  onmodechanging="AdminFormView_ModeChanging" style="margin-right: 154px" 
                Height="433px" CellPadding="4" ForeColor="#333333" Width="619px">
     
        <PagerStyle ForeColor="White" HorizontalAlign="Center" 
            BackColor="#284775" />
     
     <HeaderStyle backcolor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
 
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
 
     <EditRowStyle backcolor="#999999"/>
     <ItemTemplate>
     
        <table style="width: 100%; height: 129px;">
            <tr>
                <td style="height: 27px; width: 274px;">
                    <asp:Label ID="Label1" runat="server" Text="Employee Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label>
                
                
            </tr>
            <tr>
                <td style="width: 274px; height: 50px;">
                    &nbsp; Emp ID:
                </td>
                <td style="width: 112px; height: 50px;">
                   &nbsp; <%# Eval("Emp_ID") %>
                </td>
                <td style="width: 213px; height: 50px;">
                     &nbsp;
                   Role:</td>
                 <td style="height: 50px">
                     &nbsp; <%# Eval("Role") %>
                </td>    
                  
            </tr>
           
           
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Emp_Name:</td>
                  <td style="width: 112px; height: 53px;">
                    &nbsp;<%# Eval("Emp_Name") %>
                </td> 
                  <td style="width: 213px; height: 53px;">
                    &nbsp;
                      Emp_Address:</td> 
                  <td style="height: 53px">
                    &nbsp; <%# Eval("Emp_Address") %>
                </td> 
            </tr>
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Contact:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;<%# Eval("Contact") %>
                </td> 
                 <td style="width: 274px; height: 53px;">
                   &nbsp; Email:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;<%# Eval("Email") %>
                </td> 
                
            </tr>
            
            
             <tr>
                <td style="width: 274px; height: 47px;">
                    &nbsp; Department:</td>
                  <td style="width: 112px; height: 47px;">
                    &nbsp; <%# Eval("Department") %>
                </td> 
                  <td style="width: 213px; height: 47px;">
                     &nbsp; Designation:</td> 
                       
                  <td style="height: 47px">
                     &nbsp;<%# Eval("Designation") %>
                </td> 
            </tr>
            
                  
                    
                    <tr>
                      <td colspan="2" style="height: 42px">
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
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
      <EditItemTemplate>
       <table style="width: 100%; height: 129px;">
            <tr>
                <td style="height: 27px; width: 274px;">
                    <asp:Label ID="Label1" runat="server" Text="Employee Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label></td>
                <td>
                
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                        SelectCommand="SELECT [ROLE_NAME] FROM [ROLES_DETAILS]"></asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td style="width: 274px; height: 50px;">
                    &nbsp; Emp ID:
                </td>
                <td style="width: 112px; height: 50px;">
                   &nbsp;<asp:Label ID="lblEmpID" runat="server" Text='<%# Eval("Emp_ID") %>' > </asp:Label>
                    &nbsp;</td>
                <td style="width: 213px; height: 50px;">
                     &nbsp;
                   Role:</td>
                 <td style="height: 50px">
                     &nbsp; 
                     <asp:DropDownList ID="DdlRoleName" runat="server" 
                         DataSourceID="SqlDataSource1" DataTextField="ROLE_NAME" 
                         DataValueField="ROLE_NAME">
                     </asp:DropDownList>
                </td>    
                  
            </tr>
           
           
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Emp_Name:</td>
                  <td style="width: 112px; height: 53px;">
                    &nbsp;
                      <asp:TextBox ID="TxtEmpName" Text='<%# Bind("Emp_Name")%>' runat="server" Height="25px"></asp:TextBox>
                </td> 
                  <td style="width: 213px; height: 53px;">
                    &nbsp;
                      Emp_Address:</td> 
                  <td style="height: 53px">
                    &nbsp; 
                      <asp:TextBox ID="TxtEmpAddress" RunAt="Server" Height="24px" 
                          Text='<%# Bind("Emp_Address")%>' />
                </td> 
            </tr>
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Contact:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;
                      <asp:TextBox ID="TxtContact" RunAt="Server" Height="26px" 
                          Text='<%# Bind("Contact")%>' />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                        ErrorMessage="Please Enter 10 Digit Number"
                                                        ControlToValidate="TxtContact"
                                                        Dispalay="Dynamic"
                                                        Text="*" ForeColor="Red">
       </asp:RegularExpressionValidator>
                </td> 
                 <td style="width: 274px; height: 53px;">
                   &nbsp; Email:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;
                      <asp:TextBox ID="TxtEmail" RunAt="Server" Height="25px" 
                          Text='<%# Bind("Email")%>' />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ErrorMessage="Please Enter Valid Email" 
                                                        ControlToValidate="TxtEmail"
                                                        Dispalay="Dynamic"
                                                        Text="*"
                                                        ForeColor="Red">
                         </asp:RegularExpressionValidator>  
                </td> 
                
            </tr>
            
            
             <tr>
                <td style="width: 274px; height: 47px;">
                    &nbsp; Department:</td>
                  <td style="width: 112px; height: 47px;">
                    &nbsp; 
                      <asp:TextBox ID="TxtDepartment" RunAt="Server" Height="24px" 
                          Text='<%# Bind("Department")%>' />
                </td> 
                  <td style="width: 213px; height: 47px;">
                     &nbsp; Designation:</td> 
                       
                  <td style="height: 47px">
                     &nbsp;
                      <asp:TextBox ID="TxtDesignation" RunAt="Server" Height="25px" 
                          Text='<%# Bind("Designation")%>' />
                </td> 
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
                      </td>
                    </tr>
                    
                  <tr>  <td colspan="3">
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
                <td style="height: 27px; width: 274px;">
                    <asp:Label ID="Label1" runat="server" Text="Employee Details:" Font-Bold="True" 
                        Font-Size="X-Large"></asp:Label></td>
                
            </tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" 
                    SelectCommand="SELECT [ROLE_NAME] FROM [ROLES_DETAILS]"></asp:SqlDataSource>
            </td>
            <tr>
                <td style="width: 274px; height: 50px;">
                    &nbsp; Emp ID:
                </td>
                <td style="width: 112px; height: 50px;">
                   &nbsp;<asp:Label ID="lblEmpID" runat="server" Text='<%# Eval("Emp_ID") %>' > </asp:Label>
                    &nbsp;</td>
                <td style="width: 213px; height: 50px;">
                     &nbsp;
                   Role:</td>
                 <td style="height: 50px">
                     &nbsp;
                     <asp:DropDownList ID="DdlRoleName" runat="server" 
                         DataSourceID="SqlDataSource1" DataTextField="ROLE_NAME" 
                         DataValueField="ROLE_NAME" Height="23px">
                     </asp:DropDownList>
                </td>    
                  
            </tr>
           
           
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Emp_Name:</td>
                  <td style="width: 112px; height: 53px;">
                    &nbsp;
                      <asp:TextBox ID="TxtEmpName" Text='<%# Bind("Emp_Name")%>' runat="server" Height="25px"></asp:TextBox>
                </td> 
                  <td style="width: 213px; height: 53px;">
                    &nbsp;
                      Emp_Address:</td> 
                  <td style="height: 53px">
                    &nbsp; 
                      <asp:TextBox ID="TxtEmpAddress" RunAt="Server" Height="24px" 
                          Text='<%# Bind("Emp_Address")%>' />
                </td> 
            </tr>
            <tr>
                <td style="width: 274px; height: 53px;">
                    &nbsp; Contact:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;
                      <asp:TextBox ID="TxtContact" RunAt="Server" Height="26px" 
                          Text='<%# Bind("Contact")%>' />
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                        ValidationExpression="^((\\+91-?)|0)?[0-9]{10}$"
                                                        ErrorMessage="Please Enter 10 Digit Number"
                                                        ControlToValidate="TxtContact"
                                                        Dispalay="Dynamic"
                                                        Text="*" ForeColor="Red">
       </asp:RegularExpressionValidator>
                </td> 
                 <td style="width: 274px; height: 53px;">
                   &nbsp; Email:</td>
                  <td style="width: 112px; height: 53px;">
                   &nbsp;
                      <asp:TextBox ID="TxtEmail" RunAt="Server" Height="25px" 
                          Text='<%# Bind("Email")%>' />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                                        ErrorMessage="Please Enter Valid Email"
                                                        ControlToValidate="TxtEmail"
                                                        Dispalay="Dynamic"
                                                        Text="*"
                                                        ForeColor="Red">
                         </asp:RegularExpressionValidator>    
                </td> 
                
            </tr>
            
            
             <tr>
                <td style="width: 274px; height: 47px;">
                    &nbsp; Department:</td>
                  <td style="width: 112px; height: 47px;">
                    &nbsp; 
                      <asp:TextBox ID="TxtDepartment" RunAt="Server" Height="24px" 
                          Text='<%# Bind("Department")%>' />
                </td> 
                  <td style="width: 213px; height: 47px;">
                     &nbsp; Designation:</td> 
                       
                  <td style="height: 47px">
                     &nbsp;
                      <asp:TextBox ID="TxtDesignation" RunAt="Server" Height="25px" 
                          Text='<%# Bind("Designation")%>' />
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
    
    </asp:FormView> 
      
      </td>
        
            
            
          <td>
              <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                  GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" 
                  DataSourceID="ObjectDataSource1">
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" />
                      <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                      <asp:BoundField DataField="UserName" HeaderText="UserName" 
                          SortExpression="UserName" />
                      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                      <asp:BoundField DataField="Approved" HeaderText="Approved" 
                          SortExpression="Approved" />
                  </Columns>
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <EditRowStyle BackColor="#999999" />
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              </asp:GridView>
   
              
   
              <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="243px" 
                  CellPadding="4" ForeColor="#333333" GridLines="None" 
                  AutoGenerateRows="False" DataSourceID="ObjectDataSource2">
                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                  <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                  <Fields>
                  <asp:BoundField DataField="ID" HeaderText="Emp ID" SortExpression="ID" />
                  
                  <asp:BoundField DataField="UserName" HeaderText="Emp Name" 
                          SortExpression="UserName" />
                    <asp:BoundField DataField="Address" HeaderText="Emp Address" 
                          SortExpression="Address" /> 
                      <asp:BoundField DataField="Country" HeaderText="Country" 
                          SortExpression="Country" />
                      <asp:BoundField DataField="Address" HeaderText="Address" 
                          SortExpression="Address" />
                      <asp:BoundField DataField="Contact" HeaderText="Contact" 
                          SortExpression="Contact" />
                      
                      
                      <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                      <asp:BoundField DataField="Approved" HeaderText="Approved" 
                          SortExpression="Approved" />
                  </Fields>
                  <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                  <EditRowStyle BackColor="#999999" />
                  <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              </asp:DetailsView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                  SelectMethod="GetAllEmployeesBasicDetails" 
                  TypeName="Demo.EmployeeDataAccessLayer">
              </asp:ObjectDataSource>
              <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                  SelectMethod="GetAllEmployeesFullDetailsById" 
                  TypeName="Demo.EmployeeDataAccessLayer">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="GridView1" Name="ID" 
                          PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
              </asp:ObjectDataSource>
            
                  
             </td>
             </tr>
             </table>           
</asp:Content>