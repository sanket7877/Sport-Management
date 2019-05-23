<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_page.aspx.cs" Inherits="SMS.home_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
Gec patan Sports
</title>
<style>
#te{
  color:#FFFFFF;
  position: absolute;
  top: 30%;
  left:47%;
  transform: translate(-50%, -50%);
  font-size:50px;
  font-style:bold;
}
#scd{
margin-top:40px;
padding:10px;
}
#cont{
margin-top:20px;
}
#qu{
border-radius:8px;
margin-top:40px;
background-color:#0091ea;
width:100%;
height:300px;
}
#quo{
padding:100px 70px;
font-size:45px;
font-style:italic;
color:white;
}
#news{
border-radius:12px;
margin-left:45px;
margin-right:45px;
margin-top:30px;
}
#not{
position:absolute;
margin-top:30px;
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
#teams{
position:absolute;
margin-top:30px;
border-radius:12px;
}
#news{
margin-top:30px;
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

<img src="images/main.png" width="100%" height="500px">
<div id="te">
<p>
</b>WELCOME SPORTS WEEK 2K19</b>
</p>
</div>
 <form id="form1" runat="server">
<div id="scd" style="text-align:center">
                <h1 class="no-strong">Check Schedule Of Sports: <span style="color:#03A9F4">Today Sports</span></h1>
				<p>Schedule of all sports check here and enjoy sports week winning team and player win exciting prize recevied by our respected principal sir and Faculty. 
				</p>
					<a  style="padding-left:10px;padding-right:10px" class="btn btn-primary" href="#" role="button">Sehedule</a>
				</div>
<div id="cont">				
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Sports</h5>
        <p class="card-text">participate sports enjoy sports week 2k19</p>
        <a href="#" class="btn btn-primary">More Details</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Teams</h5>
        <p class="card-text">cheack your favorite teams match and player</p>
        <a href="#" class="btn btn-primary">More Details</a>
      </div>
    </div>
  </div>
</div>
</div>
<div id="qu">
<p id="quo">
"Don't wait for the right moment to start ,start and make each moment right". 
</p>
</div>
<div id="news" class="card">
  <h5 class="card-header">News</h5>
  <div class="card-body">
    <h5 class="card-title">Updated news check here</h5>
    <p class="card-text">chess match started at 1:00 pm in civil department.</p>
    <a href="#" class="btn btn-primary">More Details</a>
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
</form>
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

</body>
</html>
