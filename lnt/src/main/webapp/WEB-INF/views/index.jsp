<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave No Trace | 흔적을 남기지 말아요</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Leave No Trace</title>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
</head>
<body>
          <!-- Navigation-->
        <%@ include file="/resources/include/nav.jsp" %>
      
        <section class="page-section clearfix">
            <div class="container">
                <div class="intro  p-3">
                    <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="${pageContext.request.contextPath}/resources/assets/img/2.jpg"  /> 
                   <input type="hidden" name="index" value="index" />
                   
                     <div class="intro-text left-0 text-center bg-faded p-5 rounded" style="display: flex;align-items: center;">
                        <h2 class="section-heading mb-4">
                            <span class="section-heading-upper"></span>
                        </h2>
                        <!-- <p class="mb-3">자연 환경을 보호하기 위한 운동으로 자연을 방문할 때 '흔적 안 남기기' 지침을 의미한다. 이 지침은 장소와 상황에 관계없이 모든 야외 활동에 적용시켜야 하는 필수 원칙이다.</p> -->
                        <p class="mb-3" style="line-height:2.2">
                        제주소통협력센터의 제주생활탐구라는 프로젝트의 일환으로
캠핑 인구 1000만 시대에 제주도에서의 올바른 캠핑 문화 형성을
위한 커뮤니티 공간 입니다. <br>
올바른 캠핑 문화 형성으로 자연과 함께 지속가능 한<br> 캠핑문화를 형성하고자 합니다.<br>
<span style="color:#28a10f;font-weight:bold">제주도를 생각하는 마음!</span><br>
<span style="color:#28a10f;font-weight:bold">환경을 지키는 작은 실천 어렵지 않아요!</span>
                        </p>
                        <!-- <div class="intro-button mx-auto"><a class="btn btn-primary btn-xl" href="#!" style="color:#fff;font-size:14px">dd</a></div> -->
                    </div>
                </div>
            </div>
        </section>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-md-8 mx-auto mb-4">
                      <div class="cta-inner  rounded">
                          <h2 class="section-heading mb-4">
                              <!-- <span class="section-heading-upper">Notice</span> -->
                              <span class="section-heading-lower text-center">"흔적을 남기지 말아요"</span> 
                          </h2>
                          <p class="mb-0 text-left">
                          <%-- <img class="img-fluid mb-3 mb-lg-0 rounded " src="${pageContext.request.contextPath}/resources/img/lnt.jpg" style=""/>  --%>
                            "LNT (Leave No Trace)" 의 의미를 아시나요?<br> 
                            'Leave No Trace' 의 첫 글자를 딴 것으로 <span style="color:red">'흔적 남기지 않기' </span>라는 의미 입니다.<br>
                             장소나 상황에 관계없이 모든 야외 활동에서 사람이, 자연에 미치는 영향을 최소화 하기 위해 지켜야 하는 
                             지침 이에요.
                            <br>
                            흔적을 남기지 않기 위해 지켜야 하는 지침으로는 다음  7가지가 있습니다.
    
                            <ul class="list-group list-group-flush mt-3">
                              <li class="list-group-item list-group-item-light"  style="color:green">① 미리 충분히 준비하고 계획</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">② 지정된 지역 만을 걷고 캠핑</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">③ 배설물이나 쓰레기는 올바른 방법으로 처리</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">④ 있는 그대로 보존하기</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">⑤ 모닥불은 최소화하기</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">⑥ 야생 동식물을 존중하기</li>
                              <li class="list-group-item list-group-item-light"  style="color:green">⑦ 타인을 배려하기</li>
                            </ul>
                          </p> 
                           
                          <div class="intro-button mx-auto text-center mt-2"><a class="btn btn-primary btn-lg" href="/about">자세히 보기</a>
                          </div>
                      </div>
                  </div>
                    <div class="col-xl-6 mx-auto mt-4">
                        <div class="cta-inner text-center rounded">
                            <h2 class="section-heading mb-4">
                                <!-- <span class="section-heading-upper">Notice</span> -->
                                <!-- <span class="section-heading-lower">to protect the environment</span> -->
                                <span class="badge badge-pill badge-success"><a href="./notice"  style="color:#fff">Notice</a></span>
                            </h2>
                            <p class="mb-0">
                             <ul  class="list-group">
                              <c:forEach items="${noticeList}" var="noticeList">
                              	<li class="list-group-item text-left"><span class="badge badge-success">공지</span>&nbsp;<a href="./noticeDetail?idx=${noticeList.idx }">${noticeList.subject }</a></li>
                              </c:forEach>
                              </ul>
                            </p>
                        </div>
                    </div>
                    <div class="col-xl-6 mx-auto mt-4">
                        <div class="cta-inner text-center rounded">
                            <h2 class="section-heading mb-4">
                                <!-- <span class="section-heading-upper">Notice</span> -->
                                <!-- <span class="section-heading-lower">to protect the environment</span> -->
                                <span class="badge badge-pill badge-info"><a href="./active"  style="color:#fff">Active</a></span>
                            </h2>
                            <p class="mb-0">
                                <div class="card-columns">
                                 <c:forEach items="${activeList}" var="activeList">
                                    <div class="card bg-light"><a href="./activeDetail?idx=${activeList.idx }">
                                      <img class="card-img-top" src="${pageContext.request.contextPath}/resources/thumb/${activeList.saveFileName}" alt="Card image"></a>
                                      <div class="card-body text-center">
                                        <p class="card-text">${activeList.subject }</p>
                                      </div>
                                    </div>
							    </c:forEach>
                                  </div>

                            </p>
                        </div>
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