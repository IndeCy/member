<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
<script>
</script>
<body>
<div class="row">
    <div class="col-md-12">
        <h1 class="page-head-line text-center">All Star Information</h1>
        <h1 class="page-subhead-line text-center">在此界面，您可以查看所有主播信息。</h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-10 col-sm-offset-1">
         <!--    Hover Rows  -->
        <div class="panel panel-default">
            <div class="panel-heading">
                Unsubscribe List
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Account</th>
                                <th>Sex</th>
                                <th>Birth</th>
                                <th>Money</th>
                                <th>IDcard</th>
                                <th>Broadcast</th>
                                <th>Roomno</th>
                                <th>Operation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${!empty starList }">  
				                <c:forEach items="${starList }" var="star">  
				                    <tr>
				                        <td>${star.name }</td>  
				                        <td>${star.account }</td>  
				                        <td id="sex${star.account}">${star.sex }</td>  
				                        <td>${star.birth }</td> 
				                        <td>${star.money }</td> 
				                        <td>${star.idcard }</td> 
				                        <td>${star.broadcast }</td> 
				                        <td>${star.roomno }</td>
				                        <td><button class="btn btn-sm btn-warning">
				                     	<a href="javascript:black('${star.account }')">拉黑</a></button></td>
				                    </tr>               
				                </c:forEach>  
				            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
</div>
<input value="${sessionScope.user.account}" id="a" style="display:none;">
<div id="b" style="display:none;"></div>
</body>
<script>
function black(account){  
	$.get("/DouyuMMS/admin/moveToBlacklist?account="+account,function(data){  
        if("success" == data.result){ 
            alert("拉黑成功！");  
            window.location.reload();  
        }else{  
            alert("拉黑失败！");  
        }  
    });  
}

$(function(){
	$("td[id^='sex']").each(function(){
	    if($(this).text()=="1"){
	    	$(this).text("男");
	    }
	    if($(this).text()=="0"){
	    	$(this).text("女");
	    }
	 })
    
})


</script>
</html>