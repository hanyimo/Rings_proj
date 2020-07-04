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
			<div class="page-header">
							<h1>
								审核帖子
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									overview &amp; stats
								</small>
							</h1>
						</div><!-- /.page-header -->
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<a href="${pageContext.request.contextPath }/server/goodsManage"><button class="btn btn-success" style="margin-top:50px;margin-left:70px;width:160px;height:60px;">
							<i class="ace-icon fa fa-list"></i>
							<span>商品管理</span>
						</button></a>

						<button class="btn btn-info" style="margin-top:50px;margin-left:80px;width:160px;height:60px;">
							<i class="ace-icon fa fa-credit-card"></i>
							<span>审核帖子</span>
						</button>

						<button class="btn btn-warning" style="margin-top:50px;margin-left:90px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-envelope"></i>
							<a href="${pageContext.request.contextPath }/client/backstage"><span>用户反馈</span></a>
						</button>

						<button class="btn btn-danger" style="margin-top:50px;margin-left:100px;width:160px;height:60px;">
							<i class="ace-icon fa fa-users"></i>
							<span>用户管理</span>
						</button>
						<button class="btn btn-danger" style="margin-top:50px;margin-left:110px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-pencil-square-ol"></i>
							<span>订单管理</span>
						</button>
						
						
						<button class="btn btn-warning" style="margin-top:50px;margin-left:90px;width:160px;height:60px;">
							<i class="ace-icon fa  fa-envelope"></i>
							<a href="${pageContext.request.contextPath }/client/obtainContact"><span>回复用户</span></a>
						</button>
						
					</div>
		</div>