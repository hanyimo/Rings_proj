<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>首页</title>
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
      <section id="slider" class="row">
         <div class="row sliderCont flexslider m0">
            <ul class="slides nav">
               <li>
                  <img src="${pageContext.request.contextPath }/statics/client/images/slider/1.jpg" alt="">
                  <div class="text_lines row m0">
                     <div class="container p0 text-right">
                        <h3>traditional costume jewellery</h3>
                        <h2>new collections</h2>
                        <h4><a class="theme_btn with_i" href="#"><i class="fas fa-plus-circle"></i>Shop now</a></h4>
                     </div>
                  </div>
                  <!--Text Lines-->
               </li>
               <li>
                  <img src="${pageContext.request.contextPath }/statics/client/images/slider/3.jpg" alt="">
                  <div class="text_lines row m0">
                     <div class="container p0 text-left">
                        <h3>exquisite Designer Rings</h3>
                        <h2>new collections</h2>
                        <h4><a class="theme_btn with_i" href="#"><i class="fas fa-plus-circle"></i>Shop now</a></h4>
                     </div>
                  </div>
                  <!--Text Lines-->
               </li>
               <li>
                  <img src="${pageContext.request.contextPath }/statics/client/images/slider/5.jpg" alt="">
                  <div class="text_lines row m0">
                     <div class="container p0">
                        <h3>traditional Designer Jwellery</h3>
                        <h2>new collections</h2>
                        <h4><a class="theme_btn with_i" href="#"><i class="fas fa-plus-circle"></i>Shop now</a></h4>
                     </div>
                  </div>
                  <!--Text Lines-->
               </li>
               <li>
                  <img src="${pageContext.request.contextPath }/statics/client/images/slider/4.jpg" alt="">
                  <div class="text_lines row m0">
                     <div class="container p0 text-left">
                        <h3>Find your perfect diamond</h3>
                        <h2>By D-Shine</h2>
                        <h4><a class="theme_btn with_i" href="#"><i class="fas fa-plus-circle"></i>Shop now</a></h4>
                     </div>
                  </div>
                  <!--Text Lines-->
               </li>
            </ul>
         </div>
      </section>
      <!--Slider-->
      <section id="ring_sec" class="ring_sec">
         <div id="trigger" class="container ">
            <div class="row">
               <div class="col-md-6  diamond_j_cont">
                  <div  class="diamond_j">
                  </div>
                  <div class="diamond_b">
                     <img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/rings.jpg"
                     style="margin-top:-150px;margin-left:-60px;">
                  </div>
               </div>
               <div   class="col-md-6  ring_cont">
                  <h2>世界美好与你环环相扣</h2>
                  <p>钻石，是永恒的标志，纯洁透明，经久不变，钻戒就像是情人炯炯有神的眼睛，深情的注视着你，它是纯洁爱情的标志，表示对爱情的永恒追求和忠贞。“钻石恒久远，一颗永流传”</p>
                  <p>Rings戒指寓意为“一生·唯爱”，表示你我是唯一永恒的</p>
                  <a  class="com_btn" href="${pageContext.request.contextPath}/">开始购物</a>
               </div>
            </div>
         </div>
      </section>
      
      <section id="shopRings">
         <div class="sectionTitle">
            <h3>最新产品</h3>
            <h5>New goods</h5>
         </div>
            <!-- 循环获取最新产品，显示5个  -->
         <div class="d-carousel-cener owl-carousel">
          <c:forEach items="${gss}" var="gss">
            <div class="dc-inner">
               <a href="${pageContext.request.contextPath }/singleproduct/${gss.gid}">
                  <img alt="ring" src="${pageContext.request.contextPath }/statics/file/${gss.goodsPhoto}" style="width:300px;height:300px;">
                  <div class="dc-containt">
                     <h2 style="padding-top:50px;">${gss.goodsName}</h2>
                     <p>${gss.goodsDesc }</p>
                  </div>
               </a>
            </div>
        </c:forEach>
          </div>
 
        </section>    
         <!-- 我们的设计 -->     
      <section id="shopFeatures_new">
         <div class=" shopFeatures_new container">
            <ul>
               <li class="sf_first">
                  <a href="${pageContext.request.contextPath }/design"><img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/feature/1.jpg">
                  <div class="sf_box">
                     <div class="sf_box_inner">
                        <h2>free shipping</h2>
                        <h3>on orders over $299</h3>
                        <p>This offer is valid on all our store items</p>
                     </div>
                  </div>
               </a>
               </li>
               <li>
                  <a href="${pageContext.request.contextPath }/design">
                     <img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/feature/2.jpg">
                     <div class="sf_box">
                        <div class="sf_box_inner">
                           <h3>shop & save</h3>
                           <p>On all our store items</p>
                        </div>
                     </div>
                  </a>
               </li>
               <li>
                  <a href="${pageContext.request.contextPath }/design">
                     <img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/feature/3.jpg">
                     <div class="sf_box">
                        <div class="sf_box_inner">
                           <h3>Product catalog</h3>
                        </div>
                     </div>
                  </a>
               </li>
               <li>
                  <a href="${pageContext.request.contextPath }/design">
                     <img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/feature/4.jpg">
                     <div class="sf_box">
                        <div class="sf_box_inner">
                           <h3>product list</h3>
                           <p>Lorem ipsum dolor sit amet</p>
                        </div>
                     </div>
                  </a>
               </li>
            </ul>
         </div>
      </section>
      <section id="featureProducts" class="row contentRowPad">
         <div class="container">
            <div class="row sectionTitle">
               <h3>热门产品</h3>
               <h5>know more about our hot collection</h5>
            </div>
            <div class="row">
            <!-- 循环获取，显示六个在前端 -->
            <c:forEach items="${hotgs }" var="hs">
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${pageContext.request.contextPath }/statics/file/${hs.goodsPhoto}" style="width:280px;height:250px;"/>
                        <div class="row m0 hovArea">
                           <div class="row m0 icons">
                           	  <!-- 没登录跳到login -->
                           	  <c:if test="${empty loginer}">
                              <ul class="list-inline">
                                 <li><a href="${pageContext.request.contextPath }/user/login"><i class="fas fa-heart"></i></a></li>
                              </ul>
                              </c:if>
                           	  <c:if test="${!empty loginer}">
                              <ul class="list-inline">
                                 <li><a href="${pageContext.request.contextPath }/add_new_goodsss_store/${hs.gid}"><i class="fas fa-heart"></i></a></li>
                              </ul>
                              </c:if>
                           </div>
                           <div class="row m0 proType"><a href="#">${hs.goodsName }</a></div>
                           <div class="row m0 proRating">
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                              <i class="fas fa-star-o"></i>
                           </div>
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>￥${hs.goodsPrice }</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="${pageContext.request.contextPath }/singleproduct/${hs.gid}"">${hs.goodsName }</a></div>
                     <!-- 没登录，跳到登录 -->
                     <c:if test="${empty loginer}">
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="${pageContext.request.contextPath }/user/login">加入购物车</a>
                     </div>
                     </c:if>
                     <!-- 登录状态（加入购物车） -->
                     <c:if test="${!empty loginer}">
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="${pageContext.request.contextPath }/client/add_cart/${hs.gid}">加入购物车</a>
                     </div>
                     </c:if>
                  </div>
               </div> 
             </c:forEach>
         </div>
      </section>
      <!--顾客说-->
      <section id="testimonialTabs" class="row contentRowPad">
         <div class="container">
            <div class="row sectionTitle">
               <h3>客户的一些话</h3>
            </div>
            <div class="row">
               <div class="tab-content testiTabContent">
                  <div role="tabpanel" class="tab-pane active" id="testi1">
                     <p><span class="t_q_start">“</span>  这确实是选择戒指的绝佳之地。我对Rings产品及其提供的专用服务感到非常满意。<span class="t_q_end">”</span></p>
                     <h5 class="customerName">德韦恩·约翰逊</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi2">
                     <p><span class="t_q_start">“</span> 我简直太喜欢Rings的设计空间了，大家可以去体验体验，Pick它。 <span class="t_q_end">”</span></p>
                     <h5 class="customerName">乔恩·加</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi3">
                     <p><span class="t_q_start">“</span> 这故事空间也太美好了吧，美好的故事，配上美好的戒指。<span class="t_q_end">”</span></p>
                     <h5 class="customerName">威廉·帕克</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi4">
                     <p><span class="t_q_start">“</span> 这网站真的好人性化，各种功能齐全，就算不买东西也想来这玩一玩。 <span class="t_q_end">”</span></p>
                     <h5 class="customerName">威尔·史密斯</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi5">
                     <p><span class="t_q_start">“</span> Rings可以联系官方定制戒指欸，太棒了吧，太满意了 <span class="t_q_end">”</span></p>
                     <h5 class="customerName">德韦恩·约翰逊</h5>
                  </div>
               </div>
               <ul class="nav nav-tabs" role="tablist" id="testiTab">
                  <li role="presentation" class="active">
                     <a href="#testi1" aria-controls="testi1" role="tab" data-toggle="tab">
                     <img src="${pageContext.request.contextPath }/statics/client/images/testimonial/1.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-half"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi2" aria-controls="testi2" role="tab" data-toggle="tab">
                     <img src="${pageContext.request.contextPath }/statics/client/images/testimonial/2.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-o"></i>
                        <i class="fas fa-star-o"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi3" aria-controls="testi3" role="tab" data-toggle="tab">
                     <img src="${pageContext.request.contextPath }/statics/client/images/testimonial/3.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi4" aria-controls="testi4" role="tab" data-toggle="tab">
                     <img src="${pageContext.request.contextPath }/statics/client/images/testimonial/4.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-o"></i>
                     </div>
                  </li>
                  <li role="presentation">
                     <a href="#testi5" aria-controls="testi5" role="tab" data-toggle="tab">
                     <img src="${pageContext.request.contextPath }/statics/client/images/testimonial/5.png" alt="">
                     </a>
                     <div class="testi_rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star-o"></i>
                        <i class="fas fa-star-o"></i>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </section>
    
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
      
   </body>
</html>
