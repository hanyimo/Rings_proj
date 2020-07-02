<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html>
<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>首页</title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- text fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/css/fonts.googleapis.com.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/server/css/ace-rtl.min.css" />
		<script src="${pageContext.request.contextPath }/statics/server/js/ace-extra.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery-2.1.4.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery-1.11.3.min.js"></script>
			<script src="${pageContext.request.contextPath }/statics/server/js/bootstrap.min.js"></script>
		<!-- page specific plugin scripts -->
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery-ui.custom.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.easypiechart.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.sparkline.index.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.pie.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.resize.min.js"></script>
		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath }/statics/server/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/server/js/ace.min.js"></script>
<style>
	*{
    	box-sizing: border-box;
    	-webkit-box-sizing: border-box;
    	-moz-box-sizing: border-box;
	}
	body{
    	font-family: Helvetica;
   	 	-webkit-font-smoothing: antialiased;
	}
	h2{
    	text-align: center;
    	font-size: 18px;
    	text-transform: uppercase;
    	letter-spacing: 1px;
    	color: white;
    	padding: 30px 0;
	}

/* Table Styles */

.table-wrapper{
	margin-left:300px;
   margin-top:80px;
   width:800px;
   height:500px;
}
.fl-table {
    border-radius: 5px;
    font-size: 12px;
    font-weight: normal;
    border: none;
    /*支持浏览器*/
    border-collapse: collapse;
    width: 800px;
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
a{ 
	text-decoration:none;
	color:black;
} 
a:hover{ 
	text-decoration:none;
	color:pink;
}
/*模态框*/
.modal {
    display: none; /* 默认隐藏 */
    position: fixed; /* 根据浏览器定位 */
    z-index: 1; /* 放在顶部 */
    left: 0;
    top: 0;
    width: 100%; /* 全宽 */
    height: 100%; /* 全高 */
    overflow: auto; /* 允许滚动 */
    background-color: rgba(0,0,0,0.4); /* 背景色 */
}
/*模态框内容*/
.modal-content {
    display: flex; /*采用flexbox布局*/
    flex-direction: column; /*垂直排列*/
    position: relative;
    background-color: #fefefe;
    margin: 15% auto; /*距顶部15% 水平居中*/
    padding: 20px;
    border: 1px solid #888;
    width: 50%;
    animation: topDown 0.4s; /*自定义动画，从模态框内容上到下出现*/
}
@keyframes topDown {
    from {top: -300px; opacity: 0}
    to {top: 0; opacity: 1}
}
/*模态框头部*/
.modal-header {
    display: flex; /*采用flexbox布局*/
    flex-direction: row; /*水平布局*/
    align-items: center; /*内容垂直居中*/
    justify-content: space-between; 
     
}
.modal-header h2{
	color:black;
	font-size:30px;
}
/*关闭X 样式*/
.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover {
    color: black;
    text-decoration: none;
    cursor: pointer;
}
</style>
</head>

<body class="no-skin">
	<!-- 引入头部 -->
    <%@ include file="adminsss/header.jsp" %>
	<!-- 左侧导航栏 -->
 	<%@ include file="adminsss/left.jsp" %>
		<div class="table-wrapper">
   		 <table class="fl-table">
        	<thead>
        		<tr>
            		<th>编号</th>
            		<th>用户名</th>
            		<th>联系内容</th>
            		<th>联系时间</th>
           	 		<th>是否回复</th>
        		</tr>
        	</thead>
        		<tbody>
        			<c:forEach items="${contact}" var="con">
        				<tr>
            				<td>${con.contactId }</td>
            				<td>${con.user.userName }</td>
            				<td>${con.cMessage }</td>
            				<td>
            					<span>
									<fmt:formatDate value="${con.cDate }" pattern="yyyy-MM-dd"/>
								</span>
            				</td>
            				<!-- 触发按钮 -->
           	 				<td id="triggerBtn"><a href="${pageContext.request.contextPath }/client/ansContact">回 复</a></td>
        				
        					<!-- <div id="myModal" class="modal">
        						<div class="modal-content">
            						<div class="modal-header">
                						<h2>回复</h2>
                						<span id="closeBtn" class="close">×</span>
            						</div>
            						<input type="text" name="fname">
            						<div class="modal-footer">
                						<input type="submit" value="确定">
            						</div>
        						</div>
    						</div> -->
    					</tr>
        			</c:forEach>
        		<tbody>
   	 	</table>
   	 	  <!-- 模态框 -->
    
	  </div>
<div style="text-align:center;clear:both;">
</div>
<script>
(function() {
	/*建立模态框对象*/
	var modalBox = {};
	/*获取模态框*/
	modalBox.modal = document.getElementById("myModal");
    /*获得trigger按钮*/
	modalBox.triggerBtn = document.getElementById("triggerBtn");
    /*获得关闭按钮*/
	modalBox.closeBtn = document.getElementById("closeBtn");
	/*模态框显示*/
	modalBox.show = function() {
		console.log(this.modal);
		this.modal.style.display = "block";
	}
	/*模态框关闭*/
	modalBox.close = function() {
		this.modal.style.display = "none";
	}
	/*当用户点击模态框内容之外的区域，模态框也会关闭*/
	modalBox.outsideClick = function() {
		var modal = this.modal;
		window.onclick = function(event) {
            if(event.target == modal) {
            	modal.style.display = "none";
            }
		}
	}
    /*模态框初始化*/
	modalBox.init = function() {
		var that = this;
		this.triggerBtn.onclick = function() {
            that.show();
		}
		this.closeBtn.onclick = function() {
			that.close();
		}
		this.outsideClick();
	}
	modalBox.init();
 
})();
</script>
		
</body>
</html>