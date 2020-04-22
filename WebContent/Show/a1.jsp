<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>layout 后台大布局 - Layui</title>
  <link rel="stylesheet" href="<%=basePath%>Static/css/layer.css">
  <%-- <script src="<%=basePath%>Static/js/layui.all.js"></script> --%>
  <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="<%=basePath%>Static/js/layer.js"></script>
</head>
<body>
<script type="text/javascript">
var url="d://用户目录/我的图片/2019-12-19-13-46-13-196-1384_format_f.JPEG";
var ext=url.split(".");
var ext_end=ext[1].toLowerCase();
//console.log(ext_end);
var pattern="bmp,jpg,png,gif,jpeg,png";
var z=pattern.indexOf(ext_end,0);
//console.log(z);
if(z!=-1){
	console.log("success");
}else{
	console.log("error");
}
/* layer.open({
    type: 2 //此处以iframe举例
    ,title: '当你选择该窗体时，即会在最顶端'
    ,area: ['390px', '260px']
    ,shade: 0
    ,maxmin: true
    ,offset: [ //为了演示，随机坐标
      Math.random()*($(window).height()-300)
      ,Math.random()*($(window).width()-390)
    ] 
    ,content: '//layer.layui.com/test/settop.html'
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
  });  */
</script>
</body>
</html>