<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
 <c:if test="${empty loginer}">
		<c:redirect url="/user/login"/>
	</c:if>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>我的收藏</title>
      <!--Favicons-->
      <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath }/statics/client/favicon/favicon-32x32.png">
      <meta name="msapplication-TileColor" content="#ffffff">
      <meta name="theme-color" content="#ffffff">
      <!--Bootstrap and Other Vendors-->
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/bootstrap.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/bootstrap-theme.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/fontawesome-all.min.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/vendors/owl.carousel/css/owl.carousel.min.css">
       
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/client/vendors/flexslider/flexslider.css" media="screen" />
      <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Questrial" rel="stylesheet">
      <!--Mechanic Styles-->
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/style.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/responsive.css">
   </head>

<body class="no-skin">
<!-- 头部 -->
      <%@ include file="client/header.jsp" %>
    <section id="breadcrumbRow" class="row">
        <h2>我的收藏</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">收藏的商品</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">收藏的产品</li>
                </ul>
            </div>
        </div>
    </section>
    <div class="row sectionTitle">
               <h3>个人收藏列表</h3>
            </div>
    <!-- 收藏的商品展示 -->
     <section id="featureProducts" class="row contentRowPad">
         <div class="container">
            <div class="row">
            <!-- 循环获取，显示收藏的商品 -->
           <c:forEach items="${gsstore}" var="gstore">
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${pageContext.request.contextPath }/statics/file/${gstore.goodsPhoto}" alt=""
                        style="width:300px;height:300px;">
                        <div class="row m0 hovArea">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a href="${pageContext.request.contextPath }/del_goods_store/${gstore.gid}"><i class="fas fa-heart"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">${gstore.goodsName }</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>${gstore.goodsPrice }</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="${pageContext.request.contextPath }/singleproduct/${gstore.gid}">${gstore.goodsName }</a></div>
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="#">add to cart</a>
                     </div>
                  </div>
               </div> 
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