<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/style.css" />
    <!--[if IE 6]>
    <script src="js/iepng.js" type="text/javascript"></script>
        <script type="text/javascript">
           EvPNG.fix('div, ul, img, li, input, a'); 
        </script>
    <![endif]--> 
    
    <style type="text/css">
    	.tips {
    		color:red;
    		font-size:0.8em;
    	}
    	#rpwdTips,#pwdTips,#usernameTips,#emailTips,#mobileTips{
    		display:none;
    	}
    </style>
       
    <script type="text/javascript" src="js/jquery-1.11.1.min_044d0927.js"></script>
	<script type="text/javascript" src="js/jquery.bxslider_e88acd1b.js"></script>
    
    <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>    
        
	<script type="text/javascript" src="js/select.js"></script>
    
	<script type="text/javascript" src="js/lrscroll.js"></script>
    
    <script type="text/javascript" src="js/iban.js"></script>
    <script type="text/javascript" src="js/fban.js"></script>
    <script type="text/javascript" src="js/f_ban.js"></script>
    <script type="text/javascript" src="js/mban.js"></script>
    <script type="text/javascript" src="js/bban.js"></script>
    <script type="text/javascript" src="js/hban.js"></script>
    <script type="text/javascript" src="js/tban.js"></script>
    
	<script type="text/javascript" src="js/lrscroll_1.js"></script>
    <script type="text/javascript">
    	function checkUserName(){
    		var tips = document.getElementById("usernameTips");
    		tips.style.display="none";
    		var names = document.getElementsByName("loginName");
    		var reg = /^[a-zA-Z][a-zA-Z0-9_]{5,19}$/;
    		if(!reg.test(names[0].value)){
    			tips.style.display="table-row";
    			return false;
    		}
    		return true;
    	}
    	
    	function checkPwd(){
    		var tips = document.getElementById("pwdTips");
    		tips.style.display="none";
    		var pwds = document.getElementsByName("password");
    		var reg = /^[a-zA-Z0-9_]{6,10}$/;
    		if(!reg.test(pwds[0].value)){
    			tips.style.display="table-row";
    			return false;
    		}
    		var rpwds = document.getElementsByName("repassword");
    		if(rpwds[0].value!=""){
    			return checkRPwd();
    		}
    		return true;
    	}
    	
    	function checkRPwd(){
    		var tips = document.getElementById("rpwdTips");
    		tips.style.display="none";
    		var rpwds = document.getElementsByName("repassword");
    		var pwds = document.getElementsByName("password");
    		if(pwds[0].value!=rpwds[0].value){
    			tips.style.display="table-row";
    			return false;
    		}
    		return true;
    	}
    	
    	function checkEmail(){
    		var tips = document.getElementById("emailTips");
    		tips.style.display="none";
    		var mails = document.getElementsByName("email");
    		if(mails[0].value==""){
    			tips.style.display="table-row";
    			return false;
    		}
    		return true;
    	}
    	function checkMobile(){
    		var tips = document.getElementById("mobileTips");
    		tips.style.display="none";
    		var mobiles = document.getElementsByName("mobile");
    		var reg="/^[0-9]{11}$/";
    		if(mobiles[0].value==""&&!reg.test(mobiles[0])){
    			tips.style.display="table-row";
    			return false;
    		}
    		return true;
    	}
    	
    	function regist(){
    		//确保勾选了同意协议
    		var cb = document.getElementsByName("isAgree");
    		if(!cb[0].checked){
    			alert("请先勾选同意");
    			return;
    		}
    		
    		//先去校验一遍必填项
    		var flag = true;
    		flag = checkUserName() && flag;
    		flag = checkPwd() && flag;
    		flag = checkRPwd() && flag;
    		flag = checkEmail() && flag;
    		flag = checkMobile() && flag;
    		if(flag){
    			//提交表单
    			document.getElementsByName("f1")[0].submit();
    			//f1.submit();
    		}
    	}
    </script>
    
<title>购物街</title>
</head>
<body>
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="login.jsp">登录</a>&nbsp; <a href="regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="Index.html"><img src="images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form name="f1" action="register" method="post">
            <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="95">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">注册</span>
                    <span class="fr">已有商城账号，<a href="login.jsp" style="color:#ff4e00;">我要登录</a></span>
                </td>
              </tr>
              <tr>
              	<td></td>
              	<td class="tips">
              		<%

              			String msg = (String)request.getAttribute("message");
              			if(msg!=null){
              				out.write(msg);
              			}
              		%>
              	</td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                <td><input name="loginName" type="text" class="l_user" onblur="checkUserName()"/></td>
              </tr>
              <tr id="usernameTips">
              	<td></td>
              	<td class="tips">用户名字母开头,后面是字母，数字或下划线，长度为6-20位</td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                <td><input name="password" type="password"  class="l_pwd" onblur="checkPwd()" /></td>
              </tr>
              <tr id="pwdTips">
              	<td></td>
              	<td class="tips">密码由字母，数字或下划线组成，长度为6-10位</td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                <td><input name="repassword" type="password" class="l_pwd" onblur="checkRPwd()"/></td>
              </tr>
              <tr id="rpwdTips">
              	<td></td>
              	<td class="tips">密码不一致</td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;邮箱 &nbsp;</td>
                <td><input name="email" type="text" class="l_email" onblur="checkEmail()"/></td>
              </tr>
              <tr id="emailTips">
              	<td></td>
              	<td class="tips">邮箱不能为空</td>
              </tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;手机 &nbsp;</td>
                <td><input name="mobile" type="text" class="l_tel" onblur="checkMobile()"/></td>
              </tr>
              <tr id="mobileTips">
              	<td></td>
              	<td class="tips">手机号码不合法</td>
              </tr>
              <tr height="50">
                <td align="right">邀请人会员名 &nbsp;</td>
                <td><input type="text" name="inviteName" class="l_mem" /></td>
              </tr>
              <tr height="50">
                <td align="right">邀请人ID号 &nbsp;</td>
                <td><input type="text" name="inviteId" class="l_num" /></td>
              </tr>
              <tr height="50">
                <td align="right"> <font color="#ff4e00">*</font>&nbsp;验证码 &nbsp;</td>
                <td>
                    <input type="text" value="" class="l_ipt" />
                    <a href="#" style="font-size:12px; font-family:'宋体';">换一张</a>
                </td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" name="isAgree" value="true" /></label><label class="r_txt">我已阅读并接受《用户协议》</label>
                    </span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input type="button" value="立即注册" class="log_btn" onclick="regist()"/></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
		<div class="btm">
        	备案/许可证编号：京ICP备070360号   Copyright © 2016-2019 购物街 All Rights Reserved. 复制必究 , Technical Support: ICT Group <br />
            <img src="images/b_1.gif" width="98" height="33" /><img src="images/b_2.gif" width="98" height="33" /><img src="images/b_3.gif" width="98" height="33" /><img src="images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="images/b_6.gif" width="98" height="33" />
        </div>   	
</div>
<!--End Footer End -->    

</body>


<!--[if IE 6]>
<script src="//letskillie6.googlecode.com/svn/trunk/2/zh_CN.js"></script>
<![endif]-->
</html>