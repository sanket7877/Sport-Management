<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alogin.aspx.cs" Inherits="SMS.alogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>
Gec patan Sports
</title>
<style>
.login{
width:50%;
background-color:#03A9F4;
color:#FFFFFF;
padding:10px;
margin-top:30px;
margin-left:49.5%;
border-radius: 12px;
position:absolute;
}
#teams{
margin-top:50px;
position:absolute;
border-radius:12px;
}
#submit{
background-color:#FFFFFF;
color:#03A9F4;
font-style:bold;
}
#mar{
background-color:#03A9F4;
color:white;
height:35px;
font-size:30px;
padding:0px;
}
#not{
background-color:#0091ea;
width:100%;
height:290px;
color:white;
position:absolute;
margin-top:300px;
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
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>    
<body>
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

<marquee id="mar">WELCOME SPORTS WEEK 2K19</marquee>



  <div id="teams" class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Teams</h5>
        <p class="card-text">cheack your favorite teams match and player</p>
        <a href="team.html" class="btn btn-primary">More Details</a>
      </div>
    </div>
  </div>
  

    <form id="form1" runat="server" class="login">
         <div class="form-group">
          <h3>  <asp:Label ID="Label1" for="exampleInputEmail1" runat="server" Text="Admin Login"></asp:Label></h3>
  </div>
  <div class="form-group">
      <asp:Label ID="Label3" for="exampleInputEmail1" runat="server" Text="Email address"></asp:Label>
      <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
  </div>
  <div class="form-group">
      <asp:Label ID="Label4" for="exampleInputPassword1" runat="server" Text="Password"></asp:Label>
      <asp:TextBox ID="password" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
  </div>
    <asp:Button ID="submit"  runat="server" class="btn btn-primary" Text="Submit"   />
</form> 



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
