<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
      <script src="${pageContext.request.contextPath}/statics/client/js/wangEditor.min.js"></script>
   </head>
   <body>
   <script>
   	var error = '<%=(String)request.getAttribute("error") %>';//输出error给js变量error
  	//页面加载完后执行
   	window.onload=function(){
		var a = "贴子标题和内容都不能为空";
		var b = "发帖成功";
		if(error==a){
			alert(error);
		}else if(error==b){
			alert(error);
		}error=null;
	}
   </script>
	<!-- 头部 -->
      <%@ include file="client/header.jsp" %>
      <!-- 故事空间  -->
      <section id="breadcrumbRow" class="row">
         <h2>故事空间</h2>
         <div class="row pageTitle m0">
            <div class="container">
               <h4 class="fleft">故事空间</h4>
               <ul class="breadcrumb fright">
                  <li><a href="${pageContext.request.contextPath }/">首页</a></li>
                  <li class="active">故事空间</li>
               </ul>
            </div>
         </div>
      </section>
      <section id="testimonialTabs" class="row contentRowPad">
      	<!-- 发帖 -->
      	<div class="container">
  		<div class="row sectionTitle">
            <h2>我的故事</h2>
        </div>
      	<form class="form" method="post" action="">
		  <fieldset>
			<div class="widget">
            	<div class="row m0" style="margin:0px 0px 10px 0px;">
      				<label style="margin:10px 0px;">标题<span class="req">*</span></label>
          			<div><input type="text"  class="form-control" class="validate[required]" name="invTitle"/></div><div class="clear"></div>
        		</div>
            	<div class="row m0" style="margin:10px 0px;">
 					<label style="margin:10px 0px;">内容<span class="req">*</span></label>
        			<div id="editor" ></div>
					<div class="clear"></div>
 				</div>
 				<div style="margin:30px 0px 0px 45%;">
 					<input type="submit" value="发帖" class="com_btn" style="width:100px;"/>
 				</div>
			</div>
		  </fieldset>
		<input type="hidden" name="invMessage" id="invMessage"/>
		</form>
		</div>
		<div style="margin:100px 0px;"></div>
        <div class="container">
            <div class="row sectionTitle">
                <h2>他们的故事</h2>
            </div>
            <div class="row">
              <c:forEach items="${invitation }" var="in">
                <div class="col-sm-6">
                    <div class="row m0 testimonialStyle2">
                        <div class="testiInner">
                            <a href="${pageContext.request.contextPath }/design/view_invitation/${in.invid}"><p style="text-align:center;">“${in.invTitle } ”</p></a>
                            <div class="row m0 clientInfo">  
<!-- *****************************改这个图片的地址获取用户的头像*******************************${pageContext.request.contextPath }/statics/上传文件目录/${in.uid.userPhoto} -->                         
                                <div class="thumbnail"><img src="${pageContext.request.contextPath }/statics/client/images/testimonial/1.png" alt=""></div>
                                <div class="clientName">${in.uid.userAlice }</div>
                            </div>
                        </div>
                    </div>
                </div>
              </c:forEach>
            </div>
        </div>
      </section> <!--Testimonial Tabs-->
      <!-- 尾部 -->
      <%@ include file="client/footer.jsp" %>
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
    	'strikeThrough',  // 删除线
    	'foreColor',  // 文字颜色
    	'backColor',  // 背景颜色
    	'justify',  // 对齐方式
    	'emoticon',  // 表情
    	'image',  // 插入图片
    	'undo',  // 撤销
    	'redo'  // 重复
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
	editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/client/invupload';
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
    			insertImg('${pageContext.request.contextPath}/statics/client/invitationupload/'+result[i]);
    		}
		}
	}
	editor.create();
	// 下面的script用于处理提交 
$(function(){
 $("form").submit(function(){
	 // 把富文本框中的内容作为id为invMessage的值
	 $("#invMessage").val(editor.txt.html());
 });
});
</script>
   </body>
</html>

    