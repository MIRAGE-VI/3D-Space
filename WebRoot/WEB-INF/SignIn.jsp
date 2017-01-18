<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

    <title>3D-Space sign in</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
    
    <link href="css/signIn.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

<%--java片段方法--%>
<% 
	Cookie cookies[]=request.getCookies();
	String userPhoneNumber="";
	String userPassword="";
	if(cookies!=null){
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("userPhoneNumber")){
				userPhoneNumber=cookie.getValue();
			}
		}
		for(Cookie cookie:cookies){
			if(cookie.getName().equals("userPassword")){
				userPassword=cookie.getValue();
			}
		}
	}
%>
 <%--jstl标签方法 暂未成功！！！！！！--%>
 <%--<c:set></c:set>默认存在pagecontext --%>
 
 <%-- 

	 <c:forEach items="${pageContext.request.cookies}" var="cookie"> 
	 
	  <c:if test="${fn:contains(cookie.name,'userId')}">
	    <c:set var="userId" value="${cookie.value}"/>
	  </c:if>
	  
	  <c:if test="${fn:contains(cookie.name,'userPassword')}">
	    <c:set var="userPassword" value="${cookie.value}"/>
	  </c:if>
	  
	</c:forEach>

--%>
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
		
		<form class="form-signin" action = '/3D-Space/signIn.do' method = 'post'>
		
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        
        <input type="text" name="userPhoneNumber" value="<%=userPhoneNumber%>" class="form-control" placeholder="PhoneNumber" required autofocus>
        <br>
			<label for="inputPassword" class="sr-only">Password</label>
			<input type="password" name = "userPassword" value="<%=userPassword%>" class="form-control" placeholder="Password" required>
			
			<div class="checkbox">
			<label>
            <input type="checkbox" name="isKeepInfo" value="remember"> Remember me
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            
            <input type = 'text' name="checkCode" placeholder="CheckCode"/>
            <img src='/3D-Space/servlet/CreateCode'><br/>
            
			</label>
			</div>
     
        <font color='red'>${ErrInfo}</font>
         
        <br/>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        <br/>
        <a href='/3D-Space/goTo.do?flag=GoToSignUp'>
		<input type = button value = "Sign up" class="btn btn-lg btn-primary btn-block">
		</a>
      </form>
    </div> <!-- /container -->
</div>
</body>
</html>
