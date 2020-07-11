<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>重置密码</title>
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
	 </script>
    <base href="<%=basePath%>">
     
    <title>生成验证码</title>
     
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript">
        function refreshcode(){
            document.getElementById("code").src="servlet/CodeMakerServlet?a="+Math.random()+100;
            return false;
        }
    </script>
  </head>
   
  <body style="background-color:white;">
  	
  		<!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
   <section id="breadcrumbRow" class="row">
         <h2>重置密码</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">重置密码</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                  <li class="active">重置密码</li>
               </ul>
            </div>
         </div>
      </section>
      <br/>
      <form method=post action="${pageContext.request.contextPath }/user/forget"  style="background-image: url(${pageContext.request.contextPath }/statics/client/images/bgg.jpg);background-size:100%;
      background-position:0px -100px;">
      		<div style="width:500px;height:600px;position:relative;left:600px;top:10px;"><br><br>
      		<label for="userId"><h4>账户名:</h4><span class="req"></span></label>
             <div class="formRight">
             	<input type="text" id="userName" name="userName" style="width:400px;height:40px;border-top:0;border-left:0;border-right:0;"/>
             </div><br>
             <label for="yzm"><h4>验证码:</h4><span class="req"></span></label>
             <div class="formRight">
             	<div class="oneTwo"><input type="text" id="yzm" name="yzm" style="width:400px;height:40px;border-top:0;border-left:0;border-right:0;"/></div>
             	<div class="oneTwo"><br><br>
             		<img id="codeImg" style="height:50px;width:150px;" src="${pageContext.request.contextPath}/code_img"/>
             		<a href="javascript:changeImg();" rel="external nofollow">看不清</a>
             	</div>
             </div>
             <br>
             <div class="formSubmit"><input type="submit" value="重置密码" class="redB" style="width:400px;height:30px;"/></div>
      </div>
      </form>
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
      <script src="${pageContext.request.contextPath }/statics/client/js/script.js"></script>
      <script>
	   function changeImg(){
	     var img = document.getElementById("codeImg");
	     img.src="${pageContext.request.contextPath}/code_img?"+new Date().getTime();
	   }
 	  </script>
  </body>
</html>