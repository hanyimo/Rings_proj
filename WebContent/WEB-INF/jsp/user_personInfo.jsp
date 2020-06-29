<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>个人设置</title>
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
    	<style type="text/css">
    		.box{width:200px;height:600px;float:left;margin-left:20px;}
    		ul li{list-style:none;line-height:120px;}
    		li span{color:black;font-size:18px;}
    		ul li a:hover {
    			text-decoration:none;
   				 color: #FF00FF;
			}
		  
			ul li a:visited {
			text-decoration:none;
   				 color:gray;
			}
				
    	</style>
     </head>
   <body>
   <!-- logo图   -->
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
         </header>
      <!-- 个人信息设置--> 
    	<!-- 侧边栏 -->
    	<div class="box">
				<ul >
					<li >
						<a href="#">
							<span>个人设置 </span>
						</a>
					</li>

					<li >
						<a href="#">
							<span>我的收藏 </span>
						</a>
					</li>

					<li >
						<a href="#">
							<span>我的订单</span>
						</a>
					</li>
					<li >
						<a href="#">
							<span>我的积分</span>
						</a>
					</li>

     			</ul>
   		</div>
   		<!-- 右边版块 -->
   		<div style="float:left;width:1200px;height:600px;">
     <!-- 直接引入页面即可 -->
   
   </div>
   <!-- footer -->
   <div style="float:left;width:1600px;height:50px;background:black ;opacity: 0.8;" >
   <p style="color:white;text-align:center;margin-top:10px;">Copyright &copy; 2020.Company name All rights reserved.</p>
   </div>
   </body>
</html>