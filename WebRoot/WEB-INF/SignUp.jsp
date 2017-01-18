<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=200px, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>3D-Space Register</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style = "background-color:rgb(238,238,238);">
  <div style = "height:600px">
  
	<div style="height:100px;width:380px;margin-left: auto;margin-right: auto;">
    <%-- <h1>LOGO预留位置</h1> --%>
    <br>
    <br>
    &nbsp&nbsp<img src='/3D-Space/img/key.gif'/>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <img src='/3D-Space/img/key.gif'/> <hr/>
    </div>
    <div class="container" style="width:400px;margin-top:50px"> 
    
		<form  class="form-signin" action = '/3D-Space/signUp.do' method="post">
			<h2 class="form-signin-heading">Please sign up</h2>
			
			<input type="text" name="userName" class="form-control" placeholder="Name" required autofocus>
	        <br>
	        <label for="inputEmail" class="sr-only">Email</label>
	        <input type="email" name = "userEmail" class="form-control" placeholder="Email" required autofocus>
	        <br>
	        <label for="inputPassword" class="sr-only">Password</label>
	        <input type="password" name = "userPassword" class="form-control" placeholder="Password" required>
	        <br>
	        
	        <input type="text" name="userPhoneNumber" class="form-control" placeholder="PhoneNumber" required autofocus>
	        <br>
	        <input type="text" name="userAddress" class="form-control" placeholder="Address " required autofocus>
	        <br>
	        
	        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
	    </form>
        
    </div> <!-- /container -->
	</div>
  </body>
</html>
