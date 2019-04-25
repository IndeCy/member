<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<body>
<div id="wrapper" style="height:730px;">
<nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <img src="js/assets/img/star1.jpg" class="img-thumbnail" />
						
                        <div class="inner-text">当前：主播
                        <br />
                        </div>
                    </div>

                </li>

		<ul class="nav navbar-nav navbar-right">
		  <li><a href="dashboard.jsp" target="rightFrame">Dashboard</a></li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-dashboard  "></i>个人信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/star/getMyInfo?account=${sessionScope.user.account}" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;查看信息</a></li>
		      <li><a href="/DouyuMMS/star/toUpdateMyInfo?account=${sessionScope.user.account}" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;编辑信息</a></li>
		    </ul>
		  </li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-desktop "></i>打赏信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/star/getMyReward?account=${sessionScope.user.account}" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;打赏记录表</a></li>
		    </ul>
		  </li>
		</ul>
		                   
                    
                
        </div>

        </nav>
</div>
</body>
 	
</html>