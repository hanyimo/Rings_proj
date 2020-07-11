<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>添加商品</title>

<meta name="description" content="overview &amp; stats" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- bootstrap & fontawesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/font-awesome/4.5.0/css/font-awesome.min.css" />

<!-- page specific plugin styles -->

<!-- text fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/css/ace-skins.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/server/css/ace-rtl.min.css" />


<script
	src="${pageContext.request.contextPath }/statics/server/js/ace-extra.min.js"></script>


</head>

<body class="no-skin">
	<!-- 引入头部 -->
	<%@ include file="adminsss/header.jsp"%>
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.loadState('main-container')
			} catch (e) {
			}
		</script>
		<!-- 左侧导航栏 -->
		<%@ include file="adminsss/left.jsp"%>
		<!-- 右侧版块 -->
		<div class="page-header" style="padding-left: 190px;">
			<h1>修改商品</h1>
		</div>
		<!-- /.page-header -->
		<p>${error}</p>
		<!-- 表单提交 -->
		<div class="row">
			<div class="col-xs-12" style="margin-top: -150px;">
				<!-- PAGE CONTENT BEGINS -->
				<form class="form-horizontal" role="form" method="post" 
				enctype="multipart/form-data"
				action="${pageContext.request.contextPath }/server/editgoods">
					<div class="form-group">
					<input type="hidden" name="gid" value="${goods.gid}"/>
						<label class="col-sm-3 control-label no-padding-right"
							for="goodsName">商品名称 </label>

						<div class="col-sm-9">
							<input type="text" name="goodsName" value="${goods.goodsName }"
								class="col-xs-10 col-sm-5" required="required"/>
								<span>${error}</span> 
						</div>
					</div>

					<div class="space-4"></div>
				
				<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="goodsCode">商品编码 </label>

						<div class="col-sm-9">
							<input type="text" name="goodsCode" value="${goods.goodsCode }"
								class="col-xs-10 col-sm-5" required="required" pattern="\RB{1,20}"/>
								<span>${error }</span>  
						</div>
					</div>
					<div class="space-4"></div>
					
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="material">商品材质 </label>

						<div class="col-sm-9">
							<input type="text" name="material" value="${goods.material }"
								class="col-xs-10 col-sm-5" required="required"/> 
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="goodsPrice">商品价格 </label>

						<div class="col-sm-9">
							<input type="text" name="goodsPrice" value="${goods.goodsPrice }"
								class="col-xs-10 col-sm-5" required="required"/> 
						</div>
					</div>

					<div class="space-4"></div>

					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="category">商品类别 </label>
						<div class="col-sm-9">
							<select class="col-xs-10 col-sm-5" name="category" required="required">
							<c:forEach items="${categories }" var="cagr">
						<c:choose>
							<c:when test="${goods.category.category==cagr.categoryId }">
							<option value="${cagr.categoryId }" selected="selected">${cagr.category}</option>
							</c:when>
							<c:otherwise>
								<option value="${cagr.categoryId }">${cagr.category}</option>
							</c:otherwise>
						</c:choose>
						</c:forEach>
							</select>
						</div>
					</div>
					<div class="space-4"></div>
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="goodsDesc">商品描述</label>
						<div class="col-sm-9">
							<textarea class="col-xs-10 col-sm-5" rows="10" name="goodsDesc">${goods.goodsDesc }</textarea>
						</div>
					</div>
		
					<div class="form-group">
						<label class="col-sm-3 control-label no-padding-right"
							for="goodsdPhoto">商品图片</label>
							<!-- 开始上传图片 -->
								<div>
									<label>
									<input type="file" id="goodsPhoto" 
									name="goodsPhoto" onchange="viewImage(this)" 
									style="left:400px;position:absolute;">
										<!-- 图片预览 -->
								    <div class="col-xs-10 col-sm-5" style="align:center;
										margin:60px 0 0 25px;width:400px;height:300px;border:solid 1px black">
										<img id="preview" style="margin-left:-13px;width:400px;height:300px;" 
										src="${pageContext.request.contextPath}/statics/file/${goods.goodsPhoto}" alt="" />
										</div>	
									</label>
									</div>
						</div>
								
					<div>
						<div class="col-md-offset-3 col-md-9" >
							<input type="submit" class="btn btn-info" value="修改" />	
							<a href="#" onclick="window.history.back()">
							<input type="button" class="btn btn-info"  value="返回" style="margin-left:280px;"></a>					
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<!-- basic scripts -->
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath }/statics/server/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap.min.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery-ui.custom.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/chosen.jquery.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/spinbox.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap-datepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap-timepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/moment.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/daterangepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap-datetimepicker.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap-colorpicker.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.knob.min.js"></script>
		<scrip src="${pageContext.request.contextPath }/statics/server/js/autosize.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.inputlimiter.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.maskedinput.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap-tag.min.js"></script>

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath }/statics/server/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/common.js"></script>
<script>
   	<%
   		String msg = (String)request.getSession().getAttribute("msg");//获取后台参数给 msg变量
   	%>
   	var msg = '<%=msg%>';//输出msg给js变量msg
  	//页面加载完后执行
   	window.onload=function(){
		var a = "上传失败";
		var b = "只能上传图片";
		var c = "上传成功";
		if(msg==a){
			alert(msg);
		}else if(msg==b){
			alert(msg);
		}else if(msg==c){
			alert(msg);
		}error=null;
	}
   </script>

</html>


