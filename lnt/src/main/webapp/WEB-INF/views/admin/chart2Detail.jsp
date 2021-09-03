<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
<!DOCTYPE html>
<html lang="ko">     
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

    <!-- Custom fonts for this template -->
    <link href="${pageContext.request.contextPath}/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/admin/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath}/resources/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

	<script src="//cdn.ckeditor.com/4.16.0/full/ckeditor.js"></script>
	
	 <style>
 	 	.displayLoding {
				display:none;
		} 
    </style>
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
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

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
                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">현장설문조사</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body table-responsive-sm">
                        	<table class="table">

                        			<tr class="text-center">
                        				<td class="table-info">이름</td>
                        				<td>${surveyoffvo.name }</td>
                        				<td class="table-info">연령대</td>
                        				<td>${surveyoffvo.age }</td>
                        			</tr>
                        			<tr class="text-center">
                        			    <td class="table-info">성별</td>
                        				<td>${surveyoffvo.gender }</td>
                        				<td class="table-info">연락처</td>               			
                        				<td>${surveyoffvo.phone }</td>	
                        			</tr>
                        			<tr class="text-center">
                        				<td class="table-info">거주지</td>
                        				<td>${surveyoffvo.area }</td>
                        				<td class="table-info">설문지역</td>
                        				<td>${surveyoffvo.ans5 }</td>
                        			</tr>
                        		</table>
                        		<br>
                        		<table class="table">
                        			<tr class="text-left">
                        				<td class="table-info">Q1. 귀하께서 평소 즐기시는 캠핑장소는 어디인가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans5 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q2. 평소 어떤 캠핑 스타일을 즐기시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans6 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q3. 캠핑일정은 어떻게 정하시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans7 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q4. 캠핑장소를 선택하시는 기준은 무엇인가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans8 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q5. 캠핑장소는 누구랑 동행하시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans9 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q6. 제주도 내 캠핑장의 편의 시설을 평가 한다면 몇점을 주시겠습니까?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans10 }점</td>
                        			</tr>
                        				<tr class="text-left">
                        				<td class="table-info">Q7. 제주도 내 캠핑장의 자연환경을 평가한다면 몇점을 주시겠습니까?</td>
                        			</tr>
           
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans11 }점</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q9. 제주도 내 캠핑장의 편의시설 또는 자연환경의 좋은 점이 있다면 자유롭게 적어주세요.</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans12 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q10. 제주도 내 캠핑장의 편의시설 또는 자연환경의 불편한 점이 있다면 자유롭게 적어주세요.</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans13 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q11. 제주도 내 가보셨던 곳 중 가장 좋았던 캠핑장소와 이유를 자유롭게 적어주세요.</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans14 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q12. 제주도 내 앞으로 가보고 싶은 캠핑장소와 이유를 자유롭게 적어주세요.</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans15 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q13.  캠핑을 즐기시며 드시는 음식스타일은 무엇인가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans16 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q14.  캠핑을 즐기시면서 주로 나오는 쓰레기는 무엇인가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans17 }</td>
                        			</tr>
                        				<tr class="text-left">
                        				<td class="table-info">Q15.  캠핑을 즐기시면서 발생한 쓰레기는 어떻게 처리하시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans18 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q16.  제주에서 캠핑을 즐겨보신 장소에 쓰레기 배출 하기에 어떠하셨나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans19 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q17.  제주도에는 쓰레기 배출을 "클린하우스"라는 곳에 "요일별.정해진시간에 배출"을 하고 있습니다. "제주도클린하우스"와 "종류에 따라 요일제, 정해진 시간배출" 에 대하여 알고 계신가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans20 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q18.  평소 즐기시는 캠핑 장소의 클린하우스가 있는 위치를 아시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans21 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q19.  제주에서 캠핑을 즐기신다면 불멍(화롯대,모닥불)를 사용 하신적이 있으신가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans22 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q19-1.  불멍(화롯대,모닥불)를 사용하시면서 화롯대 바닥은 어떻게 하시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans23 }</td>
                        			</tr>
                        				<tr class="text-left">
                        				<td class="table-info">Q19-2.  불멍(화롯대,모닥불)을 즐기신 후 남아있는 재는 어떻게 처리하시나요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans24 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q19-3.  제주에서 캠핑을 하시며 누군가 불멍(화롯대,모닥불)을 즐기신 후 흔적을 남겨 놓고 가신 것을 보신적이 있으신가요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans25 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q20.  제주에서 클린캠핑이 이루어지려면 무엇이 필요하다고 생각하십니까?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans26 }</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class="table-info">Q21.  제주에서 클린캠핑이 이루어지려면 어떻게 해야 할까요?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans27 }</td>
                        			</tr>
                        		    <tr class="text-left">
                        				<td class="table-info">Q22.  [흔적을 남기지 말아요] 캠페인에 동참을 하시겠습니까?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans28 }</td>
                        			</tr>
                        			  <tr class="text-left">
                        				<td class="table-info">Q23.  개인정보‧초상권 사용 동의서 동의 하십니까?</td>
                        			</tr>
                        			<tr class="text-left">
                        				<td class=""><span class="badge badge-success">답변</span>&nbsp;${surveyoffvo.ans29 }</td>
                
                        		</table>
                        		
                        		
                        </div>
                    </div>
					<div class="text-center"><button id="list" style="border:0;width:200px;height:50px;cursor:pointer;background-color:steelblue;color:#fff">목록</button></div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
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
                        <span aria-hidden="true">Ã</span>
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
     <div style="position:fixed;top:50%;left:46%;" class="displayLoding spinner">
  		<span><img src="${pageContext.request.contextPath}/resources/img/bean-loading.gif" /></span>
	 </div>
    

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/admin/js/demo/datatables-demo.js"></script>
<script>
$(document).ready(function(){
	
	$("#list").click(function(){
		location.href="./chart2";
	});
	/* CKEDITOR.replace("contents");
	$("#save").click(function(){
	    if($("#subject").val().length==0){
			alert("제목을 입력해 주세요.");
			 $("#subject").focus();
			return false;
		}
	    if(CKEDITOR.instances.contents.getData()==""){
			alert("글내용을 입력하세요.");
			return false;
		}else{
			var forms = document.getElementById("form");
			var idx = forms.idx.value;
			var subject = forms.subject.value;
			var contents = CKEDITOR.instances.contents.getData();
			var form = "idx="+idx+"&subject="+subject+"&contents="+contents;
				$.ajax({
				    type: 'POST',
					url: "/admin/activeUpdate", 
					data: form,
					dataType: 'html',
					processData: false, 
					contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
					//contentType: false, 		
					enctype: 'multipart/form-data',
					success: function(data){
						// $('#successModal').modal('show');
						alert("수정이 완료 되었습니다");
						location.href="/admin/activeList";
					}
					,beforeSend : function(){
						$(".spinner").removeClass("displayLoding");
					},
					complete:function(){
						$(".spinner").addClass("displayLoding");	
					},error : function(){
						//$('#failModal').modal('show');
					}
				}) ;
				//$("#msform").submit();
			}
			

	}) //save btn end */

});

</script>
</body>

</html>