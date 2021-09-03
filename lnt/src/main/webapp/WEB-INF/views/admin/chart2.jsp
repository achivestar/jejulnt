<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>     
<c:if test="${msg == false}">
	<script>
		 alert("관리자 전용 페이지 입니다.");
		 location.href="/";
	</script>
</c:if>  
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Leave No Trace | 흔적을 남기지 말아요</title>
    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/admin/css/sb-admin-2.css" rel="stylesheet">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current',{'packages' : ['corechart']});
	
	google.charts.setOnLoadCallback(drawChart11);
	google.charts.setOnLoadCallback(drawChart12);
	google.charts.setOnLoadCallback(drawChart13);
	google.charts.setOnLoadCallback(drawChart14);
	google.charts.setOnLoadCallback(drawChart15);
	google.charts.setOnLoadCallback(drawChart16);
	google.charts.setOnLoadCallback(drawChart17);
	google.charts.setOnLoadCallback(drawChart18);
	google.charts.setOnLoadCallback(drawChart19);
	google.charts.setOnLoadCallback(drawChart20);
	google.charts.setOnLoadCallback(drawChart21);
	google.charts.setOnLoadCallback(drawChart22);
	google.charts.setOnLoadCallback(drawChart23);
	google.charts.setOnLoadCallback(drawChart24);
	google.charts.setOnLoadCallback(drawChart25);

	 function drawChart11() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item11}" var="item11">

	          ["${item11.ans5}", ${item11.count}, "#1cc88a"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart11"));
	      chart.draw(view);

	      
		}

	 
	 
	 function drawChart12() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item12}" var="item12">

	          ["${item12.ans6}", ${item12.count}, "#5b877d"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart12"));
	      chart.draw(view);
		}
	 
	 
	 function drawChart13() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item13}" var="item13">

	          ["${item13.ans7}", ${item13.count}, "#acc74c"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart13"));
	      chart.draw(view);
		}
	 
	 
	 function drawChart14() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item14}" var="item14">

	          ["${item14.ans8}", ${item14.count}, "#3626e0"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart14"));
	      chart.draw(view);
		}
	 
	 
	 function drawChart15() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item15}" var="item15">

	          ["${item15.ans9}", ${item15.count}, "#5c2c61"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart15"));
	      chart.draw(view);
		}
	 
	 
	 function drawChart16() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item16}" var="item16">

	          ["${item16.ans16}", ${item16.count}, "#a6164a"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart16"));
	      chart.draw(view);
		}
	 
	 
	 function drawChart17() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item17}" var="item17">

	          ["${item17.ans17}", ${item17.count}, "#ffce2b"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart17"));
	      chart.draw(view);
		}
	 
	 
	 
	 function drawChart18() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item18}" var="item18">

	          ["${item18.ans18}", ${item18.count}, "#ff0015"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart18"));
	      chart.draw(view);
		}
	 
	 
	 
	  function drawChart19() {
          var data = google.visualization.arrayToDataTable([
          	 ['Task', 'Hours per Day'],
          	 <c:forEach items="${item19}" var="item19">
          	  ['${item19.ans19}', ${item19.count}],
          	 </c:forEach>

          ]);

          var options = {
            title: '',
            pieHole: 0.2,
          };

          var chart = new google.visualization.PieChart(document.getElementById('chart19'));
          chart.draw(data, options);
        }
	  
	  
	  function drawChart20() {
          var data = google.visualization.arrayToDataTable([
          	 ['Task', 'Hours per Day'],
          	 <c:forEach items="${item20}" var="item20">
          	  ['${item20.ans20}', ${item20.count}],
          	 </c:forEach>

          ]);

          var options = {
            title: '',
            pieHole: 0.2,
          };

          var chart = new google.visualization.PieChart(document.getElementById('chart20'));
          chart.draw(data, options);
        }
	  
	  function drawChart21() {
          var data = google.visualization.arrayToDataTable([
          	 ['Task', 'Hours per Day'],
          	 <c:forEach items="${item21}" var="item21">
          	  ['${item21.ans21}', ${item21.count}],
          	 </c:forEach>

          ]);

          var options = {
            title: '',
            pieHole: 0.2,
          };

          var chart = new google.visualization.PieChart(document.getElementById('chart21'));
          chart.draw(data, options);
        }
	  
	  
	  function drawChart22() {
          var data = google.visualization.arrayToDataTable([
          	 ['Task', 'Hours per Day'],
          	 <c:forEach items="${item22}" var="item22">
          	  ['${item22.ans22}', ${item22.count}],
          	 </c:forEach>

          ]);

          var options = {
            title: '',
            pieHole: 0.2,
          };

          var chart = new google.visualization.PieChart(document.getElementById('chart22'));
          chart.draw(data, options);
        }
	  
	  
 function drawChart23() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item23}" var="item23">

	          ["${item23.ans10}", ${item23.count}, "#acc74c"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart23"));
	      chart.draw(view);
		}
	 
 
 function drawChart24() {
	  
     var data = google.visualization.arrayToDataTable([
   	  ["", "", { role: "style" } ],
		
   	  <c:forEach items="${item24}" var="item24">

         ["${item24.ans11}", ${item24.count}, "steelblue"],
   	  </c:forEach>
   	  
     ]);

     var view = new google.visualization.DataView(data);
     view.setColumns([0, 1,
                      { calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation" },
                      2]);

     var chart = new google.visualization.ColumnChart(document.getElementById("chart24"));
     chart.draw(view);
	}

 
 
 function drawChart25() {
	  
     var data = google.visualization.arrayToDataTable([
   	  ["", "", { role: "style" } ],
		
   	  <c:forEach items="${item25}" var="item25">

         ["${item25.ans26}", ${item25.count}, "steelblue"],
   	  </c:forEach>
   	  
     ]);

     var view = new google.visualization.DataView(data);
     view.setColumns([0, 1,
                      { calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation" },
                      2]);

     var chart = new google.visualization.ColumnChart(document.getElementById("chart25"));
     chart.draw(view);
	}

</script>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">
		
        <!-- Sidebar -->
			<%@ include file="/resources/admin/include/menu.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                  
                       

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                           
                              <a class="dropdown-item" href="./logoutProcess">
                             <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>

                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                              <a class="dropdown-item" href="./logoutProcess">
                                     <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                	<%@ include file="/resources/admin/include/topInfo.jsp" %>
	                <div class="row">
		                <div class="col-xl-12 col-lg-12 col-md-12">
		                	<table class="table">
		                		<thead class="text-center table-primary" >
			                		<tr>
										<td>no</td>
										<td>이름</td>
										<td>연락처</td>
										<td>설문장소</td>
										<td>개인정보‧초상권 사용 동의</td>
										<td>설문일</td>
										<td>설문보기</td>
									</tr>	
		                		</thead>
								<tbody  class="text-center">
									 <c:forEach items="${list}" var="list" varStatus="status">
									 <c:set var="TextValue" value="${list.regdate}"/>
										<tr>
											<td>${status.count}</td>
											<td>${list.name }</td>
											<td>${list.phone }</td>
											<td>${list.ans5 }</td>
											<td>${list.ans29 }</td>
											<td>${fn:substring(TextValue,0,11)}</td>
											<td><a href="${pageContext.request.contextPath}/admin/chart2Detail?idx=${list.idx}">보기</a></td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
		   		   				 <br>
                                <br>
                                
                                <ul class="pagination pagination-sm justify-content-center">
								         <c:if test="${prev}">
											<li class="page-item"><a class="page-link"  href="./chart2?pnum=${startPageNum - 1}">Previous</a></li>
											</c:if>
							        	  <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pnum">
							        	  	<c:if test="${select != pnum}">
											  <li class="page-item" style="cursor:pointer"><a href="./chart2?pnum=${pnum }" class="page-link"  >${pnum }</a></li>
											</c:if>
											 <c:if test="${select == pnum}">
											 	<li class="page-item active" style="cursor:pointer"><a href="./chart2?pnum=${pnum }" class="page-link"  >${pnum }</a></li>
											 </c:if>  
										 </c:forEach>
										 <c:if test="${next}">
										  <li class="page-item"><a  class="page-link" href="./chart2?num=${endPageNum + 1}">Next</a></li>
										</c:if>
									</ul>				
		                </div>
	                </div> 
	                
	                <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 귀하께서 평소 즐기시는 캠핑장소는 어디인가요?</h6>
                             </div>
	             			<div id="chart11" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q.  평소 어떤 캠핑 스타일을 즐기시나요?</h6>
                             </div>
	             			<div id="chart12" class="table"></div>
	                	</div>
	                	
	                </div>         
	                
	                
	                 <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑일정은 어떻게 정하시나요?</h6>
                             </div>
	             			<div id="chart13" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑장소를 선택하시는 기준은 무엇인가요?</h6>
                             </div>
	             			<div id="chart14" class="table"></div>
	                	</div>
	                	
	                </div>        
	                
	                
	                  <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑장소는 누구랑 동행하시나요?</h6>
                             </div>
	             			<div id="chart15" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑을 즐기시며 드시는 음식스타일은 무엇인가요?</h6>
                             </div>
	             			<div id="chart16" class="table"></div>
	                	</div>
	                </div>         
	                
	                
	                 <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑을 즐기시면서 주로 나오는 쓰레기는 무엇인가요?</h6>
                             </div>
	             			<div id="chart17" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑을 즐기시면서 발생한 쓰레기는 어떻게 처리하시나요?</h6>
                             </div>
	             			<div id="chart18" class="table"></div>
	                	</div>
	                </div>         
	                
	                
	                <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주에서 캠핑을 즐겨보신 장소에 쓰레기 배출 하기에 어떠하셨나요?</h6>
                             </div>
	             			<div id="chart19" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. "제주도클린하우스"와 "종류에 따라 요일제, 정해진 시간배출" 에 대하여 알고 계신가요?</h6>
                             </div>
	             			<div id="chart20" class="table"></div>
	                	</div>
	                </div>
	                
	                
	                 <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 평소 즐기시는 캠핑 장소의 클린하우스가 있는 위치를 아시나요?</h6>
                             </div>
	             			<div id="chart21" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주에서 캠핑을 즐기신다면 불멍(화롯대,모닥불)를 사용 하신적이 있으신가요?</h6>
                             </div>
	             			<div id="chart22" class="table"></div>
	                	</div>
	                </div>            
	                
	                   <div class="row">
	                	<div class="col-xl-12 col-lg-12 col-md-12">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주에서 클린캠핑이 이루어지려면 무엇이 필요하다고 생각하십니까?
</h6>
                             </div>
	             			<div id="chart25" class="table"></div>
	                	</div>

	                </div>                  
	                
	                
	                
	                <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주도 내 캠핑장의 편의 시설을 평가 한다면 몇점을 주시겠습니까?</h6>
                             </div>
	             			<div id="chart23" class="table"></div>
	                	</div>
	                	
	                	<div class="col-xl-6 col-lg-6 col-md-6">
	                		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주도 내 캠핑장의 자연환경을 평가한다면 몇점을 주시겠습니까?</h6>
                             </div>
	             			<div id="chart24" class="table"></div>
	                	</div>
	                	
	                </div>        
	                 
				</div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>