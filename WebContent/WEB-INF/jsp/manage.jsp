<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<c:if test="${empty loginer}">
		<c:redirect url="/user/login"/>
	</c:if>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath }/statics/client/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/client/css/menuBox.css">
    
    <style>
    	#one{
        	width: 600px;
        	height: 800px;
        	margin-left: 15%;
        	margin-top: 8%;
        }
    </style>
    
</head>
</head>
<body>
	<!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
	<!-- 设计空间   -->
      <section id="breadcrumbRow" class="row">
         <h2>个人信息管理</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">个人信息管理</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                  <li class="active">个人信息管理</li>
               </ul>
            </div>
         </div>
      </section>
      
     
	<div id="manage" style="width:100%;height:800px;float:left;">
    <nav class="mynav colorWhite" id="mynav">
        <div class="cloud1" id="cloud1">
            <div class="box1">
                <img src="${pageContext.request.contextPath }/statics/client/images/LC1.png" alt="cloud1" class="cloud"> &nbsp;&nbsp;&nbsp;&nbsp;信息管理
            </div>
            <a href="#" id="mynav-taggle"><span class="glyphicon glyphicon-align-justify" ></span></a>
        </div>
        <div class="right-bar">
            <div id="color-bar">
                <a href="#"> <span class="glyphicon glyphicon-cog"></span></a>
                <div class="tools noneBlock" id="tools">
                    <div class="triangle"></div>
                    <div class="colorbox">
                        <p>主题颜色</p>
                        <span class="glyphicon glyphicon-cloud bar-blue" id="colorBlue"></span>
                        <span class="glyphicon glyphicon-cloud bar-green" id="colorGreen"></span>
                        <span class="glyphicon glyphicon-cloud bar-grey" id="colorGrey"></span>
                        <span class="glyphicon glyphicon-cloud bar-white" id="colorWhite"></span>
                    </div>
                </div>
            </div>
            <a href="#"><span class="glyphicon glyphicon-log-in"></span></a>
        </div>
    </nav>
    <div class="main-menu">
        <div id="themenu" class="big-menu">
            <div class="leftbox">
                <div id="left-menu" class="list-group show-nav colorWhite">
                    <div class="hand">
                        <div class="handCenter">
                            <div class="radiusPhoto">
                                <img src="${pageContext.request.contextPath }/statics/client/userupload/${user.userPhoto}">
                                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                            </div>

                            <div class="logined">
                                <span class="glyphicon glyphicon-ok-sign"></span>已登录
                            </div>
                        </div>
                    </div>
                    <ul>
                        <li><a href="${pageContext.request.contextPath }/user/userinfo" class="list-group-item menu-li"><i class="glyphicon glyphicon-home" style="margin-right:50px;"></i>查看个人信息</a></li>
                        <li><a href="${pageContext.request.contextPath }/user/manage"  class="list-group-item"><i class="glyphicon glyphicon-user" style="margin-right:50px;"></i>修改个人信息</a></li>
                        <li><a href="${pageContext.request.contextPath }/user/loginout"  class="list-group-item"><i class="glyphicon glyphicon-log-in" style="margin-right:50px;"></i>登出</a></li>
                    </ul>
                </div>
                <div id="right-menu" class="list-group hide-nav2 colorWhite">
                    <ul></ul>
                </div>
            </div>
        </div>
        <div class="right-box small-box " id="right-box" style="padding:0px;position:absolute;left:280px;top:-50px;">
       		<div id="one" style="margin-left:200px;magin-top:0px;position:absolute;left:120px;top:-20px;">
				<table class="table" cellspacing="0" style="font-size: 12px;">
				<img src="${pageContext.request.contextPath }/statics/client/userupload/${user.userPhoto}"  id="preview" style="width:150px;height:150px;border-radius: 50%;"/>	    	
			<form action="${pageContext.request.contextPath }/userupload" enctype="multipart/form-data" method="post">
				    	<input type="file" name="userPhoto" id="userPhoto" onchange="viewImage(this)">
				    	<input type="hidden" name="uid" id="uid" value="${loginer.uid }">
				    	<p>用户名:<input type="text" name="userName" value="${user.userName}"/></p>
				    	<p>昵称:<input type="text" name="userAlice" value="${user.userAlice}"/> </p>
				    	<p>邮箱:<input type="text" name="userEmail" value="${user.userEmail}"/> </p>
				    	<c:choose>
           					<c:when test="${user.userSex=='男' }">
           						<p>性别:<input type="radio" name="userSex" value="女"/>女<input type="radio" name="userSex"  value="男" checked="checked" />男 </p>
           					</c:when>
           					<c:otherwise>
           						<p>性别:<input type="radio" name="userSex" value="女" checked="checked"/>女 
				    			<input type="radio" name="userSex"  value="男" />男 </p>
           					</c:otherwise>
           				</c:choose>
				    	<div class="formSubmit"><input type="submit" value="修改" class="redB" /></div>
			</form>
				</table>
			</div>
        </div>
    	</div>
	</div>

    <script src="./jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/client/js/common2.js"></script>
    <script>
        /*左侧菜单滑入*/
        $("#color-bar").click(function() {
            var tools = $("#tools")
            if (tools.hasClass("showBlock")) {
                tools.addClass("noneBlock").removeClass("showBlock");
            } else if (tools.hasClass("noneBlock")) {
                tools.addClass("showBlock").removeClass("noneBlock");
            }
        })
        $("#mynav-taggle").click(function() {
                var MenuLeft = $("#left-menu");
                var MenuRight = $("#right-menu");
                var MenuCloud = $("#cloud1");
                var rightBox = $("#right-box");
                var TheMenu = $("#themenu");
                if (MenuLeft.hasClass("show-nav")) {
                    setTimeout(function() {
                        MenuLeft.addClass("hide-nav").removeClass("show-nav");
                        MenuCloud.addClass("hide-nav3").removeClass("show-nav");
                        MenuRight.addClass("show-nav").removeClass("hide-nav2");
                        rightBox.addClass("big-box").removeClass("small-box");
                        TheMenu.addClass("small-menu").removeClass("big-menu");
                    }, 100)
                } else {
                    setTimeout(function() {
                        MenuLeft.addClass("show-nav").removeClass("hide-nav");
                        MenuCloud.addClass("show-nav").removeClass("hide-nav3");
                        MenuRight.addClass("hide-nav2").removeClass("show-nav");
                        rightBox.addClass("small-box").removeClass("big-box");
                        TheMenu.addClass("big-menu").removeClass("small-menu");
                    }, 100)
                }
            })
         </script>
          <script>
				function upload(){
					var formData = new FormData();
					formData.append("userPhoto",$("#userPhoto")[0].files[0]);
					formData.append("userName",$("#userName").val());
					$.ajax({
						url:'${pageContext.request.contextPath}/upload',
						type:'post',
						data: formData,
						contentType: false,
						processData: false,
						success:function(result){
							if(result['status'] == 'success'){
								$("#uPhoto").attr("src","${pageContext.request.contextPath}/statics/client/userupload/"+result['filename']);
								$("[class=welcome] img").attr("src","${pageContext.request.contextPath}/statics/client/userupload"+result['filename']);
							}
							else{
								alert(result['status']);
							}
						},
						error: function(XMLHttpRequest,textStatus,errorThrown) {
						    alert(errorThrown);
							}
						});
					}
	</script>
</body>
</html>