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
        <h2>联系我们</h2>
        <div class="row pageTitle m0">
            <div class="container">
                <h4 class="fleft">联系我们</h4>
                <ul class="breadcrumb fright">
                    <li><a href="${pageContext.request.contextPath }/index">首页</a></li>
                    <li class="active">联系我们</li>
                </ul>
            </div>
        </div>
    </section>
    <section id="contactRow" class="row contentRowPad">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">contact form style</h4>
                    </div>
                    <div class="row m0 contactForm">
                        <form class="row m0" id="contactForm" method="post" name="contact" action="contact_process.php">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="name">Name *</label>
                                    <input type="text" class="form-control" name="name" id="name">
                                </div>
                                <div class="col-sm-6">
                                    <label for="email">Email *</label>
                                    <input type="email" class="form-control" name="email" id="email">
                                </div>
                            </div>
                            <div class="row m0">
                                <label for="subject">subject *</label>
                                <input type="text" class="form-control" name="subject" id="subject">
                            </div>
                            <div class="row m0">
                                <label for="message">your message</label>
                                <textarea name="message" id="message" class="form-control"></textarea>
                            </div>
                            <div class="row m0 captchaRow">
                                <img src="images/captcha.png" alt=""><br>
                                <label for="captcha">Enter the above text</label>
                                <input type="text" class="form-control" name="captcha" id="captcha">
                            </div>
                            <button class="btn btn-primary btn-lg filled" type="submit">send message</button>                            
                        </form>
                        <div id="success">
                                <span class="green textcenter">
                                    Your message was sent successfully! I will be in touch as soon as I can.
                                </span>
                        </div>
                        <div id="error">
                            <span>
                                Something went wrong, try refreshing and submitting the form again.
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row m0">
                        <h4 class="contactHeading heading">contact info style</h4>
                    </div>
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-map-marker"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">where to reach us</h5>
                            <p>You can reach us at the following address:</p>
                            <h5>404/2 Design Street, Australia</h5>
                        </div> 
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">Email us @</h5>
                            <p>Email your issues and suggestion for the following email addresses: </p>
                            <h5>info@Defatch.com</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">need to call us?</h5>
                            <p>From Monday to Friday,10:00 AM - 8:00 PM, call us at:</p>
                            <h5>1000-1234-5678</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-question"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">we have great support</h5>
                            <p>We provide the best Quality of products to you.We are always here to help our lovely customers.We ship our products anywhere with more secure. We provide the best Quality of products to you.</p>
                        </div>
                    </div> <!--contactInfo-->
                </div>
            </div>
        </div>
    </section>
      <section id="googleMapRow" class="row">
        <div class="row m0" id="mapBox"></div>
    </section>
      <!-- 引入尾部 -->
   <%@ include file="client/footer.jsp" %>
</body>
</html>
    