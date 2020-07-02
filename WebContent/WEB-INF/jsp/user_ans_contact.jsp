<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>修改商品分类</title>

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


<script src="${pageContext.request.contextPath }/statics/server/js/ace-extra.min.js"></script>
	
<script src="${pageContext.request.contextPath}/statics/client/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/client/js/wangEditor.min.js"></script>
<style type="text/css">
	.w-e-text-container{
      		width:700px;
      	}
      	label{
      		font-size:20px;
      	}
      	.marginLeft{
      		margin-left:140px;
      		
      	}
      	.butm{
      		margin-left:320px;
      	}
      	
</style>

</head>

<body class="no-skin">
	<!-- 引入头部 -->
	<%@ include file="adminsss/header.jsp"%>
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
		<!-- 左侧导航栏 -->
		<%@ include file="adminsss/left.jsp"%>

		<!-- 右侧版块 -->
		<div class="hr hr-18 dotted hr-double"></div>
		<h3 class="header green" style="margin-left: 220px;">回 复 用 户</h3>
		<div class="row" style="margin-left: 200px; width: 3000px;">
			<div class="col-sm-5">
				<div class="widget-box">
					<div class="widget-header">
						<h4 class="widget-title">${error }</h4>
					</div>

					<div class="widget-body">
						<div class="widget-main no-padding">
							<form class="row m0" id="contactForm" method="post" name="ans" 
									action="${pageContext.request.contextPath}/client/ansContact">
								 <div class="marginLeft">
								 	<div class="formRow">
								 		<label></label>
        								<div id="editor" class="formRight w-e-text-container"></div>
										<div style="height:30px;"></div>
 									</div>
									<div class="clear">
										<input type="hidden" name="ansMessage" id="ansMessage"/>
									</div>
								 </div>
								<div class="form-actions center">
									<div class="butm">
										<input type="submit" class="btn btn-sm btn-success" value="提交" >
										<input type="button" class="btn btn-sm btn-success" id="back" name="back" value="返回" >
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>


		</div>
	</div>

	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery-2.1.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/bootstrap.min.js"></script>

	<!-- page specific plugin scripts -->


	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery-ui.custom.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.ui.touch-punch.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.easypiechart.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.sparkline.index.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.pie.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/jquery.flot.resize.min.js"></script>

	<!-- ace scripts -->
	<script
		src="${pageContext.request.contextPath }/statics/server/js/ace-elements.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/statics/server/js/ace.min.js"></script>

	<!-- inline scripts related to this page -->
<script type="text/javascript">
		<!-- 富文本框 -->
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
		editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/statics/upload';
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
	    			insertImg('${pageContext.request.contextPath}/statics/file/'+result[i]);
	    		}
			}
		}
		editor.create();
		// 下面的script用于处理提交 
	$(function(){
	 $("form").submit(function(){
		 // 把富文本框中的内容作为id为ansMessage的值
		 $("#ansMessage").val(editor.txt.html());
	 });
	});
<!--  富文本框结束 -->
		
			jQuery(function($) {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: ace.vars['old_ie'] ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html',
									 {
										tagValuesAttribute:'data-values',
										type: 'bar',
										barColor: barColor ,
										chartRangeMin:$(this).data('min') || 0
									 });
				});
			
			
			  //flot chart resize plugin, somehow manipulates default browser resize event to optimize it!
			  //but sometimes it brings up errors with normal resize event handlers
			  $.resize.throttleWindow = false;
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});
			  var data = [
				{ label: "social networks",  data: 38.7, color: "#68BC31"},
				{ label: "search engines",  data: 24.5, color: "#2091CF"},
				{ label: "ad campaigns",  data: 8.2, color: "#AF4E96"},
				{ label: "direct traffic",  data: 18.6, color: "#DA5430"},
				{ label: "other",  data: 10, color: "#FEE074"}
			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			
			  //pie chart tooltip example
			  var $tooltip = $("<div class='tooltip top in'><div class='tooltip-inner'></div></div>").hide().appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
				/////////////////////////////////////
				$(document).one('ajaxloadstart.page', function(e) {
					$tooltip.remove();
				});
			
			
			
			
				var d1 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d1.push([i, Math.sin(i)]);
				}
			
				var d2 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.5) {
					d2.push([i, Math.cos(i)]);
				}
			
				var d3 = [];
				for (var i = 0; i < Math.PI * 2; i += 0.2) {
					d3.push([i, Math.tan(i)]);
				}
				
			
				var sales_charts = $('#sales-charts').css({'width':'100%' , 'height':'220px'});
				$.plot("#sales-charts", [
					{ label: "Domains", data: d1 },
					{ label: "Hosting", data: d2 },
					{ label: "Services", data: d3 }
				], {
					hoverable: true,
					shadowSize: 0,
					series: {
						lines: { show: true },
						points: { show: true }
					},
					xaxis: {
						tickLength: 0
					},
					yaxis: {
						ticks: 10,
						min: -2,
						max: 2,
						tickDecimals: 3
					},
					grid: {
						backgroundColor: { colors: [ "#fff", "#fff" ] },
						borderWidth: 1,
						borderColor:'#555'
					}
				});
			
			
				$('#recent-box [data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('.tab-content')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			
				$('.dialogs,.comments').ace_scroll({
					size: 300
			    });
				
				
				//Android's default browser somehow is confused when tapping on label which will lead to dragging the task
				//so disable dragging when clicking on label
				var agent = navigator.userAgent.toLowerCase();
				if(ace.vars['touch'] && ace.vars['android']) {
				  $('#tasks').on('touchstart', function(e){
					var li = $(e.target).closest('#tasks li');
					if(li.length == 0)return;
					var label = li.find('label.inline').get(0);
					if(label == e.target || $.contains(label, e.target)) e.stopImmediatePropagation() ;
				  });
				}
			
				$('#tasks').sortable({
					opacity:0.8,
					revert:true,
					forceHelperSize:true,
					placeholder: 'draggable-placeholder',
					forcePlaceholderSize:true,
					tolerance:'pointer',
					stop: function( event, ui ) {
						//just for Chrome!!!! so that dropdowns on items don't appear below other items after being moved
						$(ui.item).css('z-index', 'auto');
					}
					}
				);
				$('#tasks').disableSelection();
				$('#tasks input:checkbox').removeAttr('checked').on('click', function(){
					if(this.checked) $(this).closest('li').addClass('selected');
					else $(this).closest('li').removeClass('selected');
				});
			
			
				//show the dropdowns on top or bottom depending on window height and menu position
				$('#task-tab .dropdown-hover').on('mouseenter', function(e) {
					var offset = $(this).offset();
			
					var $w = $(window)
					if (offset.top > $w.scrollTop() + $w.innerHeight() - 100) 
						$(this).addClass('dropup');
					else $(this).removeClass('dropup');
				});

			});
$(function(){	
				$("#back").click(function(){
					// 使用了 JavaScirpt 页面跳转方式
					location.href="${pageContext.request.contextPath}/server/obtainContact";
				});
			});
</script>
</body>
</html>