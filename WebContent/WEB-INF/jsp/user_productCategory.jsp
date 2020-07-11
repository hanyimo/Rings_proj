<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>分类产品</title>
    
    <!--Favicons-->
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="manifest" href="favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">

    <meta name="theme-color" content="#ffffff">
    
    <!--Bootstrap and Other Vendors-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/vendors/owl.carousel/css/owl.carousel.css">    
    
     
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/client/vendors/flexslider/flexslider.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/client/vendors/bootstrap-rating/bootstrap-rating.css" media="screen" />
    
    <!--Fonts-->
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">  
    
    <!--Mechanic Styles-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/responsive.css">

</head>
<body>
     <!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
    
    <section id="breadcrumbRow" class="row">
        <h2>分类产品</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">分类产品</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">分类产品</li>
                </ul>
            </div>
        </div>
    </section>
     <section class="row contentRowPad greybg">
        <div class="container">
            <div class="row">
               <!-- 循环获取产品 -->
               <c:forEach items="${requestScope.gs}" var="gs">
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                          <img src="${pageContext.request.contextPath }/statics/file/${gs.goodsPhoto}" 
                          alt="" style="wdith:300px;height:280px;"> 
                          
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                           	 	<!-- 用户收藏商品 -->
	                            <!-- 没登录跳到login -->
	                           	  <c:if test="${empty loginer}">
	                              <ul class="list-inline">
	                              	<li><a href="${pageContext.request.contextPath }/user/login"><i class="fas fa-heart"></i></a></li>
	                              </ul>
	                              </c:if>
	                           	  <c:if test="${!empty loginer}">
	                              <ul class="list-inline">
                                      <li><a href="${pageContext.request.contextPath }/add_new_goods_store/${gs.gid}/${gs.category.categoryId}"><i class="fas fa-heart"></i></a></li>
                                  </ul>
	                              </c:if>
	                                                                        
                                </div>
                                <div class="row m0 proType">${gs.goodsName }</div>
                                <div class="row m0 proRating">
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fas fa-usd"></i>￥${gs.goodsPrice}</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="${pageContext.request.contextPath }/singleproduct/${gs.gid}">${gs.goodsName}</a></div>
                        <!-- 没登录，跳到登录 -->
	                     <c:if test="${empty loginer}">
	                     <div class="row m0 proBuyBtn">
                            <a href="${pageContext.request.contextPath }/user/login"><button class="addToCart btn">添加购物车</button></a>
                        </div>
	                     </c:if>
	                     <!-- 登录状态（加入购物车） -->
	                     <c:if test="${!empty loginer}">
	                     <div class="row m0 proBuyBtn">
                            <a href="${pageContext.request.contextPath }/client/add_cart3/${gs.gid}/${gs.category.categoryId}"><button class="addToCart btn">添加购物车</button></a>
                        </div>
	                     </c:if>
                    </div>
                </div>
                <input type="hidden" name="cate" value="${gs.category.categoryId}" id="search"> 
             </c:forEach>
             </div>   
        </div>
    </section>
    
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
    <!--jQuery-->
    <script src="${pageContext.request.contextPath }/statics/client/js/jquery-2.1.3.min.js"></script>

    <!--Google Maps-->
    <script src="http://ditu.google.cn/maps/api/js"></script>
    
    <!--Bootstrap JS-->
    <script src="${pageContext.request.contextPath }/statics/client/js/bootstrap.min.js"></script>
    
     
         
    <!--Owl Carousel-->
    <script src="${pageContext.request.contextPath }/statics/client/vendors/owl.carousel/js/owl.carousel.min.js"></script>
    
    <!--Isotope-->
    <script src="${pageContext.request.contextPath }/statics/client/vendors/isotope/isotope-custom.js"></script>
    
    <!--FlexSlider-->
    <script src="${pageContext.request.contextPath }/statics/client/vendors/flexslider/jquery.flexslider-min.js"></script>
    
    <!--D-shine JS-->
    <script src="${pageContext.request.contextPath }/statics/client/js/d-shine.js"></script>
</body>
</html>
    