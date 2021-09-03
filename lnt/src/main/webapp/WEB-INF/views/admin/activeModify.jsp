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
                    <h1 class="h3 mb-2 text-gray-800">Active</h1>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-body">
                           <form id="form" method="post" action="${pageContext.request.contextPath}/admin/activeUpdate" enctype="multipart/form-data" >
                           		<input type="hidden" name="idx" value="${thumbvo.idx }" />
								<p><input type="text" class="form-control" id="subject" name="subject" placeholder="제목" value="${thumbvo.subject }" /></p>
								<p><textarea rows="15" cols="50" id="contents" name="contents">${thumbvo.contents }</textarea></p>
								<script>
								 var ckeditor_config = {
								   resize_enaleb : false,
								   enterMode : CKEDITOR.ENTER_BR,
								   shiftEnterMode : CKEDITOR.ENTER_P,
								   filebrowserUploadUrl : "${pageContext.request.contextPath}/admin/ckUpdateUpload?idx=${thumbvo.idx}"
								 };
								 
								 CKEDITOR.replace("contents", ckeditor_config);
							</script>
								<p class="fieldlabels">썸네일 사진을 첨부해 주세요</p>
								<img src="${pageContext.request.contextPath}/resources/thumb/${thumbvo.saveFileName}" style="width:15%;height:auto"/>
							    <input type="file" name="uploadfile"  id="uploadfile" value="${thumbvo.saveFileName }">		
							    <br><br>
							     <p> <input type="submit" class="btn btn-primary" value="수정" id="save">
							     <a href="${pageContext.request.contextPath}/admin/activeList" class="btn btn-secondary">목록보기</a></p>			 
							
							</form>
                        </div>
                    </div>

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