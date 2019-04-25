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
                        <img src="js/assets/img/admin.jpg" class="img-thumbnail" />
						
                        <div class="inner-text">当前：管理员
                        <br />
                        </div>
                    </div>

                </li>

		<ul class="nav navbar-nav navbar-right">
		  <li><a href="dashboard.jsp" target="rightFrame">Dashboard</a></li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-dashboard  "></i>管理员信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/admin/getAllAdmin" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;查看所有管理员</a></li>
		      <li><a href="/DouyuMMS/admin/toUpdateMyInfo?account=${sessionScope.user.account}" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;编辑个人信息</a></li>
		      <li><a href="/DouyuMMS/admin/toAddAdmin" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;增加管理员</a></li>
		    </ul>
		  </li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-flash "></i>会员信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/admin/getAllMember" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;查看所有会员</a></li>
		      <li><a href="/DouyuMMS/admin/toAddMember" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;增加会员</a></li>
		    </ul>
		  </li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-anchor "></i>主播信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/admin/getAllStar" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;查看所有主播</a></li>
		      <li><a href="/DouyuMMS/admin/toAddStar" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;增加主播</a></li>
		    </ul>
		  </li>
		  <li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-desktop "></i>黑名单信息 <span class="caret"></span></a>
		    <ul class="dropdown-menu">
		      <li><a href="/DouyuMMS/admin/getAllBlacklist" target="rightFrame">&nbsp;&nbsp;&nbsp;<i class="fa fa-toggle-on"></i>&nbsp;&nbsp;&nbsp;查看黑名单</a></li>
		    </ul>
		  </li>
		</ul>
		                   
                    
                
        </div>

        </nav>
</div>
</body>
 	
</html>