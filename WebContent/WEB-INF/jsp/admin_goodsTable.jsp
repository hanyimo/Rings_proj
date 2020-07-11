<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>商品列表</title>

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
		<div class="row" >
			<div class="col-xs-12"
				style="margin-left:200px; margin-top: -250px;wdith:1000px;">
				<h3 class="header smaller lighter blue">商品列表</h3>

				<div style="margin-left:290px;width:800px;">
					<div class="pull-right tableTools-container"></div>
				</div>
				<div class="table-header" style="width:1000px;margin-left:90px;">商品显示列表</div>

				<!-- div.table-responsive -->

				<!-- div.dataTables_borderWrap -->
				<div style="width:1000px;margin-left:90px;">
					<table id="dynamic-table"
						class="table table-striped table-bordered table-hover">
						<thead>
							<tr>	
								<th class="center">库存</th>
								<th class="center">商品名称</th>
								<th class="center">所属类别</th>
								<th class="center">价格</th>
								<th class="center">创建时间</th>
								<th class="center">状态</th>
								<th class="center">操作</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach items="${goods}" var="gs">
							<tr>
								<td class="center">${gs.goodsStock} 件</td>
								<!-- 点击商品名可进行查看 -->
								<td class="center"><a href="#">${gs.goodsName }</a></td>
								<td class="center">${gs.category.category}</td>
								<td class="center">￥${gs.goodsPrice }</td>
								<td class="center">
									<span>
										<fmt:formatDate value="${gs.goodsCreateDate}" pattern="yyyy-MM-dd HH:mm:ss" />
									</span>
								</td>
								<c:choose>
            			<c:when test="${gs.status==1}">
            				<td class="center"><a href="${pageContext.request.contextPath}/server/updateStatus/${gs.gid}">
								  <span
									class="label label-sm label-success">在售</span></a></td>
            			</c:when>
            			<c:otherwise>
            				<td class="center"><a href="#">
								<span
									class="label label-sm label-warning">已下架</span></a></td>
            		</c:otherwise>
            		</c:choose>

								<td class="center">
									<div class="hidden-sm hidden-xs action-buttons">
									<!-- 添加 -->
										<a class="blue" href="${pageContext.request.contextPath }/server/add_goods"> <i
											class="ace-icon fa glyphicon-plus bigger-170"></i>
										</a> 
										<!-- 编辑 -->
										<a class="green" href="${pageContext.request.contextPath }/server/Editgoods/${gs.gid}"> <i
											class="ace-icon fa fa-pencil bigger-130"></i>
										</a> 
										<!-- 修改库存 -->
										<a class="green" href="${pageContext.request.contextPath }/server/EditgoodsStock/${gs.gid }"> <i
											class="ace-icon fa fa-check-square-o bigger-130"></i>
										</a> 
									</div>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		

		<!-- PAGE CONTENT ENDS -->
	</div>
	<!-- /.col -->
	</div>
	<!-- /.row -->
	</div>
	<!-- /.page-content -->
	</div>
	</div>
	<!-- /.main-content -->
	<!-- basic scripts -->

	<script
		src="${pageContext.request.contextPath}/statics/server/js/jquery-2.1.4.min.js"></script>

	<!-- <![endif]-->

	<!--[if IE]>
<script src="${pageContext.request.contextPath}/statics/server/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='${pageContext.request.contextPath}/statics/server/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->
	<script
		src="${pageContext.request.contextPath}/statics/server/js/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/jquery.dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/buttons.flash.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/buttons.print.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/buttons.colVis.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/dataTables.select.min.js"></script>

	<!-- ace scripts -->
	<script
		src="${pageContext.request.contextPath}/statics/server/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/statics/server/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			//initiate dataTables plugin
			var myTable = $('#dynamic-table')
			//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
			.DataTable({
				bAutoWidth : false,
				"aoColumns" : [ {
					"bSortable" : false
				}, null, null, null, null, null, {
					"bSortable" : false
				} ],
				"aaSorting" : [],

				//"bProcessing": true,
				//"bServerSide": true,
				//"sAjaxSource": "http://127.0.0.1/table.php"	,

				//,
				//"sScrollY": "200px",
				//"bPaginate": false,

				//"sScrollX": "100%",
				//"sScrollXInner": "120%",
				//"bScrollCollapse": true,
				//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
				//you may want to wrap the table inside a "div.dataTables_borderWrap" element

				//"iDisplayLength": 50

				select : {
					style : 'multi'
				}
			});

			$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';

			new $.fn.dataTable.Buttons(
					myTable,
					{
						buttons : [
								{
									"extend" : "colvis",
									"text" : "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
									"className" : "btn btn-white btn-primary btn-bold",
									columns : ':not(:first):not(:last)'
								},
								{
									"extend" : "copy",
									"text" : "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
									"className" : "btn btn-white btn-primary btn-bold"
								},
								{
									"extend" : "csv",
									"text" : "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
									"className" : "btn btn-white btn-primary btn-bold"
								},
								{
									"extend" : "excel",
									"text" : "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
									"className" : "btn btn-white btn-primary btn-bold"
								},
								{
									"extend" : "pdf",
									"text" : "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
									"className" : "btn btn-white btn-primary btn-bold"
								},
								{
									"extend" : "print",
									"text" : "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
									"className" : "btn btn-white btn-primary btn-bold",
									autoPrint : false,
									message : 'This print was produced using the Print button for DataTables'
								} ]
					});
			myTable.buttons().container().appendTo($('.tableTools-container'));

			//style the message box
			var defaultCopyAction = myTable.button(1).action();
			myTable
					.button(1)
					.action(
							function(e, dt, button, config) {
								defaultCopyAction(e, dt, button, config);
								$('.dt-button-info')
										.addClass(
												'gritter-item-wrapper gritter-info gritter-center white');
							});

			var defaultColvisAction = myTable.button(0).action();
			myTable
					.button(0)
					.action(
							function(e, dt, button, config) {

								defaultColvisAction(e, dt, button, config);

								if ($('.dt-button-collection > .dropdown-menu').length == 0) {
									$('.dt-button-collection')
											.wrapInner(
													'<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
											.find('a').attr('href', '#').wrap(
													"<li />")
								}
								$('.dt-button-collection').appendTo(
										'.tableTools-container .dt-buttons')
							});

			////

			setTimeout(function() {
				$($('.tableTools-container')).find('a.dt-button').each(
						function() {
							var div = $(this).find(' > div').first();
							if (div.length == 1)
								div.tooltip({
									container : 'body',
									title : div.parent().text()
								});
							else
								$(this).tooltip({
									container : 'body',
									title : $(this).text()
								});
						});
			}, 500);

			myTable.on('select', function(e, dt, type, index) {
				if (type === 'row') {
					$(myTable.row(index).node()).find('input:checkbox').prop(
							'checked', true);
				}
			});
			myTable.on('deselect', function(e, dt, type, index) {
				if (type === 'row') {
					$(myTable.row(index).node()).find('input:checkbox').prop(
							'checked', false);
				}
			});

			/////////////////////////////////
			//table checkboxes
			$('th input[type=checkbox], td input[type=checkbox]').prop(
					'checked', false);

			//select/deselect all rows according to table header checkbox
			$(
					'#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]')
					.eq(0).on('click', function() {
						var th_checked = this.checked;//checkbox inside "TH" table header

						$('#dynamic-table').find('tbody > tr').each(function() {
							var row = this;
							if (th_checked)
								myTable.row(row).select();
							else
								myTable.row(row).deselect();
						});
					});

			//select/deselect a row when the checkbox is checked/unchecked
			$('#dynamic-table').on('click', 'td input[type=checkbox]',
					function() {
						var row = $(this).closest('tr').get(0);
						if (this.checked)
							myTable.row(row).deselect();
						else
							myTable.row(row).select();
					});

			$(document).on('click', '#dynamic-table .dropdown-toggle',
					function(e) {
						e.stopImmediatePropagation();
						e.stopPropagation();
						e.preventDefault();
					});

			//And for the first simple table, which doesn't have TableTools or dataTables
			//select/deselect all rows according to table header checkbox
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on(
					'click',
					function() {
						var th_checked = this.checked;//checkbox inside "TH" table header

						$(this).closest('table').find('tbody > tr').each(
								function() {
									var row = this;
									if (th_checked)
										$(row).addClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', true);
									else
										$(row).removeClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', false);
								});
					});

			//select/deselect a row when the checkbox is checked/unchecked
			$('#simple-table').on('click', 'td input[type=checkbox]',
					function() {
						var $row = $(this).closest('tr');
						if ($row.is('.detail-row '))
							return;
						if (this.checked)
							$row.addClass(active_class);
						else
							$row.removeClass(active_class);
					});

			$('[data-rel="tooltip"]').tooltip({
				placement : tooltip_placement
			});

			//tooltip placement on right or left
			function tooltip_placement(context, source) {
				var $source = $(source);
				var $parent = $source.closest('table')
				var off1 = $parent.offset();
				var w1 = $parent.width();

				var off2 = $source.offset();
				//var w2 = $source.width();

				if (parseInt(off2.left) < parseInt(off1.left)
						+ parseInt(w1 / 2))
					return 'right';
				return 'left';
			}

			$('.show-details-btn').on(
					'click',
					function(e) {
						e.preventDefault();
						$(this).closest('tr').next().toggleClass('open');
						$(this).find(ace.vars['.icon']).toggleClass(
								'fa-angle-double-down').toggleClass(
								'fa-angle-double-up');
					});

		})
	</script>

</body>
</html>