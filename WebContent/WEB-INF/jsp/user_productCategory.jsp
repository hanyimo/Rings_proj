<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                    <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                    <li class="active">分类产品</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- 循环获取产品 -->
    <section class="row contentRowPad greybg">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 product">
                    <div class="productInner row m0">
                        <div class="row m0 imgHov">
                            <img src="${pageContext.request.contextPath }/statics/client/images/product/pro1p/1.png" alt="">
                            <div class="row m0 hovArea">
                                <div class="row m0 icons">
                                    <ul class="list-inline">
                                        <li><a href="#"><i class="fas fa-heart"></i></a></li>
                                    </ul>                                    
                                </div>
                                <div class="row m0 proType"><a href="#">Baccarat</a></div>
                                <div class="row m0 proRating">
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                    <i class="fas fa-star-o"></i>
                                </div>
                                <div class="row m0 proPrice"><i class="fas fa-usd"></i>455.00</div>
                            </div>
                        </div>
                        <div class="row m0 proName"><a href="singleproduct.jsp">Maximus quam posuere</a></div>
                        <div class="row m0 proBuyBtn">
                            <button class="addToCart btn">add to cart</button>
                        </div>
                    </div>
                </div>
             </div>   
        </div>
    </section>
    
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
</body>
</html>
    