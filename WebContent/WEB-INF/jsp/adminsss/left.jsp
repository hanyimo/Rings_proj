<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
				<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 商品管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>
							<ul class="submenu">
							<li class="">
								<a href="${pageContext.request.contextPath }/server/goodsManage" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
									<a href="${pageContext.request.contextPath }/server/goodsManage">商品分类管理</a>
								</a>
								
								<li class="">
										<a href="#" class="dropdown-toggle">
												<i class="menu-icon fa fa-caret-right"></i>
										<a href="${pageContext.request.contextPath }/server/goodsTable">商品添加管理</a>
										</a>
										<b class="arrow fa fa-angle-down"></b>
							  </li>
						  </li>
					</ul>
					<li class="active">
						<a href="${pageContext.request.contextPath }/design/invitation_manager">
							<i class="menu-icon fa  fa-credit-card"></i>
							<span class="menu-text"> 审核帖子 </span>
						</a>

						<b class="arrow"></b>
					</li>
					<li class="">
						<a href="${pageContext.request.contextPath }/client/backstage">
							<i class="menu-icon fa fa-envelope"></i>
							<span class="menu-text"> 用户反馈 </span>
						</a>
						<b class="arrow"></b>
					</li>
					</li>
			       <li class="">
						<a href="${pageContext.request.contextPath }/client/admin_order">
							<i class="menu-icon fa fa-pencil-square-o"></i>
						    <span class="menu-text"> 订单管理 </span>
						</a>
					</li>
					<li class="">
						<a href="${pageContext.request.contextPath }/client/obtainContact">
							<i class="menu-icon fa fa-envelope"></i>
							<span class="menu-text"> 回复用户</span>
						</a>
						<b class="arrow"></b>
					</li>
				</ul><!-- /.nav-list -->
			</div>
			