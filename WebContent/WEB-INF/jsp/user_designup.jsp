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
	<!-- 头部 -->
      <%@ include file="client/header.jsp" %>
      <!-- 设计空间   -->
      <section id="breadcrumbRow" class="row">
         <h2>设计空间</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">设计空间</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                  <li class="active">发布设计</li>
               </ul>
            </div>
         </div>
      </section>
      <section id="ourTeam" class="row contentRowPad">
         <div class="container">
         	<div class="row sectionTitle">
         		<a class="com_btn" href="${pageContext.request.contextPath}/client/design" style="float:right;margin:0px 0px 0px 20px;">我的设计</a>
         		<a class="com_btn" href="https://www.vam.ac.uk/designaring" style="float:right;">开始设计</a>
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
                        			<form class="row m0" id="contactForm" method="post" name="contact" action="contact_process.php">
                            			<div class="row m0">
                                			<label for="name">作品名称 *</label>
                                			<input type="text" class="form-control" name="name" id="name">
                            			</div>
                            			<div class="row m0">
                                			<label for="dlink">作品链接 *</label>
                                			<input type="text" class="form-control" name="dlink" id="dlink">
                            			</div>
                           			 	<div class="row m0">
                                			<label for="message">作品信息</label>
                                			<textarea name="message" id="message" class="form-control"></textarea>
                            			</div>
                            			<button class="com_btn" type="submit" style="margin:10px 10px 0px 0px;">上传图片</button>
                            			<button class="com_btn" type="submit" style="margin:10px 0px 0px 10px;">提交设计</button>                            
                        			</form>
                    			</div>
                			</div>
               				<div class="col-sm-6" style="margin:20px 0px 0px 55px; padding:0px;border:1px solid black;width:45%;">
               					<img alt="555" src="${pageContext.request.contextPath }/statics/client/images/blog/blog1.png" width="100%" />
               				</div>
            			</div>
        			</div>
    			</section>
            </div>
         </div>
      </section>
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
   </body>
</html>

    