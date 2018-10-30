<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=9,IE=10" />
<meta http-equiv="Expires" content="0">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Cache-Control" content="no-store">

<!-- Global stylesheets -->
<link href="https://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900" rel="stylesheet" type="text/css">
<link href="${ctxStatic}/assets/css/icons/icomoon/styles.css" rel="stylesheet" type="text/css">
<link href="${ctxStatic}/assets/css/minified/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ctxStatic}/assets/css/minified/core.min.css" rel="stylesheet" type="text/css">
<link href="${ctxStatic}/assets/css/minified/components.min.css" rel="stylesheet" type="text/css">
<link href="${ctxStatic}/assets/css/minified/colors.min.css" rel="stylesheet" type="text/css">
<!-- /global stylesheets -->

<!-- Core JS files -->
<script type="text/javascript" src="${ctxStatic}/assets/js/plugins/loaders/pace.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/assets/js/core/libraries/jquery.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/assets/js/core/libraries/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/assets/js/plugins/loaders/blockui.min.js"></script>
<!-- /core JS files -->


<!-- 引入layer插件 -->
<script src="${ctxStatic}/layer-v2.0/layer/layer.js"></script>
<script src="${ctxStatic}/layer-v2.0/layer/laydate/laydate.js"></script>

<!-- 引入自定义文件 -->
<script type="text/javascript">
var ctx = '${ctx}', ctxStatic='${ctxStatic}';
var wfwurl='http://218.93.15.98:2228';
</script>
<script>
//全局的AJAX访问，处理AJAX清求时SESSION超时
$.ajaxSetup({
    contentType:"application/x-www-form-urlencoded;charset=utf-8",
    complete:function(XMLHttpRequest,textStatus){
          //通过XMLHttpRequest取得响应头，sessionstatus           
          var sessionstatus=XMLHttpRequest.getResponseHeader("sessionstatus"); 
          if(sessionstatus=="timeout"){
               //跳转的登录页面
               top.location.replace('${ctx}');
       		}	
          if(textStatus=='error'){
        	  if(XMLHttpRequest.status='500'){
              	  var html=XMLHttpRequest.responseText;
              	  layer.open({
              		  type: 1,  
              		  title : " ",
              		  area : ["300px","150px"],
              		  maxmin :true,
              		  content: html, //这里content是一个普通的String
              		  full :function(dom){
              				$(dom.find(".layui-layer-content")[0]).height("90%");//高度自适应
              		  },
              		  restore  :function(dom){
              				$(dom.find(".layui-layer-content")[0]).height("90%");//高度自适应
              		  }
              		});
        	  }
          }
    }
});

</script>
