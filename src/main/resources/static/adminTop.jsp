<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<!-- BOOTSTRAP STYLES-->
    <link href="js/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="js/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="js/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="js/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- JQUERY SCRIPTS -->
    <script src="js/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="js/assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="js/assets/js/jquery.metisMenu.js"></script>

   
</head>
<script>

$(function () {
	$("#reload").click(function(){
		  $.get("/DouyuMMS/member/getMoney",function(data){
			  if("error" == data.result){  
		            alert("刷新失败！");  
		        }else{  
		            alert("刷新成功！");  
		            $("#yue").text(data.result);
		            $("#name").text(data.result1);
		        } 
		  });
		});
});

</script>
<body>
<div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">斗鱼会员管理系统</a>
            </div>
			<div class="header-right">
			</div>
            <div class="header-right">
           	   我的姓名： <span id="name">${sessionScope.user.name}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <a href="http://localhost:9999/DouyuMMS/" target="_parent" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>


            </div>
		</nav>
</div>
</body>
</html>