<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
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
     <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="../js/assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="../js/assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="../js/assets/js/jquery.metisMenu.js"></script>

</head>

<body style="height:1000px;">
<div class="row">
    <div class="col-md-12">
        <h1 class="page-head-line text-center">Personal Information</h1>
        <h1 class="page-subhead-line text-center">在此界面，您可以查看个人信息。</h1>
    </div>
</div>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
         <!--    Hover Rows  -->
        <div class="panel panel-default">
            <div class="panel-heading">
            View Personal Information
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>姓名</th>
                                <th>电话</th>
                                <th>性别</th>
                                <th>用户名</th>
                                <th>密码</th>
                                <th>直播时间</th>
                                <th>生日</th>
                                <th>房间号</th>
                                <th>身份证号</th>
                            </tr>
                        </thead>
                        <tbody>
		                    <tr>  
		                        <td>${star.name }</td>  
		                        <td>${star.phone }</td>  
		                        <td id="sex">${star.sex }</td> 
		                        <td>${star.account }</td> 
		                        <td>${star.password}</td>
		                        <td>${star.broadcast}</td>
		                        <td>${star.birth}</td>
		                        <td>${star.roomno}</td>
		                        <td>${star.idcard}</td>
			                </tr>         
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
$(function(){
	if($("#sex").text()=="1"){
		$("#sex").text("男");
	}
	else{
		$("#sex").text("女");
	}
})
</script>
</html>