<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
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
        <section class="page-section about-heading">
            <div class="container">
                <div class="heading">
                    <h2 style="color:#fff" class="text-center">LOGIN</h2>
                </div>
                <br><br>
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto bg-faded rounded  mt-5  mb-4 p-3">
                        	<form id="form"  action="${pageContext.request.contextPath}/loginProcess" method="post">
                        			  <input type="hidden" name="idx" value="${idx }" />
                        			  <input type="hidden" name="urls" value="${urls }" />
                        			  
									  <div class="form-group">
									    <input type="text" class="form-control" placeholder="E-mail" id="email" name="email">
									  </div>
									  <div class="form-group">
									    <input type="password" class="form-control" name="password" placeholder="password" id="password">
									  </div>
									  <input type="button" class="btn btn-primary btn-block" value="로그인" id="save">
									  
									  <c:if test="${msg == false}">
									 	 <p style="color:#f00;">이메일 또는 비밀번호가 다릅니다. </p>
									  </c:if>
							</form>
							<hr>
							<a href="./memberAgree" style="color:#337ab7">회원가입</a>&nbsp;<span style="color:#337ab7">|</span>&nbsp;<a href="./findInfo" style="color:#337ab7">아이디/비밀번호 찾기</a>
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
        <!-- <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
        <script>
            baguetteBox.run('.cards-gallery', { animation: 'slideIn'});
        </script> -->
 <script>
$(document).ready(function(){

	$("#save").click(function(){

		  var blank_pattern = /^\s+|\s+$/g;
		  var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		  var num_pattern = /^[0-9]*$/;
		  var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;
		  
	    if($("#email").val()==""){
	        alert("이메일을 입력해 주세요.");
	        $("#email").focus();
	        return false;
	    }

	  	if($("#email").val().replace( blank_pattern, '' ) == "" ){
	  		alert("공백은 사용할 수 없습니다.");
	  		$("#email").focus();
		  		 $("#email").val("");
				return false;
		}
	    if($("#password").val()==""){
	        alert("비밀번호를 입력해 주세요.");
	        $("#password").focus();
	        return false;
	    }else{
			$("#form").submit();
		
		}
		
	}) //save btn end
	
});

</script>
 
    </body>
</html>