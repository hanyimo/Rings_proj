<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
       <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<header class="row" id="header">
         <div class="row m0 logo_line">
            <div class="container">
               <div class="row">
                  <div class="col-sm-5 logo">
                     <a href="${pageContext.request.contextPath }/index" class="logo_a"><img src="${pageContext.request.contextPath }/statics/client/images/dshine-logo.png" alt="D-shine"></a>
                  </div>
              </div>
             </div> 
           </div>   
         <nav class="navbar navbar-default m0 navbar-static-top">
            <div class="container-fluid container">
               <!-- Brand and toggle get grouped for better mobile display -->
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                  <i class="fas fa-bars"></i> MENU
                  </button>
               </div>
               <!-- Collect the nav links, forms, and other content for toggling -->
               <div class="collapse navbar-collapse" id="mainNav">
                  <ul class="nav navbar-nav">
                     <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/index"  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">首页</a>
                     </li>
                    
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">商品分类</a>
                        <ul class="dropdown-menu" role="menu">
                        	<c:forEach items="${categories}" var="cate">
                           		<li><a href="${pageContext.request.contextPath }/productCate1">${cate.category }</a></li>
                           </c:forEach>
                        </ul>
                     </li>
                     <!-- 登录后可看到个人设置，登录位置变成个人设置 -->
                      <li><a href="#">登录/注册</a></li>
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人设置</a>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="${pageContext.request.contextPath }/personInfo">个人信息</a></li>
                           <li><a href="#">我的收藏</a></li>
                            <li><a href="#">我的订单</a></li>
                           <li><a href="${pageContext.request.contextPath }/cart">购物车</a></li>
                           <li><a href="${pageContext.request.contextPath }/checkout">结算</a></li>
                        </ul>
                     </li>
                      <li><a href="${pageContext.request.contextPath }/client/design">设计空间</a></li>
                      <li><a href="#">我们的故事</a></li>
                      <li><a href="${pageContext.request.contextPath }/about">关于我们</a></li>
                     <li><a href="${pageContext.request.contextPath }/client/contact">联系我们</a></li>
                  </ul>
               </div>
               <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
         </nav>
      </header>
      <!--Header-->