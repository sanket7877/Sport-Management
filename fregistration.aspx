<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fregistration.aspx.cs" Inherits="SMS.fregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>
sign up
</title>
<style>
.signup{
background-color:#03A9F4;
color:#FFFFFF;
padding:10px;
margin-left:25%;
border-radius: 12px;
}
#submit{
background-color:#FFFFFF;
color:#03A9F4;
font-style:bold;
margin-left:20px;
}
body{
background-color:#00BCD4;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body style="background-color:#00BCD4">
<nav class="navbar navbar-expand" style="background-color:#FFFFFF">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link"  href="home_page.aspx"><h4><b>Home</b></h4></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><h4><b>Schedule</b></h4></a>
      </li>
	  <li class="nav-item">
        <a class="nav-link" href="#"><h4><b>Teams</b></h4></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><h4><b>Sports</b></h4></a>
      </li>
     <li class="nav-item">
	 <a class="nav-link"  href="select_login.aspx"><h4><b>Login</b></h4></a>
	  </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
	<img src="images/log.png">
    </form>
  </div>
</nav>


 <form id="form1" runat="server" class="signup">
    <div class="form-group col-md-6">
         <asp:Label ID="Label3" for="exampleInputEmail1" runat="server" Text="Name"></asp:Label>
      <asp:TextBox ID="name" runat="server" class="form-control" MaxLength="25"></asp:TextBox>
     </div>
	<div class="form-group col-md-6">
		<asp:Label ID="Label2" for="exampleInputEmail1" runat="server" Text="Email Id"></asp:Label>
      <asp:TextBox ID="email" runat="server" class="form-control" MaxLength="25"></asp:TextBox>
		</div>
        <div class="form-group col-md-4">
       <asp:Label ID="Label6" for="exampleInputEmail1" runat="server" Text="Department"></asp:Label>
         <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
            <asp:ListItem>Computer</asp:ListItem>  
            <asp:ListItem>Electical</asp:ListItem>  
            <asp:ListItem>Civil</asp:ListItem>  
            <asp:ListItem>Mechanical</asp:ListItem>
            <asp:ListItem>E.c</asp:ListItem>  
           </asp:DropDownList>
    </div>
		<div class="form-group col-md-6">
		<asp:Label ID="Label5" for="exampleInputEmail1" runat="server" Text="Mobile No"></asp:Label>
      <asp:TextBox ID="mno" runat="server" class="form-control" TextMode="Phone" MaxLength="10"></asp:TextBox>
		</div>
<div class="form-group col-md-6">
      <asp:Label ID="Label7" for="exampleInputEmail1" runat="server" Text="Password"></asp:Label>
      <asp:TextBox ID="psw" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
    </div>
<div class="form-group col-md-6">
		<asp:Label ID="Label1" for="exampleInputEmail1" runat="server" Text="Reference Code"></asp:Label>
      <asp:TextBox ID="refcode" runat="server" class="form-control"></asp:TextBox>
		</div>
    <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-primary" />
  <br/>
  <br>
  &nbsp &nbsp Already have an account?<a href="select_login.aspx">Sign in</a>
</form>
</body>
</html>
