<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li>商品管理</li>
						</ul><!-- /.breadcrumb -->
					</div>
			<div >
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<a href="${pageContext.request.contextPath }/server/goodsManage"><button class="btn btn-success" style="margin-top:50px;margin-left:70px;width:160px;height:60px;">
							<i class="ace-icon fa fa-list"></i>
							<span>商品管理</span>
						</button></a>

						<a href="${pageContext.request.contextPath }/design/invitation_manager"><button class="btn btn-info" style="margin-top:50px;margin-left:80px;width:160px;height:60px;">
							<i class="ace-icon fa fa-credit-card"></i>
							<span>审核帖子</span>
						</button></a>

						<a href="${pageContext.request.contextPath }/client/backstage"><button class="btn btn-warning" style="margin-top:50px;margin-left:90px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-envelope"></i>
							<span>用户反馈</span>
						</button></a>
						
						<a href="${pageContext.request.contextPath }/client/admin_order"><button class="btn btn-danger" style="margin-top:50px;margin-left:110px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-pencil-square-ol"></i>
							<span>订单管理</span>
						</button></a>
						
						<a href="${pageContext.request.contextPath }/client/obtainContact"><button class="btn btn-warning" style="margin-top:50px;margin-left:90px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-envelope"></i>
							<span>回复用户</span>
						</button></a>
						
					</div>
		</div>