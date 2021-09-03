<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="./">Leave No Trace <br>
                <span style="font-size:12px">올바른 캠핑 문화를 형성해요</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item <%if(request.getRequestURI().equals("/WEB-INF/views/index.jsp")){%>active<%}%> px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="./">
                                Welcome
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  <%if(request.getRequestURI().equals("/WEB-INF/views/about.jsp")){%>active<%}%> px-lg-4"><a class="nav-link text-uppercase text-expanded" href="./about">About</a></li>
                        <li class="nav-item <%if(request.getRequestURI().equals("/WEB-INF/views/active.jsp")  || request.getRequestURI().equals("/WEB-INF/views/activeDetail.jsp")){%>active<%}%> px-lg-4"><a class="nav-link text-uppercase text-expanded" href="./active">Active</a></li>
                        <li class="nav-item <%if(request.getRequestURI().equals("/WEB-INF/views/notice.jsp") || request.getRequestURI().equals("/WEB-INF/views/noticeDetail.jsp")){%>active<%}%> px-lg-4"><a class="nav-link text-uppercase text-expanded" href="./notice">Notice</a></li>
                        <c:if test="${member == null}">
                        <li class="nav-item  <%if(request.getRequestURI().equals("/WEB-INF/views/login.jsp")  || request.getRequestURI().equals("/WEB-INF/views/memberAgree.jsp") || request.getRequestURI().equals("/WEB-INF/views/memberRegist.jsp") || request.getRequestURI().equals("/WEB-INF/views/emailAuth.jsp")){%>active<%}%> px-lg-4"><a class="nav-link text-uppercase text-expanded" href="./login">Login</a></li>
                  		</c:if>
                  		<c:if test="${member != null}">
                  		<li class="nav-item px-lg-4"><a class="nav-link text-uppercase text-expanded" href="./logout">Logout</a></li>
                  		</c:if>
                    </ul>
                </div>
            </div>
        </nav>
        <h1 class="site-heading text-center text-white d-none d-lg-block">
            <!-- <span class="site-heading-upper mb-3" style="color:#e6a756">흔적 남기기 않기</span> -->
           <span style="font-size:20px;vertical-align:top"> <i class="fas fa-quote-left"></i></span>&nbsp;<span style="font-size:30px">흔적을 남기지 말아주세요</span><span style="font-size:20px;vertical-align:top">&nbsp;<i class="fas fa-quote-right"></i></span><br><br>
            <span class="site-heading-lower" style="color:#fff;font-weight: 500;">Leave No Trace <br>
            <span style="font-size:18px">올바른 캠핑 문화를 형성해요</span></span> 
        </h1>
