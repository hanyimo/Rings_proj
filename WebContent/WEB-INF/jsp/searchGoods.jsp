<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>搜索商品</title>
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
   <body>
   <!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
     <section id="featureProducts" class="row contentRowPad">
            <div class="row">
            <!-- 循环获取搜索的商品显示前端 -->
             <c:forEach items="${search}" var="goodsList">
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${pageContext.request.contextPath }/statics/file/${goodsList.goodsPhoto}" alt=""
                        style="width:300px;height:300px;">
                        <div class="row m0 hovArea">
                           <div class="row m0 icons">
                              <ul class="list-inline">
                                 <li><a href="#"><i class="fas fa-heart"></i></a></li>
                              </ul>
                           </div>
                           <div class="row m0 proType"><a href="#">${goodsList.goodsName}</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>${goodsList.goodsPrice}</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="${pageContext.request.contextPath }/singleproduct/${goodsList.gid}">${goodsList.goodsName}</a></div>
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="#">add to cart</a>
                     </div>
                  </div>
               </div> 
           </c:forEach>
         </div>
      </section>
     
    
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
      
   </body>
</html>
