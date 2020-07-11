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
      <title>结算</title>
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

    <!-- 引入头部 -->
  <%@ include file="client/header.jsp" %>
    
    <section id="breadcrumbRow" class="row">
        <h2>结算</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">结算</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">结算</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad">
        <div class="container">
            <form action="${pageContext.request.contextPath }/client/order_goods" method="post" role="form" class="row checkoutForm">
                    <div class="col-sm-5" id="billingAddress" style="float-left:800px;">
                        <h4 class="heading">Shipping Address</h4>

                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="receiver" id="receiver" placeholder="收件人" class="form-control" required>
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="companyName" id="companyName" placeholder="公司名称" class="form-control" required>
                            </div>
                        </div>
                        <input type="text" name="address" id="address" placeholder="收货地址" class="form-control" required>
                        <input type="text" name="townCity" id="townCity" placeholder="城镇/城市" class="form-control" required>
                        <input type="text" name="stateCountry" id="stateCountry" placeholder="州/国家" class="form-control" required>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="zipcode" id="zipcode" placeholder="邮政编码" class="form-control"required>
                            </div>
                            <div class="col-sm-6">
                                <input type="tel" name="phone" id="phone" placeholder="电话" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="float:left:45%;">
                <div class="col-sm-5 orderSummaryRow">
                     <div class="row orderSummary m0">
                       <h4 class="heading">结算</h4> 
                        <div class="row m0 orderSummaryInner table-responsive" id="billingAddress" style="width:500px;">
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <th style="text-align:center;">商品</th>
                                        <th style="text-align:center;">数量</th>
                                        <th style="text-align:center;">单价</th>
                                        <th style="text-align:center;">总价</th>
                                    </tr>
                                </thead>
                                <tbody>
                                 <c:set var="sum" value="0"/>
    				              <c:forEach items="${goods }" var="good">
                                    <tr>
                                        <td style="text-align:center;">${good.goods.goodsName}</td>
                                        <td style="text-align:center;">${good.count}</td>
                                        <td style="text-align:center;">${good.goods.goodsPrice}</td>
                                        <td style="text-align:center;">${good.count*good.goods.goodsPrice }</td>
                                    </tr>
                                    <c:set var="total" value="${total + good.count*good.goods.goodsPrice }"/>
                                  </c:forEach>
                                </tbody>
                            </table>
                            <p style="margin:50px 0px 0px 270px;"><strong>总计：</strong><c:out value="${total }" /></p>
                        </div>
                    </div>
                </div>
            </div>
                  
                
                <div class="row m0 paymentMethodMode">
                    <div class="col-sm-12">
                        <h4 class="heading">select payment mode</h4>
                        <div class="row m0">
                            <label>
                                <input type="radio" name="pamentMode" id="directBank"> Direct Bank Transfer <br> <p class="m0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order wont be shipped until 
the funds have cleared in our account.</p>
                            </label>
                            <label>
                                <input type="radio" name="pamentMode" id="cheque"> Cheque Payment
                            </label>
                            <label>
                               <input type="radio" name="pamentMode" id="paypal"> Paypal <img src="images/card.png" alt="">
                            </label>
                        </div>
                    </div>
                </div>
                
                <div class="row m0">
                    <div class="col-sm-12">
                        <button class="btn btn-primary filled btn-sm" type="submit" ><str onclick="myFunction()">submit</str></button>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
    <!-- 引入尾部 -->
  <%@ include file="client/footer.jsp" %>
   <script>
function myFunction() {
  var txt;
  if (confirm("请确认支付")) {
	  alert("支付成功！");
  } else {
	  alert("支付失败！");
  }
}
</script>
</body>
</html>
    