<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
  <title>table模块快速使用</title>
<link rel="stylesheet" href="<%=basePath%>Static/css/layui.css" media="all">
<%-- <link rel="stylesheet" href="<%=basePath%>Static/css/common.css" media="all"> --%>

<body>
<div id="LAY_WRAP">
    <div id="LAY_app" class="layui-side layui-bg-black" style="width: 230px;">
      <div class="layui-side-scroll">
          <div class="layui-logo" lay-href=""> <span>layuiAdmin Pro</span> </div>
          <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
          <!-- UL begin -->
         <ul class="layui-nav layui-nav-tree site-demo-nav">
  
				  <li class="layui-nav-item layui-nav-itemed">
					<a class="javascript:;" href="javascript:;">开发工具</a>
					<dl class="layui-nav-child">
					  <dd>
						<a href="/demo/">调试预览</a>
					  </dd>
					</dl>
				  </li>
				  
				  <li class="layui-nav-item layui-nav-itemed">
					<a class="javascript:;" href="javascript:;">布局</a>
					<dl class="layui-nav-child">
					  <dd class="">
						<a href="/demo/grid.html">栅格</a>
					  </dd>
					  <dd class="">
						<a href="/demo/admin.html">后台布局</a>
					  </dd>
					</dl>
				  </li>
				  
				  <li class="layui-nav-item layui-nav-itemed">
					<a class="javascript:;" href="javascript:;">基本元素</a>
					<dl class="layui-nav-child">
					  <dd class="">
						<a href="/demo/button.html">按钮</a>
					  </dd>
					  <dd class="">
						<a href="/demo/form.html">表单</a>
					  </dd>
					  <dd class="">
						<a href="/demo/nav.html">导航/面包屑</a>
					  </dd>
					  <dd class="">
						<a href="/demo/tab.html">选项卡</a>
					  </dd>
					  <dd class="">
						<a href="/demo/progress.html">进度条</a>
					  </dd>
					  <dd class="">
						<a href="/demo/panel.html">面板</a>
					  </dd>
					  <dd class="">
						<a href="/demo/badge.html">徽章</a>
					  </dd>
					  <dd class="">
						<a href="/demo/timeline.html">时间线</a>
					  </dd>
					  <dd class="">
						<a href="/demo/table-element.html">静态表格</a>
					  </dd>
					  <dd class="">
						<a href="/demo/anim.html">动画</a>
					  </dd>
					  <dd class="">
						<a href="/demo/auxiliar.html">辅助元素</a>
					  </dd>
					</dl>
				  </li>
				  
				  <li class="layui-nav-item layui-nav-itemed">
					<a class="javascript:;" href="javascript:;">组件示例</a>
					<dl class="layui-nav-child">
					  <dd class="">
						<a href="/demo/layer.html">
						  弹出层
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/laydate.html">
						  日期与时间选择
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/layim.html">
						  即时通讯
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/table.html">
						  数据表格
						</a>
					  </dd>
					   <dd class="">
						<a href="/demo/laypage.html">
						  分页
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/upload.html">
						  文件上传
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/transfer.html">
						  穿梭框
						</a>
					  </dd>
					  
					   <dd class="">
						<a href="/demo/tree.html">
						  树形组件
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/colorpicker.html">
						  颜色选择器
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/slider.html">
						  滑块
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/rate.html">
						  评分
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/carousel.html">
						  轮播
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/laytpl.html">
						  模板引擎
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/flow.html">
						  流加载
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/util.html">
						  工具集
						</a>
					  </dd>
					  <dd class="">
						<a href="/demo/code.html">
						  代码修饰器
						</a>
					  </dd>
					</dl>
				  </li>
				  
				  <li class="layui-nav-item" style="height: 30px; text-align: center"></li>
		</ul>

          <!-- UL end -->
        </div>
    </div>
    <div class="layui-fluid">
      <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
			111
        </div>
        <div class="layui-col-md12">
			222
        </div>
      </div>
    </div>
</div>
<!--用于选色效果-->

<script type="text/javascript" src="<%=basePath%>Static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>Static/js/layui.all.js"></script>
<script type="text/javascript" src="<%=basePath%>Static/js/common.js"></script>
</body>
</html>