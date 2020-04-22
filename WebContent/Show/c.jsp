<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="<%=basePath%>Static/css/layui.css">
  <link rel="stylesheet" href="<%=basePath%>Static/css/layer.css">
  <script src="<%=basePath%>Static/js/jquery-3.4.1.min.js"></script>
  <script src="<%=basePath%>Static/js/hm.js"></script>
  <script src="<%=basePath%>Static/js/layer.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">文件查阅平台</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a onclick="page()" href="javascript:;">查询</a></li>
      <li class="layui-nav-item"><input placeholder="路径_例 c:/" value="c:/" id="pageUrl"></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul> 
    <ul class="layui-nav layui-layout-right">
     <!-- 暂时用不到20200418  
     <li class="layui-nav-item">
        <a href="javascript:;">
          <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
         	 贤心
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">基本资料</a></dd>
          <dd><a href="">安全设置</a></dd>
        </dl>
      </li> 
                 暂时用不到20200418-->
      <li class="layui-nav-item"><a href="<%=basePath%>/begin">退出</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul id ="roadPanel" class="layui-nav layui-nav-tree layui-inline" style="margin-right: 10px;" lay-filter="demo">
		  <!-- <li class="layui-nav-item ">
		    <a href="javascript:;">一级</a>
		    <dl class="layui-nav-child">
		      <dd>
		      	<a href="javascript:;">二级</a>
					<dl class="layui-nav-child layui-cite-2">
                    	<dd><a href="javascript:;"> <cite>三级菜单</cite></a></dd>
                	</dl>		      
			  </dd>
		      <dd><a href="javascript:;">二级</a></dd>
		    </dl>
		  </li> -->
		  <!-- <li class="layui-nav-item">
		    <a href="javascript:;">解决方案</a>
		    <dl class="layui-nav-child">
		      <dd><a href="">移动模块</a></dd>
		      <dd><a href="">电商平台</a></dd>
		      <dd><a href="">移动模块</a></dd>
		      <dd><a href="">后台模版</a></dd>
		      <dd><a href="">电商平台</a></dd>
		    </dl>
		  </li> -->
		  <!-- <li class="layui-nav-item"><a href="">云市场</a></li> -->
		  <!-- <li class="layui-nav-item"><a href="">社区</a></li> -->
	 </ul>
      
      
    </div>
  </div>
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <span class="layui-breadcrumb" l id="nav1" >
		  <a href="/" id="tab1">首页</a>
		</span>
    <div style="padding: 15px;" >
	    
    	<div style="width: 100%;height: 100%;" id="mainBody">
    	</div>
    </div>
  </div>
  <div class="layui-footer">
   <div class="layui-row">
    <div class="layui-col-xs6">
      <!-- 12 -->
    </div>
    <div class="layui-col-xs6">
    	<ul class="layui-nav" lay-filter="">
		  <li class="layui-nav-item">
			<input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search/keywords=">
		  </li>
		  <li class="layui-nav-item layui-this">
		  	<button type="button" class="layui-btn">按钮一</button>
		  </li>
    	</ul>
    </div>
  </div>
    <!-- 底部固定区域 -->
    <!-- <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item">
		<input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search/keywords=">
	  </li>
      <li class="layui-nav-item"><a href="">查找</a></li>
    </ul> -->
    
  </div>
</div>
<script src="<%=basePath%>Static/js/layui.all.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<!-- <script>
layui.use('element', function(){
  var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script> -->
</body>
<script type="text/javascript">
$(document).ready(function(){
});
var sp=null;
//left panel
function page(url){
	 $.ajax({
         url:"<%=basePath%>/page",
         type:"POST",
         data:{ url: $("#pageUrl").val()},
         contentType :"application/x-www-form-urlencoded; charset=utf-8",
         success:function(data){
  			$("#roadPanel").html(data);
         }
	});
}
//right panel
function query(url){
	 $.ajax({
         url:"<%=basePath%>/query",
         type:"POST",
         data:{ url: url},
         contentType :"application/x-www-form-urlencoded; charset=utf-8",
         success:function(data){
  			$("#mainBody").html(data);
         }
	});

	setTab(url);
}
//导航条
function setTab(url){
	var tab="<span class=\"layui-badge-dot layui-bg-blue\"></span>";
	sp=url.split("/");
	//console.log(sp);
	for(var i=2;i<sp.length;i++){
		if(i==sp.length-1){
			tab+="<a style=\"font-size: 16px;\" onclick='getTab("+i+")' href='javascript:;'>"+sp[i]+"</a>"
		}else{
			tab+="<a style=\"font-size: 16px;\" onclick='getTab("+i+")' href='javascript:;'>"+sp[i]+"&nbsp;/&nbsp;</a>"
		}
	}
	$("#nav1").html(tab);
	  /* <a href="/" id="tab1">首页</a>
	  <a href="/demo/">演示</a>
	  <a><cite>导航元素</cite></a> */
}

function getTab(i){
	//console.log(i);
	//console.log(sp);
	var url=sp[0];
	for(var j=1;j<=i;j++){
		url+="/";
		url+=sp[j];
	}
	//console.log(url);
	query(url);
}
//下载
function download(url){
	//console.log(url);
	 //var formm=function(){
	        var form=$("<form>");//定义一个form表单
	        form.attr("style","display:none");
	        form.attr("target","");
	        form.attr("method","post");
	        form.attr("action","<%=basePath%>/download");
	        var input1=$("<input>");
	        input1.attr("type","hidden");
	        input1.attr("name","url");
	        input1.attr("value",url);
	        var input2=$("<input>");
	        input2.attr("type","hidden");
	        input2.attr("name","flag");
	        input2.attr("value",0);
	        $("body").append(form);//将表单放置在web中
	        form.append(input1);
	        form.append(input2);
	        form.submit();//表单提交
	   // }
}
//判断是否是图片
function judgeImg(url){
	//var url="d://用户目录/我的图片/2019-12-19-13-46-13-196-1384_format_f.JPEG";
	var ext=url.split(".");
	var ext_end=ext[ext.length-1].toLowerCase();
	//console.log(ext_end);
	var pattern="bmp,jpg,png,gif,jpeg,png";
	var z=pattern.indexOf(ext_end,0);
	//console.log(z);
	if(z!=-1){
		return true;
		//console.log("success");
	}else{
		return false;
		//console.log("error");
	}
}

//查看
function queryload(url){
	//判断是否是图片
	if(judgeImg(url)){
		layer.open({
		    type: 1 //此处以iframe举例
		    ,title: '当你选择该窗体时，即会在最顶端'
		    ,area: ['390px', '260px']
		    ,shade: 0
		    ,maxmin: true
		    ,offset: [ //为了演示，随机坐标
		      ($(window).height()/2)
		      ,($(window).width()/2)
		    ] 
		    ,content: "<img id=\"npcImg\" width=\"100%\" height=\"100%\"/>  "
		    ,btn: ['继续弹出', '全部关闭'] //只是为了演示
		    ,yes: function(){
		      $(that).click(); 
		    }
		    ,btn2: function(){
		      layer.closeAll();
		    }
		    ,zIndex: layer.zIndex //重点1
		    ,success: function(layero){
		      layer.setTop(layero); //重点2
		      $('#npcImg').attr('src','<%=basePath%>/download?url='+url);  
		    }
		  });
	 }
	if(!judgeImg(url)){
		 layer.open({
			    type: 2 //此处以iframe举例
			    ,title: '当你选择该窗体时，即会在最顶端'
			    ,area: ['390px', '260px']
			    ,shade: 0
			    ,maxmin: true
			    ,offset: [ //为了演示，随机坐标
			      ($(window).height()/2)
			      ,($(window).width()/2)
			    ] 
			    ,content: '<%=basePath%>/show?url='+url
			    ,btn: ['继续弹出', '全部关闭'] //只是为了演示
			    ,yes: function(){
			      $(that).click(); 
			    }
			    ,btn2: function(){
			      layer.closeAll();
			    }
			    ,zIndex: layer.zIndex //重点1
			    ,success: function(layero){
			      layer.setTop(layero); //重点2
			    }
			  }); 
	 }
}
</script>
</html>
