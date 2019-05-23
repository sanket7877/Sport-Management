<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-form.aspx.cs" Inherits="SMS.user_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Runner sport</title>
      <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
        .auto-style2 {  
            margin-left: 0px;  
        }  
        .auto-style3 {  
            width: 121px;  
        }  
          .auto-style4 {
              width: 121px;
              height: 26px;
          }
          .auto-style5 {
              height: 26px;
          }
    </style>  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>provide the following details</h4>
               <div>
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                      
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" ToolTip="Enter UserName"></asp:TextBox>
                   <asp:Calendar ID="Calender1" runat="server" OnSelectionChanged="Calender1_SelectionChanged"></asp:Calendar> 
                        <asp:Image ID="Image1" runat="server" />
                 <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="button2" runat="server" Text="Download" OnClick="Button_Click" />
                   </div>
                <p>
                               <asp:Button ID="Button1" runat="server" Text="submit" OnClick="SubmitButton_Click" />
                    </p>

        </div>
    </form>

    <asp:HyperLink id="Hyperlink1" runat="server" Text="google" NavigateUrl="https://www.google.com"></asp:HyperLink>
    

    <asp:Label ID="showDate" runat="server"></asp:Label>
    <asp:Label ID="Label2" runat="server"></asp:Label>
   
    <h1>welcome to the webform</h1>
    <form action="./user-form" method="post">
        <input type="text" name="username" placeholder="Enter username" />    
        <input type="button" value="submit" />
    </form>
</body>
</html>
