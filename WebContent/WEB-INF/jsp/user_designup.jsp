<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html lang="en">
   <head>
   <c:if test="${empty loginer}">
		<c:redirect url="/user/login"/>
	</c:if>
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
  	  <style>
  	  	#labelphoto{
   	  		color:#555555;
   	  	}
   	  	#labelphoto:hover span{
   	  		color:white;
   	  	}
   	  </style>
   </head>
   <body>
   <script>
   	<%
   		String error = (String)request.getSession().getAttribute("error");//获取后台参数给error变量
   	%>
   	var error = '<%=error%>';//输出error给js变量error
  	//页面加载完后执行
   	window.onload=function(){
		var a = "上传失败";
		var b = "只能上传图片";
		var c = "上传成功";
		if(error==a){
			alert(error);
		}else if(error==b){
			alert(error);
		}else if(error==c){
			alert(error);
		}error=null;
	}
   	<%session.removeAttribute("error"); %>
   </script>
	<!-- 头部 -->
      <%@ include file="client/header.jsp" %>
      <!-- 设计空间   -->
      <section id="breadcrumbRow" class="row">
         <h2>设计空间</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">设计空间</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                  <li class="active">发布设计</li>
               </ul>
            </div>
         </div>
      </section>
      <section id="ourTeam" class="row contentRowPad">
         <div class="container">
         	<div class="row sectionTitle">
         		<a class="com_btn" href="${pageContext.request.contextPath}/design/design" style="float:right;margin:0px 0px 0px 20px;">我的设计</a>
         		<a class="com_btn" href="https://www.vam.ac.uk/designaring" target="_blank" style="float:right;">开始设计</a>
         	</div>
            <div class="row sectionTitle" style="border-bottom:3px solid #e1e1e1;border-top:3px solid #e1e1e1">
               <h3 style="margin:20px 0px;">发布设计</h3>
            </div>
            <div class="row">
            	<section id="contactRow" class="row contentRowPad">
        			<div class="container">
            			<div class="row">
                			<div class="col-sm-6" >
                    			<div class="row m0 contactForm">
                        			<form class="row m0" id="contactForm" method="post" name="contact" action="${pageContext.request.contextPath}/design/add_design" enctype="multipart/form-data">
                            			<div class="row m0">
                                			<label for="dname">作品名称 *</label>
                                			<input type="text" class="form-control" name="dname" id="dname">
                            			</div>
                            			<div class="row m0">
                                			<label for="dlink">作品链接 *</label>
                                			<input type="text" class="form-control" name="dlink" id="dlink">
                            			</div>
                           			 	<div class="row m0">
                                			<label for="dMessage">作品信息</label>
                                			<textarea name="dMessage" id="dMessage" class="form-control"></textarea>
                            			</div>
                            			<label class="com_btn" id="labelphoto">
                            				<input type="file" name="bphoto" onchange="viewImage(this)" style="left:-9999px;position:absolute;">
                            				<span style="font-size:15px;">上传图片</span>
                            			</label>
                            			<button class="com_btn" type="submit" style="margin:10px 0px 0px 10px;">提交设计</button>                            
                        			</form>
                    			</div>
                			</div>
               				<div class="col-sm-6" style="align:center;margin:20px 0px 0px 55px; padding:0px;width:45%;height:380px">
               					<img src="${pageContext.request.contextPath }/statics/client/upload/aaa.jpg"  id="preview" style="width:525px;height:380px;"/>
               				</div>
            			</div>
        			</div>
    			</section>
            </div>
         </div>
      </section>
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
      <script type="text/javascript" src="${pageContext.request.contextPath }/statics/client/js/common.js"></script>
   	  
   </body>
</html>

    