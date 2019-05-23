<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="SMS.Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>
sign up
</title>
<style>
.midname{
color:white;
margin-top:10px;
margin-left:10px;
font-style:bold;
font-size:22px;
}
.d1{
color:#FFFFFF;
padding:1px;
width:120px;
}
.d3{
color:#FFFFFF;
padding:1px;
width:120px;
}
.middle1{
position:absolute;
top:144px;
left:150px;
width:500px;
}
.three{
height:60px;
background-color:#03A9F4;
border-radius:12px;
margin-top:20px;
}
.re{
position:absolute;
top:144px;
left:1220px;
}
.bu{
border-radius: 12px;
height:40px;
margin-top:10px;
margin-left:10px;
padding:0px;
width:100px;
background-color:#FFFFFF;
color:#03A9F4;
}
#over{
height:400px;
}
#div{
width:100%;
background-color:#03A9F4;
color:#FFFFFF;
padding:10px;
height:660px;
border-radius:12px;
margin-top:30px;
}
#bu{
border-radius: 12px;
height:40px;
margin-top:10px;
margin-left:10px;
padding:0px;
width:100px;
background-color:#FFFFFF;
color:#03A9F4;
}
#drop{
background-color:#FFFFFF;
color:#03A9F4;
height:40px;
}
.dr{
background-color:#FFFFFF;
color:#03A9F4;
}
#tab{
background-color:#03A9F4;
height:500px;
margin-top:50px;
color:#FFFFFF;
border-radius:12px;

}
input[type=text], select {
  width: 33%;
  padding: 10px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 12px;
  box-sizing: border-box;
}
table {
  border-collapse: collapse;
    text-align:center;
  width: 100%;
  color:#FFFFFF;
  font-style:bold;
}
th, td {
  text-align:center;
  padding: 15px;
}

tr:nth-child(even){
  text-align:center;
background-color:#448AFF;
}
.labe1{
font-size:22px;
padding-left:10px;
}
.labe2{
font-size:22px;
padding-left:10px;
}
.labe3{
font-size:22px;
padding-left:10px;
}
#not{
position:absolute;
margin-top:50px;
background-color:#0091ea;
width:100%;
height:290px;
color:white;
}
#feature{
position:absolute;
top:20px;
}
#page{
position:absolute;
top:20px;
padding-left:300px;
}
#ab{
position:absolute;
top:20px;
padding-left:500px;
}
#contact{
position:absolute;
top:20px;
padding-left:500px;
padding-top:140px;
}
#mar{
background-color:#03A9F4;
color:white;
height:35px;
font-size:30px;
padding:0px;
}
.second{
    margin-left:70px;
}
.third{
    margin-left:50px;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js">
</script>
</head>
<body style="background-color:white">

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
    </ul>
    <form class="form-inline my-2 my-lg-0">
	<img src="images/log.png">
    </form>
  </div>
</nav>

<marquee id="mar">WELCOME SPORTS WEEK 2K19</marquee>



<form id="form1" runat="server">
        <div class="three d1">
          <asp:Button ID="Button2" runat="server" class="btn btn-light bu" Text="Profile" Font-Bold="False" Font-Size="Large" ForeColor="#03A9F4" />
</div>

<div class="middle1 three d2">
    <div class="midname">
      <asp:Label ID="Label4"  runat="server" Text="majevadiyameet manojbhai" Font-Bold="True"></asp:Label>
   </div>
        </div>
<div class="re three d3">
    <asp:Button ID="LogOut" class="btn btn-light bu" runat="server" Text="LogOut" Font-Bold="False" ForeColor="#03A9F4" />
</div>
          <div id="div">
             <asp:Label ID="Label3" runat="server" Text="Crete Game" class="labe1"></asp:Label> 
              <br />
              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>	
              <br />
              <asp:Label ID="Label2" runat="server" Text="Descripation" class="labe2"></asp:Label>
              <asp:TextBox ID="TextBox2" class="form-control" rows="3" runat="server" Width="500px" TextMode="MultiLine"></asp:TextBox>
              <br />
              <asp:Label ID="Label1" runat="server" Text="Schedule" class="labe3"></asp:Label>
              <asp:TextBox ID = "txtMfgDate" runat="server" class="form-control" Width="250px" TextMode="Date" />
              <br />
              <asp:Button ID="Button5" runat="server" class="btn btn-light bu" Width="130px" Text="Create Game" ForeColor="#03A9F4" />
             <asp:Button ID="Button4" runat="server" class="btn btn-light bu" Width="130px" Text="Attendance" ForeColor="#03A9F4" />
              <asp:Button ID="Button1" runat="server" class="btn btn-light bu" Width="170px" Text="Create Game Winner" ForeColor="#03A9F4" />
              <asp:Button ID="ViewWinner" runat="server" class="btn btn-light bu" Width="130px" Text="View Winner" ForeColor="#03A9F4" />
              <br />
             <asp:Label ID="Label5" runat="server" Text="Select Sports" class="labe3"></asp:Label>
            <asp:DropDownList ID="DropDownList1" width="200px" class="form-control" runat="server">
            <asp:ListItem>Student</asp:ListItem>  
            <asp:ListItem>Faculty</asp:ListItem>  
            <asp:ListItem>Admin</asp:ListItem>  
           </asp:DropDownList>
              <br />
               <asp:Label ID="Label6" runat="server" Text="First Winner" class="first labe3"></asp:Label>
               <asp:Label ID="Label7" runat="server" Text="Second winner" class="second labe3"></asp:Label>
               <asp:Label ID="Label8" runat="server" Text="Third Winner" class="third labe3"></asp:Label>
              <br />
              <asp:TextBox ID="WinTextBox1" Width="200px" runat="server"></asp:TextBox>	
              <asp:TextBox ID="WinTextBox2" Width="200px" runat="server"></asp:TextBox>	
              <asp:TextBox ID="WinTextBox3" Width="200px" runat="server"></asp:TextBox>	
                <br />
              <asp:Button ID="SubmitWinner" runat="server" class="btn btn-light bu" Width="130px" Text="Create Winner" ForeColor="#03A9F4" />
</div>
      </form>  
	
 
<div id="tab">
<div id="over" style="overflow-y:auto;">
<table  id="table">
  <tr>
  <th>Game</th>
  <th>Descripation</th>
  <th>Schedule</th>
  </tr>
</table>
</div>
</div>

<div id="not">
<div id="feature">
<h4><b>Feature</b></h4>
<br/>
<a style="color:white" href="#">Fast and Easy Attendance Of sports</a>
<br/>
<a style="color:white" href="#">Sports Schedule</a>
<br/>
<a style="color:white" href="#">Dashboard</a>
<br/>
<a style="color:white" href="#">Teams</a>
</div>

<div id="page">
<h4><b>Pages</b></h4>
<br/>
<a style="color:white" href="#">Main page</a>
<br/>
<a style="color:white" href="#">Login</a>
<br/>
<a style="color:white" href="#">Sign up</a>
<br/>
<a style="color:white" href="#">Sports Schedule</a>
<br/>
<a style="color:white" href="#">Dashboard</a>
<br/>
<a style="color:white" href="#">Teams</a>
</div>
<div id="ab">
<h4><b>About TheRunnerSport</b></h4>
<p>
The RunnerSport are for attendence of student they participate in differnt sports and also check teams and schedule of matchs and news and update and much more.
so use our site enjoy.
</p>
</div>
<div id="contact">
<h4><b>Contact me with questions</b></h4>
<p>
For Design
<br/>
majevadiyameet@gmail.com
<br/>
9099877187
</p>
</div>
</div>
</body>
</html>
