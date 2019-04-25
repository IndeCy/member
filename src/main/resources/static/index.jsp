<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="js/bootstrap.css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.10.2.js"></script>  
<title>用户登陆</title>
<style>
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: "微软雅黑", Verdana, Arial, Helvetica, sans-serif;
}
ul,li{
    list-style: none
}
button{
    text-decoration: none;
}
body{

}
/*登录start*/
.login {
    width: 100%;
    height: 100%;
    background: url(images/login-bg.jpg) no-repeat center center;
    position: absolute;
    top: 0;
    left: 0;
    background-size: cover;
    text-align: center;
    overflow: hidden;
}
.login .loginArea {
    width: 346px;
    height: 420px;
    position: absolute;
    top: 50%;
    left: 50%;
    margin: -210px 0 0 -173px;
}

.login .loginArea .header img {
    width: 84px;
    height: 84px;
}

.login .loginArea .header h3 {
    font-size: 36px;
    color: #fff;
    line-height: 46px;
    font-weight: normal;
    margin-top: 18px;
}

.login .loginArea .content {
    margin-top: 50px;
}

.login .loginArea .content ul {
    padding-bottom: 15px;
}

.login .loginArea .content li, .login .loginArea .content button.loginBtn {
    border-radius: 5px;
}

.login .loginArea .content li {
    background-color: rgba(36, 74, 89, 0.85);
    margin-top: 25px;
    overflow: hidden;
}

.login .loginArea .content button.loginBtn {
    width: 100%;
    height: 48px;
    display: block;
    background-color: #10a4fc;
    font-size: 18px;
    color: #fff;
    line-height: 48px;
    text-align: center;
    letter-spacing: 5px;
}

.login .loginArea .content button.loginBtn:hover {
    background-color: #0b8cd9;
}

.login .loginArea .content em {
    width: 37px;
    height: 28px;
    display: block;
    float: left;
    margin: 10px 0 0 13px;
    background: url(images/login-icon.png) no-repeat;
}

.login .loginArea .content input {
    width: 296px;
    height: 48px;
    display: block;
    float: left;
    border: none;
    background-color: transparent;
    padding-left: 15px;
    font-size: 16px;
    line-height: 100%;
    color: #fff;
}

input::-webkit-input-placeholder{
    color: #fff;
}
input:-moz-placeholder{
    color: #fff;
}
input::-moz-placeholder{
    color: #fff;
}
input:-ms-input-placeholder{
    color: #fff;
}

.login .loginArea .content li:nth-child(1) em {
    background-position: 0 0;
}

.login .loginArea .content li:nth-child(2) em {
    background-position: 0 -32px;
}

.login .loginArea .content li:nth-child(3) {
    width: 100%;
    height: 28px;
    font-size: 18px;
    color: #f35e5e;
    line-height: 32px;
    text-align: left;
    background: none;
    margin: 0;
}
.form-control{
	display:inline-block !important;
	width: 65% !important;
}

</style>
<script>

function login(){
	$.post("/DouyuMMS/login/judgeUser?account="+$("#loginId").val()+"&password="+$("#password").val()+"&privilege="+$("#privilege").val(),function(data){
		
		if(data.result == "error"){
			alert("用户名或密码错误！！！");
			return;
		}
		 else if(data.result == "black"){			
			alert("你已经被拉入黑名单，请找管理员取消拉黑！！！");
			return;
		}
		else{			
			$("#login-regis").attr("method","post");
            $("#login-regis").attr("action","/DouyuMMS/login/r");
            $("#login-regis").submit();
		}
	});		
}

</script>
</head>
<body>
<div class="login">
    <div class="loginArea">
        <div class="header">
            <img src="images/login-logo.png" alt="">
            <h3>斗鱼会员管理系统</h3>
        </div>
        <div class="content">
            <form id="login-regis" operatype="login">
                <ul>
                    <li><em></em><input type="text" name="account"  placeholder="用户名" id="loginId" value="" required></li>
                    <li><em></em><input type="password" name="password"  placeholder="密码" id="password" value="" required></li>
                </ul>
                <button class="loginBtn" id="admin_btns" type="button" onclick="login()">登录</button>
                <div style="height:30px !important;"></div>
                 <div class="col-sm-6 col-xs-12" style="position:relative;left:25%;">
	                <div class="form-group">
                        <label style="color:#fff;">权限：</label>
                        <select class="form-control" name="privilege" id="privilege">
                            <option value="0" selected>管理员</option>
             				<option value="1">会员</option>
             				<option value="2">主播</option>
                        </select>
                    </div>	
                  </div>	
            </form>
        </div>
    </div>
</div>


</body>
</html>