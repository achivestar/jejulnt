<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       <title>Leave No Trace | 흔적을 남기지 말아요</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/pagination.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/cards-gallery.css" rel="stylesheet" />
</head>
 <body>
        <!-- Navigation-->
       <%@ include file="/resources/include/nav.jsp" %>
        <section class="page-section cta">
            <div class="container">
          	   	<div class="heading">
                    <h2 style="color:#fff" class="text-center">NOTICE</h2>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-xl-9 mx-auto">
                    	
                        <div class="cta-inner text-center rounded">
						
                            <ul class="list-unstyled list-hours mb-5 text-left mx-auto">
                             <c:forEach items="${list}" var="list">
                             	<c:set var="TextValue" value="${list.regdate}"/>
                                <li class="list-unstyled-item list-hours-item d-flex">
                                    <a href="./noticeDetail?idx=${list.idx }"><span class="badge badge-success">공지</span>&nbsp;${ list.subject}</a>
                                    <span class="ml-auto no_txt">${fn:substring(TextValue,0,10)}</span>
                                </li>
                             </c:forEach>      
                            </ul>
                        </div>
                    </div>
                    
                </div>
                  <div class="pagination-wrapper">
                    <div class="pagination">
                      <c:if test="${prev}">
						<a class="prev page-numbers" href="./notice?pnum=${startPageNum - 1}">prev</a>
					 </c:if>
	                   <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pnum">

	                     <c:if test="${select != pnum}">
	                      <a class="page-numbers" href="./notice?pnum=${pnum }">${pnum }</a>
	                     </c:if>
	                     <c:if test="${select == pnum}">
	                     	<span aria-current="page" class="page-numbers current">${pnum }</span>
	                     </c:if>
	                  </c:forEach>
	                  <c:if test="${next}">
	                      <a class="next page-numbers" href="./notice?pnum=${endPageNum + 1}">next</a>
					</c:if>
                    </div>
                </div>
            </div>
        </section>

         <%@ include file="/resources/include/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>