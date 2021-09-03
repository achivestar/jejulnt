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
                    <h2 style="color:#fff" class="text-center">FORGET</h2>
                </div>
                <br><br>
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto bg-faded rounded  mt-5  mb-4 p-3">
							<ul class="nav nav-tabs ">
								  <li class="nav-item">
								    <a class="nav-link active" data-toggle="tab" href="#qwe">E-mail 찾기</a>
								  </li>
								  <li class="nav-item">
								    <a class="nav-link" data-toggle="tab" href="#asd">비밀번호 찾기</a>
								  </li>
								</ul>
								<div class="tab-content">
								  <div class="tab-pane fade show active" id="qwe">
								    <p>
								    <form id="form1"  action="${pageContext.request.contextPath}/emailFindProcess" method="post">
												  <div class="form-group">
												    <input type="text" class="form-control" placeholder="name" id="name1" name="name">
												  </div>
												   <div class="form-group">
												    <input type="text" class="form-control" placeholder="phone" id="phone1" name="phone">
												  </div>
												  <div class="form-group">
												    <input type="password" class="form-control" name="password" placeholder="password" id="password1">
												  </div>
												  <input type="button" class="btn btn-primary btn-block" value="찾기" id="findEmail">
												  <c:if test="${msg==false}">
												 	 <p style="color:#f00;">이메일 또는 비밀번호/연락처가 다릅니다. </p>
												  </c:if>
												  <c:if test="${msg==true}">
												 	 <p style="color:#f00;">이메일 : ${msg2 }</p>
												  </c:if>
												    <c:if test="${msg3 == false}">
												 	 <p style="color:#f00;">이메일 또는 이름/연락처가 다릅니다. </p>
												  </c:if>
												  <c:if test="${msg3==true}">
												 	 <p style="color:#f00;">비밀번호 : ${msg4 }</p>
												  </c:if>
										</form>
								    </p>
								  </div>
								  <div class="tab-pane fade" id="asd">
								    <p>
								    <form id="form2"  action="${pageContext.request.contextPath}/passwordFindProcess" method="post">
												  <div class="form-group">
												    <input type="text" class="form-control" placeholder="E-mail" id="email2" name="email">
												  </div>
												   <div class="form-group">
												    <input type="text" class="form-control" placeholder="name" id="name2" name="name">
												  </div>
												  <div class="form-group">
												    <input type="text" class="form-control" name="phone" placeholder="phone" id="phone2">
												  </div>
												  <input type="button" class="btn btn-primary btn-block" value="찾기" id="findPassword">
												
										</form>
								    </p>
								  </div>

								</div>
							<hr>
							<a href="./login" style="color:#337ab7">로그인</a>
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

	$("#findEmail").click(function(){

		  var blank_pattern = /^\s+|\s+$/g;
		  var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		  var num_pattern = /^[0-9]*$/;
		  var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;
		  
	    if($("#name1").val()==""){
	        alert("가입한 이름을 입력해 주세요.");
	        $("#name1").focus();
	        return false;
	    }
	    
	    if($("#phone1").val()==""){
	        alert("가입한 연락처를 입력해 주세요.");
	        $("#phone1").focus();
	        return false;
	    }
	    

	  	if($("#name1").val().replace( blank_pattern, '' ) == "" ){
	  		alert("공백은 사용할 수 없습니다.");
	  		$("#name1").focus();
		  		 $("#name1").val("");
				return false;
		}
	    if($("#password1").val()==""){
	        alert("가입한 비밀번호를 입력해 주세요.");
	        $("#password1").focus();
	        return false;
	    }else{
			$("#form1").submit();
		
		}
		
	}) //save btn end
	
	
	$("#findPassword").click(function(){

		  var blank_pattern = /^\s+|\s+$/g;
		  var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		  var num_pattern = /^[0-9]*$/;
		  var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;
		  
	    if($("#name2").val()==""){
	        alert("가입한 이름을 입력해 주세요.");
	        $("#name2").focus();
	        return false;
	    }
	    
	    if($("#phone2").val()==""){
	        alert("가입한 연락처를 입력해 주세요.");
	        $("#phone2").focus();
	        return false;
	    }
	    

	  	if($("#name2").val().replace( blank_pattern, '' ) == "" ){
	  		alert("공백은 사용할 수 없습니다.");
	  		$("#name2").focus();
		  		 $("#name2").val("");
				return false;
		}else{
			$("#form2").submit();
		
		}
		
	}) //save btn end
	
	
});

</script>
 
    </body>
</html>