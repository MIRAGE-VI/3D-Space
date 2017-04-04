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
<<<<<<< HEAD
  <title>3D-Space—MyOrder</title>
=======
  <title>Show dbq</title>
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d

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
<<<<<<< HEAD
  		<li><a href="/3D-Space/goTo.do?flag=GoToHomePage" >HomePage</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToCustomize">Customize</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToShoppingCart">My Cart</a></li>
        <li class="active"><a href="/3D-Space/goTo.do?flag=GoToMyOrders">My Order<span class="sr-only">(current)</span></a></li>
=======
  		<li class="active"><a href="/3D-Space/goTo.do?flag=GoToHomePage" >HomePage<span class="sr-only">(current)</span></a></li>
        <li><a href="#">Customize</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToShoppingCart">My Cart</a></li>
        <li><a href="/3D-Space/goTo.do?flag=GoToMyOrders">My Order</a></li>
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
         <li><a href="/3D-Space/goTo.do?flag=GoToMyFavorites">MyFavorites</a></li>
        
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group" style = "width:100px">
          <input type="text" style = "width:110px" class="form-control" placeholder="Hello！">
        </div>
        <button type="submit" class="btn btn-default" >Search</button>
    
      </form>
      <ul class="nav navbar-nav navbar-left" style = "width:40px">
<<<<<<< HEAD
        <li><a href="/3D-Space">Login/Register</a></li>
=======
        <li><a href="/3D-Space/goTo.do?flag=GoToLoginRegister">Login/Register</a></li>
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
    </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


 
 
<!-- 选项卡 -->
<div style=" width:900px;margin:10px;float:left;color:#F3F3F3;"></div>
	
<div class="am-tabs" data-am-tabs >
  <ul class="am-tabs-nav am-nav am-nav-tabs">
    <li class="am-active"><a href="#tab1"><h4>User Infromation</h4></a></li>
  </ul>
  <div class="am-tabs-bd" style="background-color:#F3F3F3;">
    <div class="am-tab-panel am-fade am-in am-active" id="tab1">

			

 	<table class="table table-hover">
		
		<thead>
        <tr>
<<<<<<< HEAD
            <th>UserId</th>
            <th>UserName</th>
            <th>UserEmail</th>
            <th>Telphone</th>
=======
           
            <th>UserName</th>
            <th>UserEmail</th>
            <th>Telephone</th>
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
			<th>Address</th>
        </tr>
		</thead>   
    		
		<tbody>
<<<<<<< HEAD
        <td style="vertical-align:middle;"><%=((User)session.getAttribute("SignInUser")).getU_id()%></td>
=======
        
>>>>>>> 03f86a12ee4e81a41c4c70c02f0595697cb7bf3d
        <td style="vertical-align:middle;"><%=((User)session.getAttribute("SignInUser")).getU_name()%></td>
        <td style="vertical-align:middle;"><%=((User)session.getAttribute("SignInUser")).getU_email()%></td>
        <td style="vertical-align:middle;"><%=((User)session.getAttribute("SignInUser")).getU_phoneNumber()%></td>
        <td style="vertical-align:middle;"><%=((User)session.getAttribute("SignInUser")).getU_address()%></td>       
		</tbody>	
		
    </table>	
   
	</div>
  </div>
</div>



<!-- 选项卡 -->
<div style=" width:900px;margin:10px;float:left;color:#F3F3F3;"></div>
	
<div class="am-tabs" data-am-tabs >
  <ul class="am-tabs-nav am-nav am-nav-tabs">
    <li class="am-active"><a href="#tab1"><h4>My Order</h4></a></li>
  </ul>
  <div class="am-tabs-bd" style="background-color:#F3F3F3;">
    <div class="am-tab-panel am-fade am-in am-active" id="tab1">

			

 	<table class="table table-hover">
		
		<thead>
        <tr>
            <th>Items</th>
            <th>Price</th>
            <th>Quantity</th>
           
			<th>Operation</th>
        </tr>
		</thead>   
    		
		<tbody>
		
		<%
			ArrayList al=(ArrayList)request.getAttribute("MyCartList");
    		for(int i=0;i<al.size();i++){
    		Goods goods=(Goods)al.get(i);
    	%> 
		
        <tr>
            <td width="50%">
            
			<table>
				<tr>
				<td><a href="/3D-Space/goTo.do?flag=GoToGoods&GoodsId=<%=goods.getG_id()%>"><img src="img/picitem<%=goods.getG_id()%>.jpg" width="84px" height="90px"/></a></td>
				<td style="vertical-align:top;font-weight:normal;">&nbsp<%=goods.getG_id()%>&nbsp<%=goods.getG_name() %> &nbsp <%=goods.getG_color()%><br/>
				<font style="color:#CD6600;">&nbspMaterial:<%=goods.getG_material()%></font></td>
				</tr>
			</table>
			
			</td>
			
            <td style="vertical-align:middle;">¥<%=goods.getG_price()%></td>
            <td style="vertical-align:middle;"><%=goods.getG_shoppingNum()%></td>
            
		
			<td align="left" style="vertical-align:middle;">
			<a href="/3D-Space/shoppingCl.do?type=CartAddToFavorites&GoodsId=<%=goods.getG_id()%>" class="btn btn-primary" type="button" data-toggle="tooltip" data-placement="bottom" title="Move to wish List"><span class="glyphicon glyphicon-heart" aria-hidden="true" ></span></a>&nbsp&nbsp&nbsp&nbsp&nbsp
			</td>
        </tr>
        <% 
    		}
    	%>
        
		</tbody>	
		
    </table>	
   
	</div>
  </div>
</div>


<div class="row" >
  <div class="col-sm-6 col-md-4" style="float:right; width:300px;">
    <div class="thumbnail">
      <div class="caption">
        <h3 align="right">The total amount:</h3>
        <p align="right"> <font size=3>¥${TotalPrice}</font></p>
     
        <p align="right"><a href="/3D-Space/shoppingCl.do?type=SubmitOrder" class="btn btn-danger btn-lg" role="button">Submit</a> </p>
      </div>
      
    </div>
  </div>
</div>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/amazeui.min.js"></script>

</body>
</html>
