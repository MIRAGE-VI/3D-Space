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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>3D-Space——~~</title>

    <!-- Bootstrap -->
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
        <li><a href="/3D-Space/goTo.do?flag=GoToLoginRegister">Login/Register</a></li>
    </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width:603px;float:left">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>



  <!-- Wrapper for slides -->
  
  <div class="carousel-inner" role="listbox">
  
    <div class="item active">
      <a href="http://cp.360.cn/kj/sd.html?agent=700007"><img src="img/pic1.jpg" alt="First"></a>
      
      <div class="carousel-caption">
       		  <font color='red' bold='true' size='4'>la la la! 3D-Space Site is</font>
              <font color='yellow' size='6'><b>Completed !</b></font>
      </div>
    </div>
    
    <div class="item">
       <a href="http://www.3ddayin.net/"><img src="img/pic2.jpg" alt="Second"></a>
      <div class="carousel-caption">
        <font color=#00FFFF size='6'><b>Ultimaker 3D Printer!!</b></font>
      </div>
    </div>
    
     <div class="item">
      <a href="http://threejs.org/editor/"><img src="img/pic3.jpg" alt="Third"></a>
      <div class="carousel-caption">
        <font color=#00FF00 size='7'><b>3D Factory</b></font>
      </div>
    </div>
    
  </div>




  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div style="width:296px;height:340px;float:left;background-color:Black">
 <img src="img/pic4.jpg" alt="Product"width="296">
  <img src="img/pic5.jpg" alt="Product"width="296">
  
  
</div>
<div class="row" >

<%
//循环显示出所有商品信息
for(int i=1;i<13;i++)
{
	request.setAttribute("GoodsId", i);
%>
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
     
      <img src="img/picitem${GoodsId}.jpg" alt="Product" height="260" width="260">
     
      <div class="caption">
        <h3>This is our product ${GoodsId}</h3>
        <p>$ 25</p>
        <p>
        
        <a href="/3D-Space/goTo.do?flag=GoToGoods&GoodsId=${GoodsId}" class="btn btn-primary" role="button">
        <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp Buy &nbsp
        </a> &nbsp &nbsp &nbsp
        
        <a href="#" class="btn btn-info" role="button">
        <span class="glyphicon glyphicon-share" aria-hidden="true"></span>Share
        </a> &nbsp &nbsp
        
        <a href="/3D-Space/shoppingCl.do?type=HomePageAddToFavorites&GoodsId=${GoodsId}" class="btn btn-default">
        <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
        </a>
        </p>
      </div>
    </div>
  </div>
<% 
}
%>
</div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
     <script src="js/jquery.min.js"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
    
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
    
    <a class="navbar-brand">3D-Space</a>
    </div>
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a>© 2016 WWW.3D-Space.com </a></li>
        <li><a>All Rights Reserved</a></li>
        <li><a>SSE of University of Science and Technology of China</a></li>
        
      </ul>    
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>  
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>  
  </body>
</html>
