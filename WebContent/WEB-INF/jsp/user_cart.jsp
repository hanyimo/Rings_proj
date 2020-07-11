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
      <title>购物车</title>
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
     <!--  <script type="text/javascript">
	 	 function checkDel() {
			return window.confirm("您确定要删除吗?");
		}
	 	 function checkClear() {
			return window.confirm("确定要清空购物车吗?");
		}
    </script> -->
   </head>
   <body>
    <!-- 引入头部 -->
  <%@ include file="client/header.jsp" %>
      <section id="breadcrumbRow" class="row">
         <h2>cart</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">购物车</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath}/index">首页</a></li>
                  <li class="active">购物车</li>
               </ul>
            </div>
         </div>
      </section>
      <section class="row contentRowPad">
         <div class="container">
            <div class=" cartPage">
               <h3 class="heading pageHeading">购物车</h3>
               <div class="table-responsive cartTable row m0">
                  <table class="table">
                     <thead>
                        <tr>
                        
                           <!-- <th class="productImage">商品图片</th> -->
                           <th class="productName">商品名称</th>
                           <th>商品价格:</th>
                           <th>购买数量:</th>
                           <th>总价:</th>
                           <th>移除:</th>
                        
                        </tr>
                     </thead>
                     <tbody  id="qingk">
                       <c:set var="sum" value="0"/>
    				    <c:forEach items="${goods }" var="good">
    				   <c:set var="sum" value="${sum=sum+good.count*good.goods.goodsPrice }"/> 
                        <tr class="alert" role="alert">
                          <td class="productName">
                              <h6 class="heading">${good.goods.goodsName}</h6>
                           </td>
                           <td class="price">${good.goods.goodsPrice }</td>
                           <td>
                              <div class="input-group spinner" style="border:0px solid green">
                                 <input type="text" class="form-control" value=" ${good.count}">
                              </div>
                           </td>
                           <!-- 总价 gid="${ good.goods.gid}"； 动态获取商品id：?gid=${good.goods.gid},,,,href="${pageContext.request.contextPath }/client/delete_goods"-->
                           <td class="price"><c:out value="${sum}"/></td>
                           <td><a cid="${good.cid}" href="#"  class="edit" data-dismiss="alert" aria-label="Close" ><i class="far fa-trash-alt"></i></a></td>
                        </tr>
                      </c:forEach>
                     </tbody>
                     <tfoot>
                        <tr>
                           <td colspan="7">
                              <a href="${pageContext.request.contextPath }/" class="btn btn-primary btn-lg">继续购物</a>
                              <a uid="${uid}"  href="#"  class="btn btn-default btn-lg fright">清空购物车</a>
                           </td>
                        </tr>
                     </tfoot>
                  </table>
               </div>
               <div class="row m0">
                  <div class="col-sm-4">
                     <form class="row discountCupon m0" action="#" method="get">
                        <h5 class="heading">Discount codes</h5>
                        <p>Enter your coupon code</p>
                        <input type="text" class="form-control" name="cuponCode" id="cuponCode">
                        <input type="submit" class="btn btn-default btn-sm" value="apply code">
                     </form>
                  </div>
                  <div class="col-sm-4">
                     <form class="row m0 shippingTax" action="#" method="get">
                        <h5 class="heading">Estimate shipping and tax</h5>
                        <p>Enter your destination to get a shipping estimate</p>
                        <div class="form-group">
                           <label for="country">Country*</label>
                           <select class="selectpicker countrySelect">
                              <option value="bd">Australia</option>
                              <option value="us">United States</option>
                              <option value="uk">United Kingdom</option>
                           </select>
                        </div>
                        <div class="form-group">
                           <label for="country">State/Province</label>
                           <select class="selectpicker countrySelect">
                              <option value="">Please select region, state or province</option>
                              <option value="Australian Capital Territory">Australian Capital Territory</option>
                              <option value="New South Wales">New South Wales</option>
                              <option value="Northern Territory">Northern Territory</option>
                              <option value="Queensland">Queensland</option>
                              <option value="South Australia">South Australia</option>
                              <option value="South Australia">Tasmania</option>
                              <option value="South Australia">Victoria</option>
                              <option value="South Australia">Western Australia</option>
                           </select>
                        </div>
                        <div class="form-group">
                           <label for="country">Zip/Postal Code</label>
                           <input type="text" class="form-control">
                        </div>
                        <input type="submit" class="btn btn-default btn-sm" value="get a code">
                     </form>
                  </div>
                  <div class="col-sm-4">
                     <div class="row m0 totalCheckout">
                        
                        <a href="${pageContext.request.contextPath }/client/order_goods" class="btn btn-default btn-sm">结算</a>
                       
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
        <!-- 引入尾部 -->
  	 <%@ include file="client/footer.jsp" %>
<script type="text/javascript">
/* 根据购物车cid删除商品 */
	 $(function(){
		$("a[cid]").click(function(event){
			event.preventDefault();
			var that = $(this);
			var cidV = $(this).attr('cid');
			$.ajax({
				  type: "POST",
				  url: "${pageContext.request.contextPath}/client/delete_goods",
				  data: {cid:cidV},
				  success:function(){
					  that.parents("tr").remove();
				  },
				  error:function(XMLHttpRequest, textStatus, errorThrown){
				  }
			});
		});
	}); 
	 /* 根据购物车uid删除商品 */
	 $(function(){
		$("a[uid]").click(function(event){
			event.preventDefault();
			var that = $(this);
			var uidV = $(this).attr('uid');
			$.ajax({
				  type: "POST",
				  url: "${pageContext.request.contextPath}/client/delete_orders",
				  dateTypez:"json",
				  data: {uid:uidV},
				  success:function(){
					  that.parents("tr").remove();
					  //成功后页面刷新
					  window.location.reload();
				  },
				  error:function(XMLHttpRequest, textStatus, errorThrown){
				  }
			});
		});
	}); 
</script>
   </body>
</html>

    