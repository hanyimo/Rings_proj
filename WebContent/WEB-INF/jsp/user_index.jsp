<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Home</title>
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
                     <img alt="" class="img-responsive"  src="${pageContext.request.contextPath }/statics/client/images/ring.png">
                  </div>
               </div>
               <div   class="col-md-6  ring_cont">
                  <h2>About D-shine</h2>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In pellentesque, diam viverra lacinia sodales, elit turpis consequat sapien, nec feugiat ex urna quis libero. Sed vel purus iaculis, lobortis neque vel, commodo enim. Quisque sollicitudin arcu ullamcorper libero consectetur commodo. </p>
                  <p>
                     lobortis neque vel, commodo enim!
                  </p>
                  <a  class="com_btn" href="${pageContext.request.contextPath}/product">Start shopping</a>
               </div>
            </div>
         </div>
      </section>
         <!-- 循环获取最新产品，显示6个 -->
      <section id="shopRings">
         <div class="sectionTitle">
            <h3>最新产品</h3>
            <h5>know more about our new collection</h5>
         </div>
         <div class="d-carousel-cener owl-carousel">
            <div class="dc-inner">
               <a href="${pageContext.request.contextPath }/singleproduct">
                  <img alt="ring" src="${pageContext.request.contextPath }/statics/client/images/carousel/1.png" >
                  <div class="dc-containt">
                     <h2>Cushion</h2>
                     <p>Bar Set Anniversary Ring</p>
                  </div>
               </a>
            </div>
            
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
               <div class="col-sm-3 product">
                  <div class="productInner row m0">
                     <div class="row m0 imgHov">
                        <img src="${pageContext.request.contextPath }/statics/client/images/product/1.png" alt="">
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
                           <div class="row m0 proPrice"><i class="fas fa-usd"></i>125.00</div>
                        </div>
                     </div>
                     <div class="row m0 proName"><a href="single-product.html">Donec aliquam</a></div>
                     <div class="row m0 proBuyBtn">
                        <a class="addToCart btn" href="#">add to cart</a>
                     </div>
                  </div>
               </div> 
         </div>
      </section>
      <!--顾客说-->
      <section id="testimonialTabs" class="row contentRowPad">
         <div class="container">
            <div class="row sectionTitle">
               <h3>some words from our customers</h3>
               <h5>we satisfied more than 700 customers</h5>
            </div>
            <div class="row">
               <div class="tab-content testiTabContent">
                  <div role="tabpanel" class="tab-pane active" id="testi1">
                     <p><span class="t_q_start">“</span> D-Shine is really excellent site for jewellery. I am very happy with the D-Shine products and dedicated services from them. D-Shine is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Dwayne johnson</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi2">
                     <p><span class="t_q_start">“</span> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vestibulum justo accumsan felis faucibus vestibulum. Integer a ex orci. Cras sit amet efficitur nisl, et vestibulum orci. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Jonh add</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi3">
                     <p><span class="t_q_start">“</span> D-Shine is really excellent site for jewellery. I am very happy with the D-Shine products and dedicated services from them. D-Shine is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">william parker</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi4">
                     <p><span class="t_q_start">“</span> Donec in velit eget lacus convallis dapibus. Nulla ultrices nulla sit amet justo pretium, ut tristique diam ultrices. Nunc efficitur mauris sit amet imperdiet <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Will smith</h5>
                  </div>
                  <div role="tabpanel" class="tab-pane" id="testi5">
                     <p><span class="t_q_start">“</span> D-Shine is really excellent site for jewellery. I am very happy with the D-Shine products and dedicated services from them. D-Shine is really excellent site for jewellery. <span class="t_q_end">”</span></p>
                     <h5 class="customerName">Dwayne johnson</h5>
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
