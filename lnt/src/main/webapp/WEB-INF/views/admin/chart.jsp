<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
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
	
	google.charts.setOnLoadCallback(numGraph3);
	google.charts.setOnLoadCallback(numGraph4);
	google.charts.setOnLoadCallback(drawChart1);
	google.charts.setOnLoadCallback(drawChart2);
	google.charts.setOnLoadCallback(drawChart4);
	google.charts.setOnLoadCallback(drawChart5);
	google.charts.setOnLoadCallback(drawChart6);
	google.charts.setOnLoadCallback(drawChart7);
	google.charts.setOnLoadCallback(drawChart8);
	google.charts.setOnLoadCallback(drawChart9);
	google.charts.setOnLoadCallback(drawChart10);



	
	// google.charts.load('current', {'packages':['table']});
   //  google.charts.setOnLoadCallback(drawTable)
     
	


	function numGraph3(){
	  var data = new google.visualization.DataTable();
	  data.addColumn('string','정당');
	  data.addColumn('number','의석수');
	  <c:forEach items="${ageList}" var="ageList">
	  data.addRows([
		['${ageList.ans14} : ${ageList.age}명 ',${ageList.age}],
		]);
	  </c:forEach>
	  var options = {title:'연령대',width:'100%',height:500, is3D: true};
      var chart = new google.visualization.PieChart(document.getElementById('numGraph3_div'));
	  chart.draw(data,options);
	  window.addEventListener('resize',numGraph3,false);

	} //function 종료
	
	
	function numGraph4(){
		  var data = new google.visualization.DataTable();
		  data.addColumn('string','');
		  data.addColumn('number','');
		  <c:forEach items="${areaList}" var="areaList">
		  data.addRows([
			['${areaList.ans16} : ${areaList.area}명 ',${areaList.area}],
			]);
		  </c:forEach>
		  var options = {title:'지역별',width:'100%',height:500,legend:'none'};
	      var barchart = new google.visualization.BarChart(document.getElementById('numGraph4_div'));
		  barchart.draw(data,options);
		 // window.addEventListener('resize',numGraph3,false);

		} //function 종료
		
		
	 function drawChart1() {
		  
		      var data = google.visualization.arrayToDataTable([
		    	  ["", "", { role: "style" } ],
				
		    	  <c:forEach items="${item1}" var="item1">
	
		          ["${item1.ans1_r}", ${item1.counter}, "gold"],
		    	  </c:forEach>
		    	  
		      ]);

		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var chart = new google.visualization.ColumnChart(document.getElementById("chart1"));
		      chart.draw(view);
	
		      
	   }
		
	 function drawChart2() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item2}" var="item2">

	          ["${item2.ans2_r}", ${item2.counter}, "silver"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart2"));
	      chart.draw(view);

	      
 	 }
	 
	 function drawChart4() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item4}" var="item4">

	          ["${item4.ans3_r}", ${item4.counter}, "#70c5c0"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart4"));
	      chart.draw(view);

	      
	 }
	 
	 function drawChart5() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item5}" var="item5">

	          ["${item5.ans4_r}", ${item5.counter}, "#f6c23e"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart5"));
	      chart.draw(view);

	      
 	}
	 
	 function drawChart6() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item6}" var="item6">

	          ["${item6.ans5_r}", ${item6.counter}, "#4e73df"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart6"));
	      chart.draw(view);

	      
		}
	 
	 
	 function drawChart7() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item7}" var="item7">

	          ["${item7.ans6_r}", ${item7.counter}, "#1cc88a"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart7"));
	      chart.draw(view);

	      
		}
	 
	 
	 function drawChart8() {
		  
	      var data = google.visualization.arrayToDataTable([
	    	  ["", "", { role: "style" } ],
			
	    	  <c:forEach items="${item8}" var="item8">

	          ["${item8.ans7_1_y}", ${item8.counter}, "#1cc88a"],
	    	  </c:forEach>
	    	  
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var chart = new google.visualization.ColumnChart(document.getElementById("chart8"));
	      chart.draw(view);

	      
		}

	

      function drawChart9() {
        var data = google.visualization.arrayToDataTable([
        	 ['Task', 'Hours per Day'],
        	 <c:forEach items="${item9}" var="item9">
        	  ['${item9.ans7_5_y}', ${item9.counter}],
        	 </c:forEach>

        ]);

        var options = {
          title: '',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart9'));
        chart.draw(data, options);
      }
      
      
      function drawChart10() {
          var data = google.visualization.arrayToDataTable([
          	 ['Task', 'Hours per Day'],
          	 <c:forEach items="${item10}" var="item10">
          	  ['${item10.ans7_8_y}', ${item10.counter}],
          	 </c:forEach>

          ]);

          var options = {
            title: '',
            pieHole: 0.4,
          };

          var chart = new google.visualization.PieChart(document.getElementById('chart10'));
          chart.draw(data, options);
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
	                	<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑을 하시는 캠퍼라면 어떤 형태의 캠핑을 하시나요? </h6>
                                </div>
	             				   <div id="chart1" class="table"></div>
	             		   </div>
	             		</div>  
	             		
	             		<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑은 어디로 다니시나요? </h6>
                                </div>
	             				   <div id="chart2" class="table"></div>
	             		   </div>
	             		</div>   	 		   
	                </div>
	                
	                 <div class="row">
	                	<div class="col-xl-12 col-lg-12">
                            <div class="card shadow mb-4">
                           	   <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">설문에 담긴 의견(online)</h6>
                                </div>
                                <ul class="nav nav-tabs">
										  <li class="nav-item">
										    <a class="nav-link active" data-toggle="tab" href="#online3">캠핑중 불편한 점은? </a>
										  </li>
										  <li class="nav-item">
										    <a class="nav-link" data-toggle="tab" href="#online4">캠핑중 쓰레기 배출 시 불편했던 점은?</a>
										  </li>
										   <li class="nav-item">
										    <a class="nav-link" data-toggle="tab" href="#online5">캠핑중 쓰레기 배출 시 편했던 점은?</a>
										  </li>
										   <li class="nav-item">
										    <a class="nav-link" data-toggle="tab" href="#online6">클린캠핑이 잘 이루어 지려면?</a>
										  </li>
								</ul>
                                					<div class="tab-content">
										  <div class="tab-pane fade show active" id="online3">
										   <table class="table table-hover table-sm">
										   	<tr class="table-info">
										   		<th style="width:75%">캠핑중 불편한 점은?</th>
										   		<th style="width:25%">의견 주신분 이름/연락처</th>
										   	</tr>
										 	
										  	<c:forEach items="${item3}" var="item3">
										  	 	<tr >
										  	 		<td>${item3.ans7_3_y}</td>
										  	 		<td>${item3.username}/${item3.userphone}</td>
										  	 	</tr>
										  	</c:forEach>
										  </table>
										  </div>
										  
										  <!-- online4 -->
										  <div class="tab-pane fade show" id="online4">
											<table class="table table-hover table-sm">
											   	<tr  class="table-info">
											   		<th style="width:75%">캠핑중 쓰레기 배출 시 불편했던 점은?</th>
											   		<th style="width:25%">의견 주신분 이름/연락처</th>
											   	</tr>
											 	
											  	<c:forEach items="${item3}" var="item3">
											  	 	<tr>
											  	 		<td>${item3.ans7_6_y}</td>
											  	 		<td>${item3.username}/${item3.userphone}</td>
											  	 	</tr>
											  	</c:forEach>
											  </table>
										  </div>
										  
										    <!-- online5 -->
										  <div class="tab-pane fade show" id="online5">
											<table class="table table-hover table-sm">
											   	<tr class="table-info">
											   		<th style="width:75%">캠핑중 쓰레기 배출 시 편했던 점은?</th>
											   		<th style="width:25%">의견 주신분 이름/연락처</th>
											   	</tr>
											 	
											  	<c:forEach items="${item3}" var="item3">
											  	 	<tr>
											  	 		<td>${item3.ans7_7_y}</td>
											  	 		<td>${item3.username}/${item3.userphone}</td>
											  	 	</tr>
											  	</c:forEach>
											  </table>
										  </div>
										  
										    <!-- online6 -->
										  <div class="tab-pane fade show" id="online6">
											<table class="table table-hover table-sm">
											   	<tr class="table-info">
											   		<th style="width:75%">클린캠핑이 잘 이루어 지려면?</th>
											   		<th style="width:25%">의견 주신분 이름/연락처</th>
											   	</tr>
											 	
											  	<c:forEach items="${item3}" var="item3">
											  	 	<tr>
											  	 		<td>${item3.ans7_9_y}</td>
											  	 		<td>${item3.username}/${item3.userphone}</td>
											  	 	</tr>
											  	</c:forEach>
											  </table>
										  </div>
								</div>
                            </div>
						</div>	
                        </div>
                        
                 <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 앞으로 해보고 싶은 캠핑 무엇인가요? </h6>
                                </div>
	             				   <div id="chart4" class="table"></div>
	             		   </div>
	             		</div>  
	             		
	             		<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 선호하시는 캠핑장소의 선택 기준은 무엇인가요? </h6>
                                </div>
	             				   <div id="chart5" class="table"></div>
	             		   </div>
	             		</div>   	 		   
	                </div>
	                
	                 <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑은 누구랑 동행 하시나요? </h6>
                                </div>
	             				   <div id="chart6" class="table"></div>
	             		   </div>
	             		</div>  
	             		
	             		<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑을 가시는 목적은 무엇인가요? </h6>
                                </div>
	             				   <div id="chart7" class="table"></div>
	             		   </div>
	             		</div>   	 		   
	                </div>
	                
	                  <div class="row">
	                	<div class="col-xl-12 col-lg-12 col-md-12">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 제주도에서 캠핑을 즐기신 장소는 어디인가요?</h6>
                                </div>
	             				   <div id="chart8" class="table"></div>
	             		   </div>
	             		</div>  	 		   
	                </div>
	                
	                <div class="row">
	                	<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 캠핑장소에 쓰레기 배출을 하기에는 어떠한지?</h6>
                                </div>
	             				   <div id="chart9" class="table"></div>
	             		   </div>
	             		</div>  	 	
	             		
	             		<div class="col-xl-6 col-lg-6 col-md-6">
                            <div class="card shadow mb-4">
                           		 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Q. 클린하우스에 대해서 알고 있는지?</h6>
                                </div>
	             				   <div id="chart10" class="table"></div>
	             		   </div>
	             		</div>  	 		   
	                </div>
	          

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">설문조사(지역별)</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    
                                       <ul class="nav nav-tabs">
										  <li class="nav-item">
										    <a class="nav-link active" data-toggle="tab" href="#online1">캠핑문화형성(online)</a>
										  </li>
										  <li class="nav-item">
										    <a class="nav-link" data-toggle="tab" href="#offline1">캠핑문화형성(현장)</a>
										  </li>
										</ul>
										<div class="tab-content">
										  <div class="tab-pane fade show active" id="online1">
										     <div id="numGraph4_div" ></div>
										  </div>
										  <div class="tab-pane fade" id="offline1">
										     <p style="width:100%;height:500px">준비중.</p>
										  </div>
										
										</div>
                                </div>
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-6 col-lg-6">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div
                                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">설문조사(연령대)</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
										<ul class="nav nav-tabs">
											  <li class="nav-item">
											    <a class="nav-link active" data-toggle="tab" href="#online2">캠핑문화형성(online)</a>
											  </li>
											  <li class="nav-item">
											    <a class="nav-link" data-toggle="tab" href="#offline2">캠핑문화형성(현장)</a>
											  </li>
											</ul>
											<div class="tab-content">
											  <div class="tab-pane fade show active" id="online2">
											     <div id="numGraph3_div" ></div>
											  </div>
											  <div class="tab-pane fade" id="offline2">
											    <p style="width:100%;height:500px">준비중..</p>
											  </div>
											
											</div>
                    
          
                          	  </div>
                        </div>
                    </div>

                    <!-- Content Row -->

                </div>
                <!-- /.container-fluid -->

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