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

    <!-- 引入头部 -->
  <%@ include file="client/header.jsp" %>
    
    <section id="breadcrumbRow" class="row">
        <h2>结算</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">结算</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                    <li class="active">结算</li>
                </ul>
            </div>
        </div>
    </section>
    
    <section class="row contentRowPad">
        <div class="container">
            <div class="row">
                
                <div class="col-sm-5 orderSummaryRow">
                    <div class="row orderSummary m0">
                        <h4 class="heading">Order summary</h4>
                        <div class="row m0 orderSummaryInner table-responsive">
                            <table class="table table-condensed">
                                <thead>
                                    <tr>
                                        <th>Products</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Dining Table</td>
                                        <td>$840</td>
                                    </tr>
                                    <tr>
                                        <td>office furniture</td>
                                        <td>$420</td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>cart subtotal</td>
                                        <td>$1260</td>
                                    </tr>
                                    <tr>
                                        <td>shipping</td>
                                        <td>Free Shipping</td>
                                    </tr>
                                    <tr>
                                        <td>order total price</td>
                                        <td>$1260</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <form action="#" method="post" role="form" class="row checkoutForm">
                <div class="row m0">
                    <div class="col-sm-5" id="billingAddress">
                        <h4 class="heading">Billing Address</h4>

                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="firstName" id="firstName" placeholder="First Name" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="lastName" id="lastName" placeholder="Last Name" class="form-control">
                            </div>
                        </div>
                        <input type="text" name="companyName" id="companyName" placeholder="Company Name" class="form-control">
                        <input type="text" name="address" id="address" placeholder="Address" class="form-control">
                        <input type="text" name="townCity" id="townCity" placeholder="Town / City" class="form-control">
                        <input type="text" name="stateCountry" id="stateCountry" placeholder="State / Country" class="form-control">
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="zipcode" id="zipcode" placeholder="Postcode / ZIP" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <input type="tel" name="phone" id="phone" placeholder="Phone" class="form-control">
                            </div>
                        </div>

                        <input type="checkbox" name="shippingAddressEscape" id="shippingAddressEscape">
                        <label for="shippingAddressEscape">Ship Items To The Above Billing Address</label>                    
                    </div>
                    <div class="col-sm-5" id="shippingAddress">
                        <h4 class="heading">Shipping Address</h4>

                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="firstName" id="firstName" placeholder="First Name" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <input type="text" name="lastName" id="lastName" placeholder="Last Name" class="form-control">
                            </div>
                        </div>
                        <input type="text" name="companyName" id="companyName" placeholder="Company Name" class="form-control">
                        <input type="text" name="address" id="address" placeholder="Address" class="form-control">
                        <input type="text" name="townCity" id="townCity" placeholder="Town / City" class="form-control">
                        <input type="text" name="stateCountry" id="stateCountry" placeholder="State / Country" class="form-control">
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="text" name="zipcode" id="zipcode" placeholder="Postcode / ZIP" class="form-control">
                            </div>
                            <div class="col-sm-6">
                                <input type="tel" name="phone" id="phone" placeholder="Phone" class="form-control">
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
                        <button class="btn btn-primary filled btn-sm" type="submit">submit</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
    
    <!-- 引入尾部 -->
  <%@ include file="client/footer.jsp" %>
</body>
</html>
    