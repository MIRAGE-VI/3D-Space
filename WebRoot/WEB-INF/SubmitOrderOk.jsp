<%@ page language="java" import="java.util.*,domain.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport"
        content="width=device-width, initial-scale=1">
  <title>Show dbq</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>

  <link rel="stylesheet" href="css/amazeui.min.css">
  <link rel="stylesheet" href="css/app.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  
	
</head>
<body>
 <div style=" width:900px;margin:0 auto;">
 
  <nav class="navbar navbar-inverse" >
  <div class="container-fluid" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">3D-Space</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
  		<li class="active"><a href="/3D-Space/goTo.do?flag=GoToHomePage" >HomePage<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Customize</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToShoppingCart">My Cart</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToMyOrders">My Order</a></li>
         <li><a href="/3D-Space/goTo.do?flag=GoToMyFavorites">MyFavorites</a></li>
        
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group" style = "width:100px">
          <input type="text" style = "width:110px" class="form-control" placeholder="Hello！">
        </div>
        <button type="submit" class="btn btn-default" >Search</button>
    
      </form>
      <ul class="nav navbar-nav navbar-left" style = "width:40px">
        <li><a href="/3D-Space">Login/Register</a></li>
    </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


 
 

  
  <div class="container" style="width:400px;margin-top:50px"> 
		<form class="form-signin" action = '/3D-Space/signUp.do' method = 'post'>
		<h4 class="form-signin-heading">SubmitOrder Ok!</h4><br/>
		
		<h4 class="form-signin-heading">For more details about your order, please check your email!</h4><br/>
		<a href="/3D-Space/goTo.do?flag=GoToHomePage">
		<h4 class="form-signin-heading"> Back to HomePage</h4>
		</a>
    </div> <!-- /container -->
  </div>
 


<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>

</body>
</html>


 
  
