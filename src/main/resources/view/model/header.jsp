<%--
  Created by IntelliJ IDEA.
  User: fsweb
  Date: 17-5-8
  Time: 下午3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="banner banner2">
    <div class="container">
        <div class="headr-right">
            <div class="details">
                <ul>
                    <c:if test="${sessionScope.user != null}">
                        <li><a href="/user/details"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>${sessionScope.user.name}</a></li>
                        <li><a href="/user/logout"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>注销</a></li>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <li><a href="/user/login"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>登陆</a></li>
                        <li><a href="/user/register"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>注册</a></li>
                    </c:if>
                </ul>
            </div>
        </div>
        <div class="banner_head_top">
            <div class="logo">
                <h1><a href="/">Game<span class="glyphicon glyphicon-knight" aria-hidden="true"></span><span>SBEAM</span></a></h1>
            </div>
            <div class="top-menu">
                <div class="content white">
                    <nav class="navbar navbar-default">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <!--/navbar header-->
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li><a href="/">首页</a></li>
                                <li><a href="/library">游戏商城</a></li>
                                <li><a href="/user/library">我的游戏库</a></li>
                                <li><a href="/user/details">我的信息</a></li>
                                <li><a href="/user/recharge">充值</a></li>
                            </ul>
                        </div>
                        <!--/navbar collapse-->
                    </nav>
                    <!--/navbar-->
                </div>
                <div class="clearfix"></div>
                <script type="text/javascript" src="/js/bootstrap-3.1.1.min.js"></script>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
