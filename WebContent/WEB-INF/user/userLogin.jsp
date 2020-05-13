<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>会员登录</title>

<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet" type="text/css"/>

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
<div class="container login">
<div class="span12">
<div class="ad">
					<img src="${pageContext.request.contextPath}/image/dinosaur.jpg" width="500" height="330" alt="会员登录" title="会员登录" />
</div>		</div>
		<div class="span12 last">
			<div class="wrap">
				<div class="main">
					<div class="title">
						<strong>会员登录</strong>USER LOGIN 
					</div>
					<form id="loginForm"  method="post" novalidate="novalidate" action="${pageContext.request.contextPath}/shop/userLoginPost">
						<table>
							<tbody><tr>
							    <span style="margin-left: 20px;">${msg}</span>
								<th>
									用户名/E-mail:
								</th>
								<td>
									<input type="text" id="uUsername" name="uUsername" class="text" maxlength="20" />
									
								</td>
							</tr>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="password" id="uPassword" name="uPassword" class="text" maxlength="20" autocomplete="off" />
								</td>
							</tr>
								
							
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录" />
								</td>
							</tr>
							<tr class="register">
								<th>&nbsp;
									
								</th>
								<td>
									<dl>
										<dt>还没有注册账号？</dt>
										<dd>
											立即注册即可体验在线购物！
											<a href="${pageContext.request.contextPath}/user/userRegisterGet">立即注册</a>
										</dd>
									</dl>
								</td>
							</tr>
						</tbody></table>
					</form>
				</div>
			</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<div class="copyright">【xie】宠物商城 </div>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/libs/common.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/views/productType.js"></script>
</body>
</html>