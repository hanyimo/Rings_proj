<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>产品详情</title>
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
    
    <section id="breadcrumbRow" class="row">
        <h2>产品详情</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">产品详情</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">产品详情</li>
                </ul>
            </div>
        </div>
    </section>
    <section class="row contentRowPad">
        <div class="container">
            <div class="row singleProduct">
                <div class="col-sm-6">
                    <div class="row m0 flexslider" id="productImageSlider">
                    <!-- 上方显示商品大图 -->
                        <ul >
                            <li><img src="${pageContext.request.contextPath }/statics/file/${gs.goodsPhoto}" alt="" ></li>
                        </ul>
                    </div>
                
                    <div class="row m0 flexslider" id="productImageSliderNav" >
                        <ul class="slides">
                             <!-- 循环获取相似产品推荐，点击图片跳转到各自详情页 -->
                              <c:forEach items="${gss}" var="gss">
                                 <li onclick="window.location.href='${pageContext.request.contextPath}/singleproduct/${gss.gid }'"><a href="#" >
                                 <img src="${pageContext.request.contextPath }/statics/file/${gss.goodsPhoto}" alt="" ></a></li>
                        </c:forEach>  
                        </ul>
                    </div>
               
             </div>
                <div class="col-sm-5">
                    <div class="row m0" style="margin-left:160px;">
                        <h4 class="heading">${gs.goodsName }</h4>
                        <h3 class="heading price"><del>￥580000</del>￥${gs.goodsPrice }</h3>
                        
                        <div class="row descList m0">
                            <dl class="dl-horizontal">
                                <dt>制造商：</dt>
                                <dd>Rings</dd>
                                 <dt>材质：</dt>
                                <dd>${gs.material }</dd>
                                <dt>产品代码 :</dt>
                                <dd>${gs.goodsCode }</dd>
                            </dl>
                        </div>
                        <div class="row m0 shortDesc">
                            <p class="m0">${gs.goodsDesc }</p>
                        </div>
                        <div class="row m0">
                            <h5 class="heading proAttr">尺寸:</h5>
                            <select class="selectpicker sizeSelect">
                                <option value="queen">7.5 mm</option>
                                <option value="red">7 mm</option>
                                <option value="black">7.43 mm</option>
                                <option value="white">7.6 mm</option>
                            </select>
                        </div>
                        <!-- 没登录，跳到登录 -->
	                    <c:if test="${empty loginer}">
                        <div class="row m0">
                            <ul class="list-inline wce">
                                <li><a href="${pageContext.request.contextPath}/user/login"><i class="far fa-heart"></i>添加收藏</a></li>
                            </ul>
                        </div>
                        </c:if>
                        <!-- 登录，判断用户是否收藏，收藏了显示已收藏；点击添加收藏变为已收藏 -->
	                    <c:if test="${!empty loginer}">
                        <div class="row m0">
                            <ul class="list-inline wce">
                            	<!-- 已经收藏 -->
                            	<c:if test="${!empty re}">
                                <li><a href="#"><i class="far fa-heart"></i>已收藏</a></li>
                            	</c:if>
                            	<!-- 没有收藏 -->
                            	<c:if test="${empty re}">
                                <li><a href="${pageContext.request.contextPath}/add_new_goodss_store/${gs.gid}"><i class="far fa-heart"></i>添加收藏</a></li>
                            	</c:if>
                            </ul>
                        </div>
                        </c:if>
                        
                        <div class="row m0 qtyAtc">
                            <div class="fleft quantity">
                                <div class="fleft">购买数量 <span>=</span></div>
                                <div class="input-group spinner">
                                    <input type="text" class="form-control" value="2">
                                    <div class="input-group-btn-vertical">
                                        <button class="btn btn-default"><i class="fas fa-angle-up"></i></button>
                                        <button class="btn btn-default"><i class="fas fa-angle-down"></i></button>
                                    </div>
                                </div>
                            </div>
                            <!-- 已登录 -->
                            <c:if test="${!empty loginer}">
                            <a href="${pageContext.request.contextPath }/client/add_cart2/${gs.gid}"><button class="fleft btn btn-default"><img src="${pageContext.request.contextPath }/statics/client/images/icons/cart3.png" alt=""> 添加购物车</button></a>
                        	</c:if>
                        	<!-- 未登录 -->
                            <c:if test="${empty loginer}">
                            <a href="${pageContext.request.contextPath }/user/login"><button class="fleft btn btn-default"><img src="${pageContext.request.contextPath }/statics/client/images/icons/cart3.png" alt=""> 添加购物车</button></a>
                        	</c:if>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row m0 tabRow">
                <ul class="nav nav-tabs" role="tablist" id="shortcodeTab">
                    <li role="presentation" class="active"><a href="#description" aria-controls="description" role="tab" data-toggle="tab">
                        <i class="fas fa-align-left"></i> 描述
                    </a></li>
                    <li role="presentation"><a href="#review" aria-controls="review" role="tab" data-toggle="tab">
                        <i class="fas fa-thumbs-up"></i> 评论
                    </a></li>
                     <li role="presentation"><a href="#review2" aria-controls="review2" role="tab" data-toggle="tab">
                        <i class="fas fa-thumbs-up"></i> 向其他人提问
                    </a></li>
                </ul>
                <div class="tab-content shortcodeTabContent">
                    <div role="tabpanel" class="tab-pane row m0 active" id="description">
                        <div class="fleft img"><img class="img-responsive" src="${pageContext.request.contextPath }/statics/file/${gs.goodsPhoto}" alt=""></div>
                        <div class="fleft desc">
                            <h5 class="heading">产品详情介绍</h5>
                            <p>${gs.goodsDesc }</p>
                        </div>
                    </div>
     			<div role="tabpanel" class="tab-pane row m0" id="review">
                        <div class="row m0 reviewAdd">
                            <h4 class="heading">评论</h4>
                            <!-- form -->
                            <form action="#" role="form" method="post" class="row m0 reviewForm">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="你的姓名 *" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" class="form-control" placeholder="你的邮箱 *" required>
                                    </div>
                                </div>
                               
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4 class="heading">你的评论</h4>
                                        <textarea name="reviewText" id="reviewText" class="form-control reviewText"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="submit" class="btn btn-primary filled">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane row m0" id="review2">
                        <div class="row m0 reviewAdd">
                            <h4 class="heading">提问</h4>
                            <!-- form -->
                            <form action="#" role="form" method="post" class="row m0 reviewForm">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" placeholder="你的姓名 *" required>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="email" class="form-control" placeholder="你的邮箱 *" required>
                                    </div>
                                </div>
                               
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4 class="heading">你的问题</h4>
                                        <textarea name="review2Text" id="review2Text" class="form-control reviewText"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input type="submit" class="btn btn-primary filled">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div> <!--Tabs Row-->
           </div>
        </section>
       <!-- 引入尾部 -->
   <%@ include file="client/footer.jsp" %>
</body>
</html>
    