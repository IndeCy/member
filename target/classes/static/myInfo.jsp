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
                            </tr>
                        </thead>
                        <tbody>
		                    <tr>  
		                        <td>${member.name }</td>  
		                        <td>${member.phone }</td>  
		                        <td id="sex">${member.sex }</td> 
		                        <td>${member.account }</td> 
		                        <td>${member.password}</td>
			                </tr>         
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
	<div class="col-sm-4 col-md-offset-3">
		<form method="post" class="form-horizontal">
			<label class="control-label col-sm-5">充值金额</label>
			<div class="col-sm-7">
				<div class="input-group">
					<span class="input-group-addon">$</span>
					<input type="text" class="form-control" value="100" id="money">
					<span class="input-group-addon">.00</span>
				</div>
			</div>
			</div>
				<button class="btn btn-lg btn-success" id="recharge">充值</button>
			</div>
		</form>
    
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


$(function(){
	$("#recharge").click(function(){
		$.get("/DouyuMMS/member/recharge?money=" + $("#money").val(),function(data){  
            if("success" == data.result){  
                alert("充值成功！"); 
                window.location.reload();  
            }else{  
                alert("充值失败！");  
            }  
        });  
	})
})

</script>
</html>