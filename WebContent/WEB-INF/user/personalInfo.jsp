<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人中心</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/leftMune.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/jquery.min.js"></script>

</head>
<body>
<div class="span11">
		<div class="cart">
			<a  href="${pageContext.request.contextPath}/sorder/gotocar">购物车</a>
		</div>
		<!--  <div class="phone">
			电话热线:
			<strong>158****0856</strong>
		</div>
		<div class="weixin">
				<img src="${pageContext.request.contextPath}/image/trimImg/wxBZ.png" alt="微信图标" class="weixin-icon"/>
				微信服务:
				<strong id="yc" style="cursor:pointer;">点击扫码加微信</strong>
			    <img id="ewm" style="display:none;" src="${pageContext.request.contextPath}/image/trimImg/myEWM.png" alt="微信图标" class="weixin-ewm"/>
		</div>-->
</div>
<div class="container header">
	<div class="span5">
		<div class="logo">
				<img id="logoPic" src="${pageContext.request.contextPath}/image/logo.png" style="display: block;" alt="宠物商城" width="200" height="50"/>
		</div>
	</div>
	<div class="span9">
<div class="headerAd" style="text-align: center ;margin-top: 10px">
	<h1>dinosaur mall</h1>
</div>	</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>
				<c:if test="${sessionScope.frontuser==null}">
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/shop/userLoginGet">登录</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/user/userRegisterGet">注册</a>|
				</li>
				<li id="headerRegister" class="headerRegister" style="display: list-item;">
					<a href="${pageContext.request.contextPath}/admin/login/adminLogin" target="_blank">登录后台</a>|
				</li>
				</c:if>	
				<c:if test="${sessionScope.frontuser!=null}">
					<li id="headerLogin" class="headerLogin" style="display: list-item;">
					    <input id="pd" value="${sessionScope.frontuser}" type="hidden"/>
						<a href="javascript:void()">欢迎:${sessionScope.frontuser}</a>|
					</li>
				</c:if>	
				<li id="headerUsername" class="headerUsername"></li>
				<li id="headerLogout" class="headerLogout">
					<a>[退出]</a>|
				</li>
				<c:if test="${sessionScope.frontuser!=null}">
				<li class="personalInfo">
					<a href="${pageContext.request.contextPath}/user/userPersonalInfo">账户中心</a>
					|
				</li>
				</c:if>
				<c:if test="${sessionScope.frontuser==null}">
				<li class="personalInfo">
					<a href="${pageContext.request.contextPath}/shop/userLoginGet">账户中心</a>
					|
				</li>
				</c:if>
			</ul>
		</div>

	</div>
	<div class="span24">
		<ul class="mainNav" style="background-color: rgb(221, 69, 69);">
			<li>
				<a href="${pageContext.request.contextPath}/shop/index">首页</a>
				|
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/shop/puffingType?type=1">狗类</a>
				|
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/shop/puffingType?type=2">猫类</a>
				|
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/shop/puffingType?type=3">小宠类</a>
				|
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/shop/puffingType?type=6">进口类</a>
				|
			</li>
			<li>
				<a href="${pageContext.request.contextPath}/shop/puffingType?type=4">其他</a>
				|
			</li>
			<li>
				<a  href="${pageContext.request.contextPath}/sorder/gotocar">购物车</a>
				|
			</li>
		</ul>
	</div>
</div>
<div class="container">
    <div style="width: 100%;float: left;">
		    <div style="width: 20%;height:550px;float: left;background-color: #2a3542">
					<table cellSpacing="0" cellPadding="0" width="170" border="0">
					 <tr>
						 <td valign="top" align="middle">
							 <table cellSpacing=0 cellPadding=0 width=150 border=0>
								 <tr height=30>
									  <td style="PaDDING-LEFT: 30px">
									  <a class="menuParent" onclick='expand(1)' href="javascript:void(0);" style="font-size: 23px;color: #fff">账户中心</a>
									  </td>
								 </tr>
							  </table>
							  <table id=child1 style="DISPLaY: block;" cellSpacing=0 cellPadding=0 width=150 border=0>
								 <tr height=40>
									  <td>
									  	<a style="cursor: pointer;font-size: 15px ;color:#aeb2b7;margin-left: 39px;" href="${pageContext.request.contextPath}/user/userInfo" target="right">个人中心</a>
									  </td>
								  </tr>
								  <tr height=40>
									  <td>
									 	 <a style="cursor: pointer;font-size: 15px;color: #aeb2b7;margin-left: 39px" class="menuChild" href="${pageContext.request.contextPath}/user/userGoOrder" target="right">我的订单</a>
									  </td>
								  </tr>
								  <tr height=40>
									  <td>
									  	<a style="cursor: pointer;font-size: 15px;color: #aeb2b7;margin-left: 39px;" class="menuChild" href="${pageContext.request.contextPath}/user/userGoSuccessOrder" target="right">历史订单</a>
									  </td>
								  </tr>
							  </table>
							 <%-- <table cellSpacing=0 cellPadding=0 width=150 border=0>
								 <tr height=22>
									  <td style="PaDDING-LEFT: 30px" >
									  	<a class="menuParent" onclick='expand(2)' href="javascript:void(0);">订单中心</a>
									  </td>
								  </tr>
							  </table>
							 <table id=child2 style="DISPLaY: none" cellSpacing=0 cellPadding=0 width=150 border=0>
								  <tr height=20>
									  <td>
									  	<a style="cursor: pointer;" href="${pageContext.request.contextPath}/user/userIntegral" target="right">我的积分</a>
									  </td>
								  </tr>
								  <tr height=20>
										  <td>
										  	<a class="menuChild" href="${pageContext.request.contextPath}/user/userAccount" target="right">账户余额</a>
										  </td>
								  </tr>
								  <tr height=20>
									  <td>
									  	<a class="menuChild"  target="right">我的评论</a>
									  </td>
								  </tr>
							  </table> --%>
						  </td>
					 </tr>
				</table>
			</div>
		    	<iframe frameborder="1" height="550px" width="80%" scrolling="no" name="right">
		    	</iframe>
	     </div>
</div>
<div class="container footer">
	<div class="span24">
		<div class="copyright">【xie】宠物商城 </div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/views/personalInfo.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/views/productType.js"></script>
</body>
</html>