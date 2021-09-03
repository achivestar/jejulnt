<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>         
<c:if test="${msg == false}">
	<script>
		 alert("관리자메인 페이지로 이동합니다.");
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
                    <h1 class="h3 mb-2 text-gray-800">Active List</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                          	 <table class="table table-bordered">
						    <thead>
						      <tr>
						        <th>#no</th>
						        <th>제목</th>
						        <th>등록일</th>
						        <th>관리</th>
						      </tr>
						    </thead>
						    <tbody>
						    <c:if test="${empty list}">
							  <tr>
						        <tr><td colspan="4" class="text-center">등록된 데이터가 없습니다.</td></tr>
							</c:if>
						    	<c:forEach items="${list}" var="list">
						      <tr>
						        <td>${list.idx}</td>
						        <td>${list.subject }</td>
						        <td>${list.regdate }</td>
						        <td><a href="${pageContext.request.contextPath}/admin/activeModify?idx=${list.idx}" class="btn btn-warning">수정</a>&nbsp;
						        <a href='#deleteModal' data-toggle='modal'  data-id='${list.idx}' class='btn btn-danger open-deleteDialog' onclick='deleteView(${list.idx})' class="btn btn-danger">삭제</a></td>
						      </tr>
						       </c:forEach>
						       
						    </tbody>
						  </table>
                        </div>
                    </div>
                    <nav aria-label="...">
					  <ul class="pagination justify-content-center">
						  <c:if test="${prev}">
						    <li class="page-item disabled">
						      <a class="page-link" href="./activeList?pnum=${startPageNum - 1}" tabindex="-1">Previous</a>
						    </li>
					     </c:if>
					      <c:forEach begin="${startPageNum}" end="${endPageNum}" var="pnum">
					      	  <c:if test="${select != pnum}">
					      	  <li class="page-item"><a class="page-link" href="./activeList?pnum=${pnum}">${pnum}</a></li>
					      	  </c:if>
					      	  <c:if test="${select == pnum}">
					      	   <li class="page-item active">
					    		  <a class="page-link"href="./activeList?pnum=${pnum}">${pnum } <span class="sr-only">(current)</span></a>
					    		</li>
					      	  </c:if>
					      </c:forEach>
					      <c:if test="${next}">
					        <li class="page-item">
					    		  <a class="page-link" href="./activeList?pnum=${endPageNum + 1}">Next</a>
						    </li>
					      </c:if>
					   
					  </ul>
					</nav>

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
    
    
<div class="modal fade" id="deleteModal"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel"></h5>
	      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick='location.reload()'>
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">	
	    <p>정말 삭제 하시겠습니까?</p>
      </div>
       <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  id="delete">Delete</button>
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
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath}/resources/admin/js/demo/datatables-demo.js"></script>


<script>
function deleteView(idx){
	  $("#delete").click(function(){
			$.ajax({
				type: "post", 
				processData: false,
				contentType:'application/x-www-form-urlencoded; charset=UTF-8',
				url: "${pageContext.request.contextPath}/admin/delete", 
				data: 'idx='+idx, 
				dataType: 'html',
				success: function(data){
					 //$('#successModal').modal('show');
					 alert("삭제 되었습니다");
					 location.href="${pageContext.request.contextPath}/admin/activeList"
				}
				,beforeSend : function(){
					$(".spinner").removeClass("displayLoding");
				},
				complete:function(){
					$(".spinner").addClass("displayLoding");	
				},
			    error:function(){
			    	$('#failModal').modal('show');
			    }
				
			})
		});
}
</script>
</body>

</html>