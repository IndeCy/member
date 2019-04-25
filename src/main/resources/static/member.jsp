<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>斗鱼会员管理系统</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="../js/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="../js/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="../js/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="../js/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- JQUERY SCRIPTS -->
    <script src="../js/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="../js/assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="../js/assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    
</head>
<frameset rows="75,*" cols="*" frameborder="no" border="0" framespacing="0">
  <frame src="/DouyuMMS/memberTop.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
  <frameset cols="260,*" frameborder="no" border="0" framespacing="0">
    <frame src="/DouyuMMS/memberLeft.jsp" name="leftFrame" scrolling="Yes" noresize="noresize" id="leftFrame" title="leftFrame" />
    <frame src="/DouyuMMS/dashboard.jsp" name="rightFrame" id="rightFrame" title="rightFrame" />
  </frameset>
</frameset>
<body></body>
</html>
