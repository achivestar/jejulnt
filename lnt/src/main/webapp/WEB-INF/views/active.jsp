<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>            
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave No Trace | 흔적을 남기지 말아요</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/pagination.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/css/cards-gallery.css" rel="stylesheet" />
         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
</head>
<body>
         <!-- Navigation-->
         <%@ include file="/resources/include/nav.jsp" %>
        <section class="gallery-block cards-gallery">
            <div class="container">
                <div class="heading">
                  <h2 style="color:#fff">Our Active</h2>
                </div>
                <br>
                <div class="row" style="position:relative">
                	<c:forEach items="${list}" var="list">
                	<c:set var="TextValue" value="${list.regdate}"/>
                    <div class="col-sm-6 col-md-6 col-lg-4 ">
                        <div class="card border-0 transform-on-hover ">
                            <a class="lightbox" href="activeDetail?idx=${list.idx }&num=${list.idx}">
                                <img src="${pageContext.request.contextPath}/resources/thumb/${list.saveFileName }" alt="Card Image" class="card-img-top">
                            </a>
                            <div class="card-body">
                                <h6 class="p-1"><a href="activeDetail?idx=${list.idx }&num=${list.idx}">${list.subject }</a></h6>
                                <p class="text-muted card-text p-2 text-left" style="border-top:1px solid #19b9a7">
                                	 <i class="fas fa-user-edit" style="vertical-align:middle;color:#19b9a7"></i> ${list.writer}<br>
                                	  <i class="fas fas fa-clock" style="vertical-align:middle;color:#19b9a7"></i> ${fn:substring(TextValue,0,10)}
                       
                                </p>
                            </div>
                        </div>
                       </div> 
                   </c:forEach> 
            	 
                   
              </div>
         </div>
              
                <div class="pagination-wrapper">
                    <div class="pagination">
                      <c:if test="${prev}">
						<a class="prev page-numbers" href="./active?pnum=${startPageNum - 1}">prev</a>
					 </c:if>
	                   <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pnum">

	                     <c:if test="${select != pnum}">
	                      <a class="page-numbers" href="./active?pnum=${pnum }">${pnum }</a>
	                     </c:if>
	                     <c:if test="${select == pnum}">
	                     	<span aria-current="page" class="page-numbers current">${pnum }</span>
	                     </c:if>
	                  </c:forEach>
	                  <c:if test="${next}">
	                      <a class="next page-numbers" href="./active?pnum=${endPageNum + 1}">next</a>
					</c:if>
                    </div>
                </div>

           
        </section>
       
       <%@ include file="/resources/include/footer.jsp" %>
        <!-- Bootstrap core JS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>-->
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
        <script>
            baguetteBox.run('.cards-gallery', { animation: 'slideIn'});
        </script> -->
    </body>
</html>