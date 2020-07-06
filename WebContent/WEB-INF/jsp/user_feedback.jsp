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
<style type="text/css">
   .Content-Main{
            max-width: 500px;
            margin: auto;
            margin-top: 50px;
            padding: 20px 30px 20px 30px;
            font: 12px "Helvetica Neue", Helvetica, Arial, sans-serif;
            text-shadow: 1px 1px 1px #FFF;
            border: 1px solid #DDD;
            border-radius: 5px;
            color: #888;
            background: #FFF;
        }
        .Content-Main h1{
            display: block;
            padding: 0px 0px 10px 40px;
            margin: -10px -30px 30px -30px;
            font: 25px "Helvetica Neue", Helvetica, Arial, sans-serif;
            border-bottom: 1px solid #DADADA;
            color: #888;
        }
        .Content-Main h1>span{
            display: block;
            font-size: 11px;
        }
        .Content-Main .feedback{
            display: block;
            margin: 0px 0px 5px;
        }
        .Content-Main .feedback>span{
            float: left;
            width: 20%;
            padding-right: 10px;
            margin-top: 10px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: bold;
            text-align: right;
            color: #333;
        }
        .Content-Main input[type="text"],.Content-Main textarea{
            width: 70%;
            height: 20px;
            padding: 5px 0px 5px 5px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select1{
            width: 71%;
            height: 35px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            padding: 5px 0px 5px 5px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select2{
            width: 13%;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .Content-Main textarea{
            width: 70%;
            height: 100px;
            padding: 5px 0px 0px 5px;
        }
        .submit{
            padding: 10px 25px 10px 25px;
            margin-left: 111px;
            border-radius: 4px;
            border:1px solid #CCC;
            background: #FFF;
            color: #333;
        }
        .submit:hover{
            color: #333;
            background-color: #EBEBEB;
            border-color: #ADADAD;
        }
</style>
   </head>
<body>
        <!-- 引入头部 -->
   <%@ include file="client/header.jsp" %>
    
    <section id="breadcrumbRow" class="row">
        <h2>用户反馈</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">用户反馈</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">用户反馈</li>
                </ul>
            </div>
        </div>
    </section>
    <section id="contactRow" class="row contentRowPad">
    	<div class="Content-Main">
			<div class="Content-Main1">
        		<h1>用户反馈</h1>
        		<h5 style="color:red;">${error}</h5>
    		</div>
    		<form name="feed" method="post" class="form-report" action="${pageContext.request.contextPath }/client/feedback" >
        		<div class="feedback">
            		<span>用户名:</span>
            		<input class="select1" name="userName" value="${user.userName }" readonly="readonly">
        		</div>
        		<div class="feedback">
            		<span>主&nbsp; 题:</span>
            		<input class="select1" name="subject">
        		</div>
        		<div class="feedback">
            		<span>内&nbsp; 容:</span>
            		<textarea id="fMessage" name="fMessage" placeholder="Your can tell me"></textarea>
        			
        		</div>
        		
        		<div class="feedback">
            		<input type="submit" class="submit" value="提交">
        		</div>
    		</form>
		</div>
    </section>
    
	<!-- 引入尾部 -->
	<%@ include file="client/footer.jsp" %>
</body>
</html>
    