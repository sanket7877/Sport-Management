<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="SMS.student" %>

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
background-color:#03A9F4;
color:#FFFFFF;
padding:10px;
height:180px;
border-radius:12px;
margin-top:30px;
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
padding-left:290px;
}
.labe3{
font-size:22px;
padding-left:260px;
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
          <asp:Button ID="Button2" runat="server" class="btn btn-light bu" Text="Add" ForeColor="#03A9F4" />
</div>

<div class="middle1 three d2">
    <div class="midname">
      <asp:Label ID="Label1" runat="server" Text="majevadiyameet manojbhai"></asp:Label>
    </div>
    </div>
<div class="re three d3">
    <asp:Button ID="Button3" class="btn btn-light bu" runat="server" Text="LogOut" ForeColor="#03A9F4" />
</div>

<div id="div">
                 <div class="form-group col-md-4">
       <asp:Label ID="Label6" for="exampleInputEmail1" runat="server" Text="Select Sports"></asp:Label>
         <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
            <asp:ListItem></asp:ListItem>  
            <asp:ListItem></asp:ListItem>  
            <asp:ListItem></asp:ListItem>  
           </asp:DropDownList>
    </div>
 <div class="form-group col-md-6">
               <asp:Button ID="Button4" runat="server" class="btn btn-light bu" Text="Add Game" ForeColor="#03A9F4" />
 </div>
    </div>
                </form>
	
<div id="tab">
<div id="over" style="overflow-y:auto;">
<table  id="table">
  <tr>
  <th>Select</th>
  <th>Name</th>
  <th>Enrollment Number</th>
  <th>Semester</th>
  <th>Sports</th>
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
