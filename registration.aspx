<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="SMS.MySport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registration Page</h1>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="name" runat="server" ToolTip="Enter Your Name"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label6" runat="server" Text="E No"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="eno" runat="server" MaxLength="14" TextMode="Phone" ToolTip="Enter Enrollment No"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="email" runat="server" TextMode="Email" ToolTip="Enter Email Address"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Mobile No"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="mno" runat="server" MaxLength="10" TextMode="Phone" ToolTip="Enter Mobile NO"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Semester"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="sem" runat="server">
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Departtment"></asp:Label>&nbsp;<asp:DropDownList ID="dept" runat="server">
                    <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Mechanicle</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>E.C.</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                passowrd:&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="psw" runat="server" TextMode="Password" ToolTip="Enter Password"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        </div>
    </form>
</body>
</html>
