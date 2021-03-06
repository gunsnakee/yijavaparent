<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新华网络电视-电台</title>
<link rel="stylesheet" type="text/css" href="resource/css/reset.css">
<link rel="stylesheet" type="text/css" href="resource/css/play.css">
<script src="resource/js/jquery-1.7.2.js"></script>
<script src="resource/js/common.js"></script>
<script src="resource/js/json2.js"></script>
<script type="text/javascript" src="resource/js/jquery.jplayer.js"></script>
<script type="text/javascript" src="resource/js/jplayer.playlist.js"></script>
<script>
var islogined = false;
var userId = 0;
$(function(){
	$('#shareBox').hide();
	tabs($('#tabTitle'), $('#tabContent .tab-content'), 'current');
	$('.media-list li').live('mouseenter',function(){
		$('.info-box',this).stop().animate({'top':0},200);
	}).live('mouseleave',function(){
		$('.info-box',this).stop().animate({'top':114},200);
	});
	
	$('.cnc-volume-button').click(function(){
		$('.cnc-volume-bar').toggleClass('cnc-volume-show');
	});
	$(document).click(function(e){
		if(!($(e.target).closest('.cnc-volume-bar').length > 0 || $(e.target).closest('.cnc-volume-button').length > 0)){
			$('.cnc-volume-bar').removeClass('cnc-volume-show');
		}
	});
	$('#share').click(function(){
		$('#shareBox').css({left:$(this).offset().left, top:$(this).offset().top + $(this).outerHeight()}).show();
		var current = myPlaylist.current;
  		var title=myPlaylist.playlist[current].id;
  		
  		
  		var protocol=window.location.protocol;
  		var host=window.location.host;
  		var port=window.location.port;
  		
  		$("#htmlurl").val(window.location);
  		$("#normalurl").val(protocol+"//"+host+"/stage/player?id="+title);
		return false;
	});
	$('#shareBox .popClose').click(function(){
		$('#shareBox').hide();
	});
	
	 $("#btnhtmlurl").click(function(){  
            var text = $("#htmlurl").html();  
            window.clipboardData.setData('text',text); 
            //window.clipboardData.setData('text',text);  
            alert("成功到剪贴板");  
        });  
	 $("#btnnormalurl").click(function(){  
            var text = $("#normalurl").html();  
            window.clipboardData.setData('text',text); 
            //window.clipboardData.setData('text',text);  
            alert("成功到剪贴板");  
        });  
});


</script>
</head>

<body>
<div class="top">
  <div class="top-inner">
    <div class="r"><span id="date"></span><span id="date"></span>
    <a href="javascript:;" onClick="SetHome(this,window.location);">设为首页</a>
    <a href="javascript:addBookmark(window.title,window.location);">收藏</a>
    <a id="loginname" href="javascript:void(0);" onclick="javascript:login();">登陆</a>
    <a id="logout" href="javascript:void(0);" onclick="javascript:reg();">注册</a></div>
    新华社 电视 CNC网络互动媒体 </div>
</div>
<div class="header-box">
  <div class="header-bg">
    <div class="header">
      <div class="logo"><a href="#"></a></div>
      <ul class="nav">
        <li><a href="#">首页</a></li>
        <li><a href="#">新闻</a></li>
        <li><a href="#">财经</a></li>
        <li><a href="#">文娱</a></li>
        <li><a href="#">体育</a></li>
        <li><a href="#">图片</a></li>
        <li><a href="#">纪录片</a></li>
        <li><a href="#" class="current">电台</a></li>
        <li><a href="#">直播</a></li>
        <li><a href="#">CNCWORLD</a></li>
      </ul>
    </div>
  </div>
</div>