<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico" >
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="H-ui/lib/html5.js"></script>
<script type="text/javascript" src="H-ui/lib/respond.min.js"></script>
<script type="text/javascript" src="H-ui/lib/PIE_IE678.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="H-ui/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="H-ui/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="H-ui/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="H-ui/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="H-ui/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="H-ui/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title><fmt:message key="appTitle" /></title>
<meta name="keywords" content="">
<meta name="description" content="">
</head>
<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml"><fmt:message key="appName" /></a>  <span class="logo navbar-slogan f-l mr-10 hidden-xs"><fmt:message key="appVersion" /></span> <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<nav class="nav navbar-nav">
				<ul class="cl">
					<li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> <fmt:message key="action_New" /> <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onclick="article_add('新建资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
							<li><a href="javascript:;" onclick="picture_add('新建图片','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a></li>
							<li><a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 产品</a></li>
							<li><a href="javascript:;" onclick="userStaff_add('<fmt:message key='action.userStaff_add' />','member-add.html','','510')"><i class="Hui-iconfont">&#xe60d;</i> <fmt:message key='app.module.userStaff' /></a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li>超级管理员</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="#">个人信息</a></li>
							<li><a href="#">退出</a></li>
						</ul>
					</li>
					<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="<fmt:message key='label_default' />（<fmt:message key='color_brack' />）"><fmt:message key='label_default' />（<fmt:message key='color_brack' />）</a></li>
							<li><a href="javascript:;" data-val="blue" title="<fmt:message key='color_blue' />"><fmt:message key='color_blue' /></a></li>
							<li><a href="javascript:;" data-val="green" title="<fmt:message key='color_green' />"><fmt:message key='color_green' /></a></li>
							<li><a href="javascript:;" data-val="red" title="<fmt:message key='color_red' />"><fmt:message key='color_red' /></a></li>
							<li><a href="javascript:;" data-val="yellow" title="<fmt:message key='color_yellow' />"><fmt:message key='color_yellow' /></a></li>
							<li><a href="javascript:;" data-val="orange" title="<fmt:message key='color_orange' />"><fmt:message key='color_orange' /></a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<aside class="Hui-aside">
	<input runat="server" id="divScrollValue" type="hidden" value="" />
	<div class="menu_dropdown bk_2">
		
		<dl id="menu-product">
			<dt><i class="Hui-iconfont">&#xe60d;</i> <fmt:message key='app.module.userStaff' /><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="staffList.htm" data-title="用户列表" href="javascript:void(0)">用户列表</a></li>
					<li><a _href="product-category.html" data-title="分类管理" href="javascript:void(0)">分类管理</a></li>
					<li><a _href="product-list.html" data-title="产品管理" href="javascript:void(0)">产品管理</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-member">
			<dt><i class="Hui-iconfont">&#xe620;</i> 销售订单<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="http://h-ui.duoshuo.com/admin/" data-title="订单列表" href="javascript:;">订单列表</a></li>
					<li><a _href="feedback-list.html" data-title="意见反馈" href="javascript:void(0)">意见反馈</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-member">
			<dt><i class="Hui-iconfont">&#xe622;</i> 会员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="member-list.html" data-title="会员列表" href="javascript:;">会员列表</a></li>
					<li><a _href="member-del.html" data-title="删除的会员" href="javascript:;">删除的会员</a></li>
					<li><a _href="member-level.html" data-title="等级管理" href="javascript:;">等级管理</a></li>
					<li><a _href="member-scoreoperation.html" data-title="积分管理" href="javascript:;">积分管理</a></li>
					<li><a _href="member-record-browse.html" data-title="浏览记录" href="javascript:void(0)">浏览记录</a></li>
					<li><a _href="member-record-download.html" data-title="下载记录" href="javascript:void(0)">下载记录</a></li>
					<li><a _href="member-record-share.html" data-title="分享记录" href="javascript:void(0)">分享记录</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-admin">
			<dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="admin-role.html" data-title="角色管理" href="javascript:void(0)">角色管理</a></li>
					<li><a _href="admin-permission.html" data-title="权限管理" href="javascript:void(0)">权限管理</a></li>
					<li><a _href="admin-list.html" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-tongji">
			<dt><i class="Hui-iconfont">&#xe61a;</i> 系统统计<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="charts-1.html" data-title="折线图" href="javascript:void(0)">折线图</a></li>
					<li><a _href="charts-2.html" data-title="时间轴折线图" href="javascript:void(0)">时间轴折线图</a></li>
					<li><a _href="charts-3.html" data-title="区域图" href="javascript:void(0)">区域图</a></li>
					<li><a _href="charts-4.html" data-title="柱状图" href="javascript:void(0)">柱状图</a></li>
					<li><a _href="charts-5.html" data-title="饼状图" href="javascript:void(0)">饼状图</a></li>
					<li><a _href="charts-6.html" data-title="3D柱状图" href="javascript:void(0)">3D柱状图</a></li>
					<li><a _href="charts-7.html" data-title="3D饼状图" href="javascript:void(0)">3D饼状图</a></li>
				</ul>
			</dd>
		</dl>
		<dl id="menu-system">
			<dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
			<dd>
				<ul>
					<li><a _href="system-base.html" data-title="系统设置" href="javascript:void(0)">系统设置</a></li>
					<li><a _href="system-category.html" data-title="栏目管理" href="javascript:void(0)">栏目管理</a></li>
					<li><a _href="system-data.html" data-title="数据字典" href="javascript:void(0)">数据字典</a></li>
					<li><a _href="system-shielding.html" data-title="屏蔽词" href="javascript:void(0)">屏蔽词</a></li>
					<li><a _href="system-log.html" data-title="系统日志" href="javascript:void(0)">系统日志</a></li>
				</ul>
			</dd>
		</dl>
	</div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" frameborder="0" src="staffList.htm"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="H-ui/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="H-ui/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="H-ui/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="H-ui/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*资讯-添加*/
function article_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*产品-添加*/
function product_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
</script> 
</script>
</body>
</html>