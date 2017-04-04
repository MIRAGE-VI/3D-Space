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
  <div style="height:100px;width:380px;margin-left: auto;
margin-right: auto;"> 
  </div>
    
    <div class="container" style="width:400px;margin-top:50px"> 
		<form class="form-signin" action = '/3D-Space/signUp.do' method = 'post'>
		<h4 class="form-signin-heading">SignUp Ok!</h4><br/>
<<<<<<< HEAD
		<h4 class="form-signin-heading">Your UserId is:1326658627</h4><br/>
		<h4 class="form-signin-heading">Please keep it well!</h4><br/>
		<a href="/3D-Space">
=======
		
		<a href="/3D-Space/goTo.do?flag=GoToLoginRegister">
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
		<h4 class="form-signin-heading"> Back to SignIn page</h4>
		</a>
    </div> <!-- /container -->
  </div>
  </body>
</html>
  
