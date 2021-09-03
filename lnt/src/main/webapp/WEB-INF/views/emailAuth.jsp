<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>              
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Leave No Trace</title>
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
                    <h2 style="color:#fff" class="text-center">회원가입</h2>
                </div>
                <br><br>
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto bg-faded rounded  mt-5  mb-4 p-3">
                        		<form  id="emailAuth" action="emailAuth" method="post">
								  <div class="form-group row">
								    <div class="col-sm-8 col-md-8 mb-2" >
								       <input type="email" name="e_mail" id="email"
                               			 placeholder="이메일주소를 입력하세요. " class="form-control"  value="${e_mail }"> 
								    </div>
								     <div class="col-sm-4 col-md-4 mb-2">
								     	 <input type="button"class="form-control btn btn-primary" value="이메일 인증코드 받기" id="save">
								    </div>
								  </div>
								</form>
								<form id="RegistCode"  action="RegistCode" method="post" >
								  <div class="form-group row">
								    <div class="col-sm-8 col-md-8 mb-2" >
								       <input type="text" name="email_injeung" id="email_injeung" placeholder="인증번호를 입력하세요. " class="form-control">
								    </div>
								     <div class="col-sm-4 col-md-4 mb-2" >
								          <input type="hidden" name="dice" value="${dice }" />
				 							<input type="hidden" name="e_mail" value="${e_mail }" />
				 							 <input type="button"class="form-control btn btn-primary" value="인증번호확인" id="save2">
								    </div>
								  </div>
								</form>
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
	    if($("#email").val()==""){
	        alert("이메일을 입력해 주세요.");
	        $("#email").focus();
	        return false;
	    } else{
			$("#emailAuth").submit();
		}

	}); //save btn end
	
	$("#save2").click(function(){
	    if($("#email_injeung").val()==""){
	        alert("인증코드를 입력해 주세요.");
	        $("#email_injeung").focus();
	        return false;
	    } else{
			$("#RegistCode").submit();
		}

	}); //save btn end

});

</script>
    </body>
</html>