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
        <h1 class="page-head-line text-center">All blackList Information</h1>
        <h1 class="page-subhead-line text-center">在此界面，您可以查看所有黑名单信息。</h1>
    </div>
</div>
<div class="row">
    <div class="col-sm-10 col-sm-offset-1">
         <!--    Hover Rows  -->
        <div class="panel panel-default">
            <div class="panel-heading">
                All blacklist
            </div>
            <div class="panel-body">
                <div class="table-responsive">
	                <form method="post" class="form-horizontal">
	                    <table class="table table-hover">
	                        <thead>
	                            <tr>
	 								<th>Blacklist Account</th>
	                                <th>Admin Name</th>
	                                <th>Time</th>
	                                <th>Operation</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <c:if test="${!empty blackList }">  
					                <c:forEach items="${blackList }" var="black">  
					                    <tr>
					                        <td>${black.account}</td>
					                        <td>${black.adminname}</td>
					                     	<td>${black.time}</td>
					                     	<td>
					                     	<button class="btn btn-sm btn-warning">
					                     	<a href="javascript:black('${black.account }')">取消拉黑</a></button>
					                     	</td>
					                    </tr>               
					                </c:forEach>  
					            </c:if>
	                        </tbody>
	                    </table>
	                  </form>
                </div>
            </div>
</div>
<input value="${sessionScope.user.account}" id="a" style="display:none;">
<div id="b" style="display:none;"></div>
</body>
<script>
$(function(){console.log($("td[id^='sex']").text());
	$("td[id^='sex']").each(function(){
	    if($(this).text()=="1"){
	    	$(this).text("男");
	    }
	    if($(this).text()=="0"){
	    	$(this).text("女");
	    }
	 })
    
})

function black(account){  
	$.get("/DouyuMMS/admin/moveOutBlacklist?account="+account,function(data){  
        if("success" == data.result){ 
            alert("取消拉黑成功！");  
            window.location.reload();  
        }else{  
            alert("取消拉黑失败！");  
        }  
    });  
}


</script>
</html>