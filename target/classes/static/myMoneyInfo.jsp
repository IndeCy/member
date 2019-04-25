<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
$(function(){
	$("td[id^='maccount']").each(function(){
		 if($(this).text()==$(this).next().text()){
			 $(this).parent().addClass("list-group-item-success");
			 $(this).next().next().next().text("充值");
		 }
		 else{
			 $(this).parent().addClass("list-group-item-danger");
			 $(this).next().next().next().text("打赏");
		 }
	})
})
</script>
<body>
<div class="row">
    <div class="col-md-12">
        <h1 class="page-head-line text-center">consumption information</h1>
        <h1 class="page-subhead-line text-center">在此界面，您可以查看消费记录。</h1>
    </div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
		<div class="panel-heading"> Consumption Information Form </div>
		<!-- Table -->
		<table class="table" id="table">
		  <thead>
		    <tr>
		      <th>My Account</th>
		      <th>Target Account</th>
		      <th>On Date</th>
		      <th>Actions</th>
		      <th>Amount</th>
		    </tr>
		  </thead>
		  <tbody>
			  <c:if test="${!empty moneyInfo }">  
	             <c:forEach items="${moneyInfo }" var="moneyInfo">  
	                 <tr>  
	                     <td id="maccount${moneyInfo.id}">${moneyInfo.maccount }</td> 
	                     <td id="saccount${moneyInfo.id}">${moneyInfo.saccount }</td> 
	                     <td>${moneyInfo.ddate }</td>  
	                     <td>${moneyInfo.purpose }</td>  
	                     <td>${moneyInfo.property }</td> 
	                 </tr>               
	             </c:forEach>  
	         </c:if>    
		  </tbody>
		</table>
	 </div>
   </div>
   
</div>
</body>
</html>