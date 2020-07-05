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
		var a = "内容都不能为空";
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
                  <li class="active"><a href="${pageContext.request.contextPath }/design/invitation">故事空间</a></li>
                  <li class="active">故事详情</li>
               </ul>
            </div>
         </div>
      </section>
      <section class="row contentRowPad">
        <div class="container">
            <div class="row" style="padding:50px 15%;">
                <div class="col-sm-8 col-md-8" style="width:800px;">                    
                    <div class="blog row m0 single_post">
                        <div class="media-left authorImg">
                            <a href="#">
<!-- ***********************************动态获取头像(修改头像上传路径)*********************************** -->
                                <img src="${pageContext.request.contextPath }/statics/client/invitationupload/${invitation.uid.userPhoto}"  width="60px" height="60px"/>
                            </a>
                        </div>
                        <div class="media-body" style="width:800px;">
                        	<div style="float:left;width:400px;">
                            	<h4>${invitation.uid.userAlice}</h4>
                            	<h5><fmt:formatDate value="${invitation.invCreatDate}" pattern="yyyy-MM-dd"/></h5>
                            </div>
<!-- ***********************************权限判断（帖主）*********************************** -->
                            <a class="com_btn" href="" target="_blank" style="margin-top:15px;float:right;width:80px;text-align:center;">删除</a>
                        </div>
                        <div class="row m0 featureImg">
                            <h2 style="text-align:center;">${invitation.invTitle}</h2>
                        </div>
                        <div class="row m0 excerpt">
                            <p>${invitation.invMessage}</p>
                        </div>
                    </div> <!--帖子内容end-->
                    <div class="shareRow row m0">
                    	<a href="#replyForm" class="com_btn" style="margin:0px 0px 0px 42%;">发表评论</a>
                    </div>
                    <div class="row m0 comments">
                       <c:forEach items="${ans }" var="ans">
                       <div class="media commentBox">
                            <div class="media-left">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/statics/client/invitationupload/${ans.user.userPhoto}" alt="">
                                </a>
                            </div>
                            <div class="media-body">
                                <h5 class="heading">${ans.user.userAlice }</h5>
<!-- ***********************************权限判断(评论的人和帖主)*********************************** -->                              
                                <h6><fmt:formatDate value="${ans.ansDate }" pattern="yyyy-MM-dd"/> | <a href="#">删除</a></h6>
                                <p>${ans.ansMessage }</p>
                            </div>
                        </div>
                        </c:forEach>
                    </div> <!--评论end-->
                    
                    <div class="row m0" id="replyForm" style="padding:30px 0px 0px 0px;">
                        <h4 class="heading">发表评论</h4>
                        <form class="form" method="post" action="${pageContext.request.contextPath }/design/view_invitation">
		  					<fieldset>
            						<div class="row m0" >
 										<div id="editor" ></div>
										<div class="clear"></div>
 									</div>
 									<div style="margin:30px 0px 0px 45%;">
 										<input type="submit" value="发表评论" class="com_btn" style="width:100px;"/>
 									</div>
		  					</fieldset>
		  					<input type="hidden" name="invid" id="invid" value="${invitation.invid }"/>
							<input type="hidden" name="ansMessage" id="ansMessage"/>
						</form>
                    </div><!-- 发表评论end -->
                </div>
            </div>
        </div>
    </section>
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
	 $("#ansMessage").val(editor.txt.html());
 });
});
</script>
   </body>
</html>

    