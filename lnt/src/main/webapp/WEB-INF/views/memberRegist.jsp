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
                    <h2 style="color:#fff" class="text-center">회원가입</h2>
                </div>
                <br><br>
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto bg-faded rounded  mt-5  mb-4 p-3">
                        	<form id="form">
								  <div class="form-group row">
								    <label for="id" class="col-sm-2 col-form-label">이메일</label>
								    <div class="col-sm-10">
								      <input type="email" class="form-control" id="email" name="email"  value="${e_mail }">
								      
								    </div>
								  </div>
								  <div class="form-group row">
								    <label for="password" class="col-sm-2 col-form-label">비밀번호</label>
								    <div class="col-sm-10">
								      <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
								    </div>
								  </div>
								   <div class="form-group row">
								    <label for="password2" class="col-sm-2 col-form-label">비밀번호확인</label>
								    <div class="col-sm-10">
								      <input type="password" class="form-control" id="password2" placeholder="비밀번호확인">
								    </div>
								  </div>
								    <div class="form-group row">
								    <label for="password2" class="col-sm-2 col-form-label">이름<span style="color:red">*</span></label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해 주세요.">
								    </div>
								  </div>
								    <div class="form-group row">
								    <label for="password2" class="col-sm-2 col-form-label">연락처<span style="color:red">*</span></label>
								    <div class="col-sm-10">
								      <input type="text" class="form-control" id="phone" name="phone" placeholder="연락처">
								    </div>
								  </div>
					
								  <div class="form-group row" style="justify-content: center;">
								    <div class="col-sm-12" >
								     <input type="button" class="btn btn-primary btn-block" value="가입하기" id="save">
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

		  var blank_pattern = /^\s+|\s+$/g;
		  var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		  var num_pattern = /^[0-9]*$/;
		  var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;
		  
	    if($("#email").val()==""){
	        alert("이메일을 입력해 주세요.");
	        $("#email").focus();
	        return false;
	    }

		if((special_pattern.test($("#name").val()) == true) || (num_pattern.test($("#name").val())==true)){
	  	    alert('특수문자는 또는 숫자는 허용하지 않습니다.');
	  	   $("#name").focus();
	  	    $("#name").val("");
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
	    }
	    
	    
	    if($("#password2").val()==""){
	        alert("비밀번호확인을 입력해 주세요.");
	        $("#password2").focus();
	        return false;
	    }
	    if($("#password").val() != $("#password2").val()){
			alert("비밀번호가 일치하지 않습니다.");
			  $("#password").val("");
			  $("#password2").val("");
			 $("#password").focus();
			return false;
		}
	    if($("#password").val().length>=11){
	        alert("비밀번호는 10자 이하로 입력해주세요.");
	        $("#password").val("");
	        $("#password2").val("");
	        $("#password").focus();
	        return false;
	    }
	    if($("#name").val()=="") {
			alert("이름을 입력해 주세요.");
			$("#name").focus();
			return false;
			//location.reload();
		}
	    
	    if($("#phone").val().indexOf("-")>0){
			var reg = exp.test($("#phone").val()); // 형식에 맞는 경우 true 리턴
			if(reg==false){
				alert("연락처 형식이 올바르지 않습니다.");
				$("#phone").val("");
				return false;
			}

		}else{
			var str = $('#phone').val().trim();    
	   		var phone = str.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
			 var reg = exp.test(phone); // 형식에 맞는 경우 true 리턴
			if(reg==false){
				alert("연락처 형식이 올바르지 않습니다.");
				$("#phone").val("");
				return false;
			}
			$('#phone').val(phone);
	
		}
	    
	    if($("#phone").val()=="") {
			alert("연락처를 입력해 주세요.");
			$("#phone").focus();
			return false;
			//location.reload();
		}else{

			 var form = new FormData(document.getElementById('form'));
				$.ajax({
				    type: 'POST',
					url: "${pageContext.request.contextPath}/memberRegist", 
					data: form,
					dataType: 'html',
					processData: false, 
					contentType: false, 		
					enctype: 'multipart/form-data',
					success: function(data){
						alert("회원가입이 완료 되었습니다.");
						location.href="${pageContext.request.contextPath}/login";
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
			

	}) //save btn end
	
});


</script>
    </body>
</html>