<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

<!DOCTYPE html>
<html lang="en">
 <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Contact</title>
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
      <script src="${pageContext.request.contextPath}/statics/client/js/jquery.min.js"></script>
      <script src="${pageContext.request.contextPath}/statics/client/js/wangEditor.min.js"></script>
<style type="text/css">
   .col-sm-7{
      	margin-top:-600px;
      	margin-left:680px;
     }
    .w-e-text-container{
      	width:400px;
      }
     #mapBox{
      	width:1000px;
      	height:500px;
      	margin-left:70px;
      }
     
	.top{
		text-align: center;
    	font-size: 18px;
    	text-transform: uppercase;
    	color: black;
    	padding: 30px 0;
		
	}
/* Table Styles */

.table-wrapper{
    margin: 10px 0px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 12px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}
      	
      </style>
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
                    <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                    <li class="active">联系我们 </li>
                </ul>
            </div>
        </div>
    </section>
    <section id="contactRow" class="row contentRowPad">
        <div class="container" style="width:80%;">
            <div class="row">
                <div class="col-sm-6">
                    <div class="row m0" style="width:400px;">
                        <h4 class="contactHeading heading">联 系 我 们<str style="float:right;margin:5px 150px 0px 0px;color:#d6566a;font-size:15px;">${error}</str></h4>
                    </div>
                    <div class="row m0 contactForm">
                        <form class="row m0" id="contactForm" method="post" name="contact" action="${pageContext.request.contextPath}/client/contact">
                            <div class="row">
                                <div class="col-sm-6">
                                    <label for="name">用 户 名 *</label>
                                    <input type="text" class="form-control" name="name" value="${user.userName }" id="name" readonly="readonly">
                                </div>
                            </div>
                            <div style="height:30px;"></div>
                            
                            <div class="formRow">
 								<label>内容<span class="req">*</span></label>
        						<div id="editor" class="formRight w-e-text-container"></div>
								<div style="height:10px;"></div>
 							</div>
 							<div class="formSubmit"><input type="submit" value="提交" class="redB" /></div>
							<div class="clear">
								<input type="hidden" name="cMessage" id="invitationMessage"/>
							</div>
                        </form>
                       </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-7">
                    <div class="row m0">
                        <h4 class="contactHeading heading">联 系 信 息</h4>
                    </div>
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-map-marker"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">在哪里联系我们</h5>
                            <p>	您可以通过以下地址与我们联系：</p>
                            <h5>四川成都青羊</h5>
                        </div> 
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-envelope"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">给我们发电子邮件@</h5>
                            <p>通过电子邮件将您的问题和建议发送给以下电子邮件地址： </p>
                            <h5>info@Defatch.com</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">需要打电话给我们吗？</h5>
                            <p>从星期一到星期五10:00 AM-8:00 PM，请致电：</p>
                            <h5>1000-1234-5678</h5>
                        </div>
                    </div> <!--contactInfo-->
                    <div class="media contactInfo">
                        <div class="media-left">
                            <i class="fas fa-question"></i>
                        </div>
                        <div class="media-body">
                            <h5 class="heading">我们需要很大的支持</h5>
                            <p>我们为您提供最优质的产品。我们一直在这里为可爱的客户提供帮助。我们将产品安全运送到任何地方。我们为您提供最优质的产品。</p>
                        </div>
                    </div> <!--contactInfo-->
                </div>
            </div>
        </div>
    </section>
      <section id="googleMapRow" class="row" >
      		
        <div class="row m0" id="mapBox" style="margin:50px auto;">
        	<div class="top">
        		<h2>官方回复</h2>
        	</div>
			<div class="table-wrapper">
    			<table class="fl-table">
      				  <thead>
      				  	   <tr>
      				  	   		<th>编号</th>
            					<th>用户名</th>
            					<th>联系官方</th>
            					<th>官方回复</th>
            					<th>回复日期</th>
        				   </tr>
        			  </thead>
      					  <tbody>
        					<c:forEach items="${ans }" var="anss">
        						<tr>
            						<td>${anss.ansContactId }</td>
            						<td>${anss.user.userName}</td>
            						<td>${anss.contact.cMessage }</td>
            						<td>${anss.ansMessage }</td>
            						<td>
            							<span>
											<fmt:formatDate value="${anss.ansDate }" pattern="yyyy-MM-dd"/>
										</span>
            						</td>
       							</tr>
        					</c:forEach>
       				  	  </tbody>
    			</table>
			</div>
        </div>
    </section>
      <!-- 引入尾部 -->
   <%@ include file="client/footer.jsp" %>

<div class="clear"></div>
<script>
	var E = window.wangEditor;
	var editor = new E('#editor');
	// 自定义菜单配置
	editor.customConfig.menus = [
    	'head',// 标题
   	 	'bold',// 加粗
    	'fontSize',//字号
    	'fontName', //字体
    	'italic',//倾斜
    	'underline',//下划线
    	'foreColor',  // 文字颜色
    	'backColor',  // 背景颜色
    	'emoticon',  // 表情
    	'image',  // 插入图片
	];
	// 自定义配置颜色（字体颜色、背景色）
	editor.customConfig.colors = [
'#000000','#eeece0','#1c487f','#4d80bf','#c24f4a','#8baa4a','#7b5ba1','#46acc8','#f9963b'
	];
	// 自定义字体
	editor.customConfig.fontNames = [
    '宋体','黑体','华文新魏','微软雅黑','Arial','Tahoma','Verdana'
];
	// 关闭粘贴样式的过滤
	editor.customConfig.pasteFilterStyle = true;
	// 忽略粘贴内容中的图片
	editor.customConfig.pasteIgnoreImg = true;
	// 上传图片到服务器
	editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/client/conupload';
	// 隐藏“网络图片”tab
	editor.customConfig.showLinkImg = false;
	// 将图片大小限制为 1M
	editor.customConfig.uploadImgMaxSize = 1 * 1024 * 1024;
	// 限制一次最多上传 5 张图片
	editor.customConfig.uploadImgMaxLength = 5;
	// 监听函数，可使用监听函数在上传图片的不同阶段做相应处理
	editor.customConfig.uploadImgHooks = {
		customInsert: function (insertImg, result, editor) {
    		for(var i in result){
    			insertImg('${pageContext.request.contextPath}/statics/client/contactFile/'+result[i]);
    		}
		}
	}
	editor.create();
	// 下面的script用于处理提交 
$(function(){
 $("form").submit(function(){
	 // 把富文本框中的内容作为id为invitationMessage的值
	 $("#invitationMessage").val(editor.txt.html());
 });
});
</script>
</body>
</html>
    