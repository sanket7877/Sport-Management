<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first_page.aspx.cs" Inherits="SMS.first_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>
first page
</title>
<style>

.bottom-right {
  position: absolute;
  padding: 130px 160px;
  top: 8px;
  left: 16px;
  color:#455A64;
}
    .custom {
        color: #455A64;
        width: 100px;
        F: \SMS\final\first_page.aspx height:60px;
    }

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<img height="670px" width="100%" src="images/first.png">
  <div class="bottom-right">
  <h1 style=font-size:130px>Let's <br>Play</h1>
                 <form id="form1" runat="server">

          <a href="home_page.aspx" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Go</a>
          </form>
</body>
</html>
