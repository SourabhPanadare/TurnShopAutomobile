<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" MasterPageFile="~/ParentMasterPage.master" Inherits="AutomobilePurchaseOrder.Home" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
    </asp:ScriptManagerProxy>
      
   <script type="text/javascript">

        var image1 = new Image()
        image1.src = "../Images/Fore/1.jpg"
        var image2 = new Image()
        image2.src = "../Images/Fore/2.jpg"
        var image3 = new Image()
        image3.src = "../Images/Fore/3.jpg"
        var image4 = new Image()
        image4.src = "../Images/Fore/4.jpg"
        var image5 = new Image()
        image5.src = "../Images/Fore/5.jpg"
    </script>
    
  <div>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <img src="../Images/Fore/1.jpg" name="slide" 
            style="height: 405px;  alt=""/>
         <script type="text/javascript">

             var step = 1
             function slideit() {
                 document.images.slide.src = eval("image" + step + ".src")
                 if (step < 5)
                     step++
                 else
                     step = 1
                 setTimeout("slideit()", 2500)
             }
             slideit()
   
    </script>
  </div>
</asp:Content>
