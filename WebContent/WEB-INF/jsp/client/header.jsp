<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
       <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
	<header class="row" id="header">
         <div class="row m0 logo_line">
            <div class="container">
               <div class="row">
                  <div class="col-sm-5 logo"  >
                     <a href="${pageContext.request.contextPath }/" class="logo_a">
        
                     <img src="${pageContext.request.contextPath }/statics/client/images/Logo.png" 
                    style="margin-left:-100px;" alt="Rings">
                   
                      </a>
                  </div>
                  <div class="col-sm-7 searchSec">
                    <!-- 搜索条 -->
                     <div class="col-sm-12">
                        <div class="fright searchForm">
                           <form action="${pageContext.request.contextPath }/search" method="post">
                              <div class="input-group">
                                 <input type="hidden" name="cate" value="${category.categoryId}" id="search"> 
                                 <input type="search" id="search" class="form-control" name="str" placeholder="搜索点什么吧..."
                                 value="<c:out value="${serach}"></c:out>">
                                 <span class="input-group-btn searchIco">
                                 <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                                 </span>
                              </div>
                           </form>
                        </div>
                     </div>
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
                     	<!-- <a href="${pageContext.request.contextPath }/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">首页</a> -->
                        <a href="${pageContext.request.contextPath }/">首页</a>
                     </li>
                    
                     <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">商品分类</a>
                        <ul class="dropdown-menu" role="menu">
                        	<c:forEach items="${categories}" var="cate">
                           		<li><a href="${pageContext.request.contextPath }/pro1/${cate.categoryId}">${cate.category }</a></li>
                           </c:forEach>
                        </ul>
                     </li>
                    
                     <!-- 登录后可看到个人设置，登录位置变成个人设置 -->
                     <c:if test="${empty loginer}">
                      <li><a href="${pageContext.request.contextPath }/user/login">登录/注册</a></li>
                      </c:if>
                      <c:if test="${!empty loginer}">
                      <li class="dropdown">
                        <a href="${pageContext.request.contextPath }/user/manage" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">个人设置</a>
                        <ul class="dropdown-menu" role="menu">
                           <li><a href="${pageContext.request.contextPath }/user/userinfo">个人信息</a></li>
                           <li><a href="${pageContext.request.contextPath }/goodsstore">我的收藏</a></li>
                           <li><a href="${pageContext.request.contextPath }/client/order_for_goods">我的订单</a></li>
                           <li><a href="${pageContext.request.contextPath }/client/obtain_goods">购物车</a></li>
                           <li><a href="${pageContext.request.contextPath }/client/order_goods">结算</a></li>
                        </ul>
                     </li>
                     <li><a href="${pageContext.request.contextPath }/design/design">设计空间</a></li>
                     </c:if>
                     <li><a href="${pageContext.request.contextPath }/design/invitation">故事空间</a></li>
                     <c:if test="${!empty loginer}">
                     <li><a href="${pageContext.request.contextPath }/client/contact">联系我们</a></li>
                     <li><a href="${pageContext.request.contextPath }/client/feedback">用户反馈</a></li>
                     </c:if>
                  </ul>
               </div>
               <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
         </nav>
      </header>
      <!--Header-->