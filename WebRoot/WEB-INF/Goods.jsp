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
  <title>The Home Page Of 3D-Space</title>

  <!-- Set render engine for 360 browser -->
  <meta name="renderer" content="webkit">

  <!-- No Baidu Siteapp-->
  <meta http-equiv="Cache-Control" content="no-siteapp"/>



 
  <link rel="stylesheet" href="css/amazeui.min.css">
  <link href="css/bootstrap.min.css" rel="stylesheet">
 
 
</head>
<body>
 <div style=" width:900px;margin:auto;">
 
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
        <li><a href="#">Login/Register</a></li>
		</ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


 
 
<!--ÔÚÕâÀï±àÐ´ÄãµÄ´úÂë-->
<div
  style=" width:600px;float:left;" class="am-slider am-slider-default"
  data-am-flexslider="{controlNav: 'thumbnails', directionNav: false, slideshow: false}">
 
  <ul class="am-slides" >
   <a href="img/picitem${GoodsId}.jpg"> <img src="img/picitem${GoodsId}.jpg" width="600" height="400"/> </a>
    
<%--   //有问题，待解决
    <li data-thumb="img/dbq1s.png">
      <img src="img/dbq1.jpg" width="600" height="400"/></li>
	   <li data-thumb="img/dbq2s.png">
      <img src="img/dbq2.jpg" width="600" height="400"/></li>
	   <li data-thumb="img/dbq3s.png">
      <img src="img/dbq3.jpg" width="600" height="400"/></li>
	   <li data-thumb="img/dbq3s.png">
      <img src="img/dbq3.jpg" width="600" height="400"/></li>
--%>      
  </ul>
  
</div>

<div class="row" >
  <div class="col-sm-6 col-md-4" >
   <div class="thumbnail" style="width:285px;height:505px;float:left;background-color:RGB(248,248,248);">
   <h2 style = "margin:15px">3D打印一个狗</h2>
   <h4 style = "margin:15px">价格：<span style="text-decoration:line-through;">￥8.99 &nbsp</span>&nbsp&nbsp5.99</h4>
   <h3 style = "margin:15px">Choose Your Material:</h3>
    
<div class="btn-group" style = "margin-top:10px;margin-left:20px;">
  <button type="button" class="btn btn-danger" style = "width:207px" >可选材料：</button>
  <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
  <span class="caret"></span>
  <span class="sr-only">Toggle Dropdown</span>
  </button>
  <ul class="dropdown-menu" style = "width:233px" >
    <li><a href="#">ABS</a></li>
    <li><a href="#">PVC</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">巧克力</a></li>
    <li><a href="#">糖</a></li>
  </ul>
</div>







<h3 style = "margin:15px">Choose Your Color:</h3>  
<div class="btn-group" style = "margin-top:10px;margin-left:20px;">

  <button type="button" class="btn btn-warning" style = "width:207px" >可选颜色：</button>
  <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
    <span class="caret"></span>
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  
  <ul class="dropdown-menu" style = "width:233px" >
    <li><a href="#">黄色</a></li>
    <li><a href="#">蓝色</a></li>
    
    <li role="separator" class="divider"></li>
    
    <li><a href="#">透明</a></li>
    <li><a href="#">金属色，虽然并没有</a></li>
  </ul>
  
</div>


<div class="input-group" style = "margin-top:44px;margin-left:19px;width:235px">
  <span class="input-group-addon" id="basic-addon1">数量：</span>
  <input type="text" class="form-control" placeholder="300" aria-describedby="basic-addon1">
</div>

<br>

      <!-- <div class="caption" > -->
        <%--Buy Buy Buy Buy Buy Buy Buy Buy Buy Buy Buy--%>
         <div style="margin-left:19px;margin-top:6px;float:left">
          <a href="/3D-Space/shoppingCl.do?type=AddToCart&GoodsId=${GoodsId}" class="btn btn-primary btn-lg" role="button"> &nbsp &nbsp &nbsp<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>&nbsp &nbsp &nbsp Buy &nbsp &nbsp &nbsp</a> 
         </div>
        
		<%--collect --%>
        <div style="margin-left:16px;margin-top:6px;float:left">
          <a href="/3D-Space/shoppingCl.do?type=GoodsPageAddToFavorites&GoodsId=${GoodsId}" class="btn btn-default btn-lg"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></a>
        </div>

 <!-- Button trigger modal -->
<button style = "margin-left:19px;margin-top:10px;width:236px" type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
  我要评论
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">杀死那个石家庄人</h4>
      </div>




<form >

    <div class="modal-body">
    <label>评论</label>
    <input type="comment" style = "height:60px" class="form-control" id="comment" placeholder="在这里输入你的评论：">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Submit</button>
      </div>


</form>   



    </div>
  </div>
</div>





      <!-- </div> -->
    </div>
  </div>
</div>






<div style=" width:900px;float:left;">
</div>
<div class="am-tabs" data-am-tabs >
  <ul class="am-tabs-nav am-nav am-nav-tabs">
    <li class="am-active"><a href="#tab1"><font size=5>Description</font></a></li>
    <li><a href="#tab2"><font size=5>Specification</font></a></li>
    <li><a href="#tab3"><font size=5>Comment</font></a></li>




   






  </ul>

  <div class="am-tabs-bd" style="background-color:#F3F3F3;">
    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
      Dobermann<br>Keywords: dog, the doberman pinscher<br><br>Miniature doberman pinscher<br>Age: not suitable for children under 3 years old
	  Note: please do not put the toy in the mouth<br>Product description: a small doberman pinscher. Designer to true after the doberman pinscher 3 d scanning, and created again.<br>Very suitable for as a counter ornament or desktop decoration, also can play for children.
    </div>
    <div class="am-tab-panel am-fade" id="tab2">
      Model size: 120.36 mm x 121.29 mm x 95.27 mm<br><br>Model volume: 55594.64 mm^3<br><br>Material:ABS<br>
    </div>


    <div class="am-tab-panel am-fade" id="tab3">
     
	 
	 <article class="am-comment">
  <a href="#link-to-user-home">
    <img src="" alt="" class="am-comment-avatar" width="48" height="48"/>
  </a>

  <div class="am-comment-main">
    <header class="am-comment-hd">
      <!--<h3 class="am-comment-title">ÆÀÂÛ±êÌâ</h3>-->
      <div class="am-comment-meta">
        <a href="#link-to-user" class="am-comment-author">Ä³ÈË</a>
        ÆÀÂÛÓÚ <time datetime="2013-07-27T04:54:29-07:00" title="2013Äê7ÔÂ27ÈÕ ÏÂÎç7:54 ¸ñÁÖÄáÖÎ±ê×¼Ê±¼ä+0800">2014-7-12 15:30</time>
      </div>
    </header>

    <div class="am-comment-bd">
      so so so so so so nice!!!!!
    </div>
  </div>




</article>



    </div>




  </div>

  
</div>






</div>
<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>
<script src="js/amazeui.min.js"></script>
</body>
</html>
