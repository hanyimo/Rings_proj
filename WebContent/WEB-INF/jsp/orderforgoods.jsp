<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>  
  
<!doctype html>
<html>
<head>
 <c:if test="${empty loginer}">
		<c:redirect url="/user/login"/>
	</c:if>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>订单表</title>
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
  body {
    font-family: arial;
  }

  table {
    border: 1px solid #ccc;
    width: 80%;
    margin:0;
    padding:0;
    border-collapse: collapse;
    border-spacing: 0;
    margin: 0 auto;
  }

  table tr {
    border: 1px solid #ddd;
    padding: 5px;
  }

  table th, table td {
    padding: 10px;
    text-align: center;
  }

  table th {
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 1px;
  }

  @media screen and (max-width: 600px) {

    table {
      border: 0;
    }

    table thead {
      display: none;
    }

    table tr {
      margin-bottom: 10px;
      display: block;
      border-bottom: 2px solid #ddd;
    }

    table td {
      display: block;
      text-align: right;
      font-size: 13px;
      border-bottom: 1px dotted #ccc;
    }

    table td:last-child {
      border-bottom: 0;
    }

    table td:before {
      content: attr(data-label);
      float: left;
      text-transform: uppercase;
      font-weight: bold;
    }
  }

.note{max-width: 80%; margin: 0 auto;}
 
	</style>
	 <script>
      function GetDateNow() {
  		var vNow = new Date();
  		var sNow = "";
  		sNow += String(vNow.getFullYear());
  		sNow += String(vNow.getMonth() + 1);
  		sNow += String(vNow.getDate());
  		sNow += String(vNow.getHours());
  		sNow += String(vNow.getMinutes());
  		sNow += String(vNow.getSeconds());
  		sNow += String(vNow.getMilliseconds());
  		document.getElementById("WIDout_trade_no").value =  sNow;
  		/* document.getElementById("WIDsubject").value = "测试";
  		document.getElementById("WIDtotal_amount").value = "0.01"; */
  	}
  	GetDateNow();
      
      </script>
</head>
<body>
  <!-- 引入头部 -->
  <%@ include file="client/header.jsp" %>
    
    <section id="breadcrumbRow" class="row">
        <h2>订单</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">点单</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">订单</li>
                </ul>
            </div>
        </div>
    </section><br/>
<table>

  <thead>
  
    <tr>
      <th>订单编号</th>
      <th>收货地址</th>
      <th>收件人</th>
      <th>订单状态</th>
      <th>创建时间</th>
      <th>付款时间</th>
      <th>是否发货</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${order }" var="orders">
    <tr>
      <td id="WIDout_trade_no" name="订单编号">${orders.order_code}</td>
      <td data-label="收货地址">${orders.address}</td>
      <td data-label="收件人">${orders.receiver}</td>
      <td data-label="订单状态"><a href="#" title="去支付">${orders.status}</a></td>
      <td data-label="创建时间" ><fmt:formatDate value="${orders.order_time}" pattern="yyyy-MM-dd"/></td>
      <td data-label="付款时间"><fmt:formatDate value="${orders.order_date}" pattern="yyyy-MM-dd"/></td>
      <td data-label="是否发货">${orders.shipment_status}</td>
    </tr>
    </c:forEach>
    <tr>
    <td></td>
    <td></td>
    <td><a href="${pageContext.request.contextPath }/"><button type="button">继续购物</button></a></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    </tr>
  </tbody>

</table>


</body>
</html>