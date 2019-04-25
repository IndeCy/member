<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<body>
<div id="wrapper">
   <div id="page-inner">
       <div class="row">
           <div class="col-sm-12">
               <h1 class="page-head-line text-center">Add Personal Information</h1>
               <h1 class="page-subhead-line text-center">在此界面，您可以增加会员。</h1>
           </div>
       </div>
       <!-- /. ROW  -->
       <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-12 col-sm-offset-3">
               <div class="panel panel-info">
                 <div class="panel-heading">
                    BASIC FORM
                 </div>
                 <div class="panel-body">
                     <form role="form" action="/DouyuMMS/admin/addMember" name="memberForm" method="post">
                          <div class="form-group">
                              <label>Enter Name</label>
                              <input class="form-control" type="text" name="name" value="${member.name }" required>
                              <p class="help-block">Help text here.</p>
                          </div>
                   		  <div class="form-group">
                              <label>Enter Phone</label>
                              <input class="form-control" type="text" name="phone" value="${member.phone }" required>
                       		 <p class="help-block">Help text here.</p>
                          </div>
                          
                              <label>Enter Sex</label>
                              <div class="radio">
								  <label>
								    <input type="radio" name="sex" value="1" class="sex" id="sex1" checked>男<span style="display:none;">${member.sex }</span>
								  </label>
							  </div>
							  <div class="radio">
								  <label>
								    <input type="radio" name="sex" value="0" class="sex" id="sex0">女<span style="display:none;">${member.sex }</span>
								  </label>
							  </div>
                              
                              
                       		 <p class="help-block">Help text here.</p>
                       

                          <div class="form-group">
                              <label>Enter Account</label>
                              <input class="form-control" type="text" name="account" value="${member.account }" required>
                       		 <p class="help-block">Help text here.</p>
                          </div>
                          <div class="form-group">
                              <label>Enter Password</label>
                              <input class="form-control" type="text" name="password" value="${member.password }" required>
                       		 <p class="help-block">Help text here.</p>
                          </div>
                          
                          <button type="submit" class="btn btn-info">Save </button>
                       </form>
                     </div>
                   </div>
                 </div>
               </div>
        </div>    
</div>
</body>
</html>