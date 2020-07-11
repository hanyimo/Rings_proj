<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Login</title>
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
      <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/client/css/userstyle.css">
      
      <script type="text/javascript">
	   function changeImg(){
	     var img = document.getElementById("codeImg");
	     // 当src每次的路径方式变化时，就会去重新请求一次后台
	     // new Date().getTime()？它是JavaScript的Date对象的方法，此处的作用是为了避免浏览器不会去执行后台代码(因为浏览器缓存原因)
	     img.src="${pageContext.request.contextPath}/code_img?"+new Date().getTime();
	   }
	 </script>
	 <style type="text/css">
	 	#denglu{
	 		width:100%;
	 		height:400px;
	 		margin-left:35%;
	 		margin-top:200px;
	 	}
	 </style>
	 
</head>
<body>
		 <!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
   <!-- 设计空间   -->
      <section id="breadcrumbRow" class="row">
         <h2>登录 · 注册</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">登陆·注册</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                  <li class="active">登录 · 注册</li>
               </ul>
            </div>
         </div>
      </section>

	<div style="width:100%;height:700px;background-color:white">
		<div style="width:45%;height:58%;margin:10% auto;padding:50px 50px;text-align:center;">
	      <form:form action="${pageContext.request.contextPath }/user/login" cssClass="form" modelAttribute="user" method="post">
	            <fieldset>
	                <div class="content">
	        <div class="form sign-in">
	            <h2>欢迎登录</h2>
	            <label>
	                <form:label path="userName">账户</form:label>
                 	<form:input path="userName"/>
	                <form:errors path="userName" cssStyle="color:red;"/>
	            </label>
	            <label>
	               <form:label path="userPsw">密码</form:label>
                 <form:password path="userPsw"/>
                 <form:errors path="userPsw" cssStyle="color:red;"/>
	            </label>
	            <p class="forgot-pass"><a href="${pageContext.request.contextPath }/user/user_reset_password">重置密码</a></p>
	            <button type="submit" class="submit">登 录</button>
	            <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号登录</button>
	        </div>
	        </form:form>
	        
	        
	        <div class="sub-cont">
	            <div class="img">
	                <div class="img__text m--up">
	                    <h2>还未注册？</h2>
	                    <p>立即注册，发现大量机会！</p>
	                </div>
	                <div class="img__text m--in">
	                    <h2>已有帐号？</h2>
	                    <p>有帐号就登录吧，好久不见了！</p>
	                </div>
	                <div class="img__btn">
	                    <span class="m--up">注 册</span>
	                    <span class="m--in">登 录</span>
	                </div>
	            </div>
	       <form:form action="${pageContext.request.contextPath }/user/register" cssClass="form" modelAttribute="user">
	            <div class="form sign-up">
	                <h2>立即注册</h2>
	                <label>
	                    <form:label path="userName">账户</form:label>
                 		<form:input path="userName"/>
	                	<form:errors path="userName" cssStyle="color:red;"/>
	                </label>
	                <label>
	                    <form:label path="userEmail">邮箱</form:label>
                 		<form:input path="userEmail" pattern="^[1-9]{2,10}+@+qq.com"/>
	                	<form:errors path="userEmail" cssStyle="color:red;"/>
	                </label>
	                <label>
	                    <form:label path="userPsw">密码</form:label>
                 		<form:password path="userPsw"/>
	                	<form:errors path="userPsw" cssStyle="color:red;"/>
	                </label>
	                <button type="submit" class="submit">注 册</button>
	                <button type="button" class="fb-btn">使用 <span>facebook</span> 帐号注册</button>
	            </div>
	        </div>
	    </div>
	            </fieldset>
	        </form:form>
	        </div>
	</div>
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
      
      <script src="${pageContext.request.contextPath }/statics/client/js/script.js"></script>
</body>
</html>