<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>                 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Leave No Trace | 흔적을 남기지 말아요</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
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
         <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
      
</head>
 <body>
         <!-- Navigation-->
 		<%@ include file="/resources/include/nav.jsp" %>
        <section class="page-section about-heading">
            <div class="container">
                <div class="heading">
                    <h2 style="color:#fff" class="text-center">Active</h2>
                </div>
                <br>
                <br>
                <div class="about-heading-content">
                    <div class="row">
                    	
                        <div class="col-xl-9 col-lg-10 mx-auto bg-faded rounded  mt-5  mb-4 p-3" style="overflow:hidden">
                        	 <h3 class="text-center">${thumbvo.subject }</h3>
                        	 <hr>
                          	   ${thumbvo.contents }
                          	   <br>
                          	   <br>
                          	   <hr>
                          	   <a href="./active" style="color:#337ab7">목록보기</a>
                        </div>
                        <div class="col-xl-9 col-lg-10 mx-auto mt-4">
                            <div class="bg-faded rounded p-2" style="overflow: hidden;">
                                <p id="reArea"><span><i class="far fa-comment-dots" style="vertical-align:middle;font-size:1.2rem;color:#19b9a7"></i> ${repleCount}</span></p>
                                <form id="replyForm">
                                	<c:if test="${member == null}">
                                	 <span class="re_txt2">댓글을 작성하시려면 <a href="./login?idx=${thumbvo.idx }&urls=activeDetail"><span style="color:#86c023;font-size:1rem">
                               로그인</span></a> 해주세요</span>
                                	</c:if> 
                                    <textarea class="form-control" id="repleTxt" name="contents"></textarea>
                                    <input type="hidden" name="num" value="${thumbvo.idx }" />
                                    <input type="hidden" name="writer" value="${member.email }" />
									<%-- <input type="hidden" name="groupNum"  value="${thumbvo.idx}" /> --%>
                                     <input type="button" class="btn btn-primary mt-1 float-right btn-sm" style="border:1px solid #17a2b8;background-color: #17a2b8;color:#fff" value="댓글등록" id="reply">
                                </form>
                            </div>
                        </div>   
                        <c:forEach items="${replyList}" var="replyList"  varStatus="status">
                        <c:set var="TextValue" value="${replyList.regdate}"/>
                        <div class="col-xl-9 col-lg-10 mx-auto mt-4">
                        
                        	<form id="repleModify${status.count}">
                         	   <div class="bg-faded p-3" style="position:relative">
                                  <span class="re_txt2 float-left"><i class="fas fa-user-edit" style="vertical-align:middle;font-size:1.1rem;color:#17a2b8"></i>${replyList.writer}&nbsp;</span><br>
                                  <span class="re_txt2 float-left"><i class="fas fa-clock" style="vertical-align:middle;font-size:1.1rem;color:#17a2b8"></i> ${fn:substring(TextValue,0,19)}</span>
                                  <br>
                                   <input type="hidden" name="num"  value="${replyList.num }" />
                                   <input type="hidden" name="idx"  value="${replyList.idx }" />
                                    <input type="hidden" name="groupNum"  value="${replyList.idx }" />
                                     <input type="hidden" name="writer" value="${replyList.writer }" />
	                                 <p class="p-2">  
	                                 <c:if test="${member.email != replyList.writer}">
	                                  	 ${replyList.contents }
	                                  </c:if> </p>
	                         
                                   <c:if test="${member.email == replyList.writer}">
                                	 
                                   <textarea class="form-control" id="repleModifyTxt${status.count}" name="contents"> ${replyList.contents }</textarea>
                                    <div class="btn-group" style="position:absolute;top:10px;right:10px">
										<i class="fas fa-ellipsis-v reBtn${status.count}"  style="font-size:1.2rem;color:#17a2b8;cursor:pointer" onclick="displayArea(${status.count})"></i>
										 <div style="position:absolute;top:30px;right:-20px;width:70px;display:none" class="btnArea${status.count}" >
										 	<a href="#none"  onclick="replyUpdate(${status.count})"><i class="fas fa-edit" style="font-size:1.2rem;color:#17a2b8;"></i></a>
										  	<a href='#deleteModal' data-toggle="modal"  data-id="${replyList.groupNum}" class="open-deleteDialog" onclick="deleteView(${replyList.groupNum})"><i class="far fa-trash-alt" style="font-size:1.2rem;color:#17a2b8;"></i></a>	
										 </div>
									</div>
									 </c:if>
										 <c:forEach items="${reRepleCount}" var="reRepleCount"  varStatus="show">
		                         	 	 		<c:if test="${reRepleCount.groupNum == replyList.groupNum }">
		                         	 	 		<a href="#none" onclick="reRepleShow(${status.count})"><span class="badge badge-pill badge-success">답글${reRepleCount.idx }개</span></a>
		                         	 	 		</c:if>
                           				 </c:forEach>
                           				 <c:forEach items="${getRepleAll}" var="getRepleAll" >
                           				    	<c:if test="${getRepleAll.level==0}">
		                         	 	 		  <a href="#none" onclick="reRepleShow(${status.count})" style="color:#337ab7;font-size:12px">답글작성</a>
		                         	 	 		</c:if>
                           				 </c:forEach>
                            	</div>
                            </form>
 							<div  class="bg-faded  p-3" id="reRepleForm${status.count }"  style="display:none">
 								<c:if test="${member == null}">
 								 <span class="re_txt2">답글을 작성하시려면 <a href="./login?idx=${thumbvo.idx }"><span style="color:#86c023;font-size:1rem">
                               로그인</span></a> 해주세요</span>
                               </c:if>
 								<c:if test="${member != null}">
	                            <form id="reReplyForm${status.count}">
												 <textarea class="form-control" id="repleModifyTxt${status.count}" name="contents"></textarea>
												  <input type="hidden" name="num"  value="${replyList.num }" />
				                                   <input type="hidden" name="idx"  value="${replyList.idx }" />
				                                    <input type="hidden" name="groupNum"  value="${replyList.groupNum }" />
				                    			   <input type="hidden" name="writer" value="${member.email }" />
												 <input type="hidden" name="level" value="1">
												 <input type="hidden" name="orders" value="${status.count}" />
												  <input type="button" class="btn btn-primary mt-1 float-right btn-sm" style="border:1px solid #17a2b8;background-color: #17a2b8;color:#fff" value="답글쓰기" onclick="reReply(${status.count})">
								 </form>
								 </c:if>
								  <br><br>
								  
								
								   
							<c:forEach items="${replyList2}" var="replyList2"  varStatus="status">
										  <c:if test="${replyList2.groupNum== replyList.groupNum}">
										   <div  class="bg-faded rounded p-3">
										  	 <span class="re_txt2 float-left">${replyList2.writer}&nbsp;</span><br>
		                                    <span class="re_txt2 float-left">${replyList2.regdate }</span><br>
										  	 <c:if test="${member.email != replyList2.writer}">
			                                  	<br>┗ ${replyList2.contents }<br>
			                                  </c:if> 
		
		                                  	 <c:if test="${member.email == replyList2.writer}">
		                                    	<a href='#deleteModal2' data-toggle="modal"  data-id="${replyList.idx}" class="open-deleteDialog" onclick="deleteView2(${replyList2.idx},${replyList.num})">
		                                    	<i class="far fa-trash-alt"style="float:right;font-size:1.2rem;color:#17a2b8;cursor:pointer"></i></a>
		                            			<br>┗ ${replyList2.contents }<br>  
		                                	 </c:if>
		                                	 </div>
								  		<hr>
								 	 </c:if>
							</c:forEach>	  	 
							
					
						
						 		 
						 		 
						 		 
							 </div>
							
                        </div> 
                        </c:forEach>

                        	

                    </div>
                </div>
            </div>
        </section>
       
          <%@ include file="/resources/include/footer.jsp" %>
        
<div class="modal fade" id="deleteModal"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
	      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick='location.reload()'>
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">	
	    <p>답글이 달려 있는 내용도 삭제 됩니다<br>정말 삭제 하시겠습니까?</p>
      </div>
       <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  id="delete">Delete</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="deleteModal2"  tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
	      <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick='location.reload()'>
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">	
	    <p>정말 삭제 하시겠습니까?</p>
      </div>
       <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary"  id="delete2">Delete</button>
      </div>
    </div>
  </div>
</div>
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

        <c:if test="${member != null}">
			 $("#repleTxt").removeAttr("disabled");
	   </c:if>
	   
	   
	    <c:if test="${member == null}">
	   	 $("#repleTxt").attr("disabled","disabled");
	   </c:if>

        /* $('#repleTxt').keyup(function (e){
            var content = $(this).val();
            $('#counter').html("("+content.length+"/200)");    //글자수 실시간 카운팅

            if (content.length > 200){
                alert("최대 200자까지 입력 가능합니다.");
                $(this).val(content.substring(0, 200));
                $('#counter').html("(200 / 최대 200자)");
            }
        }); */
        
        
        $("#reply").click(function(){
    	
    	    if($("#repleTxt").val()==""){
    	        alert("댓글 내용을 입력해 주세요.");
    	        $("#repleTxt").focus();
    	        return false;
    	    }else{
    			 var form = new FormData(document.getElementById('replyForm'));
    				$.ajax({
    				    type: 'POST',
    					url: "${pageContext.request.contextPath}/replyInsert", 
    					data: form,
    					dataType: 'html',
    					processData: false, 
    					contentType: false, 		
    					enctype: 'multipart/form-data',
    					success: function(data){
    						alert("댓글이 등록 되었습니다");
    						location.reload();
    						$("#repleTxt").val("");
 
    					}
    					,beforeSend : function(){
    						$(".spinner").removeClass("displayLoding");
    					},
    					complete:function(){
    						$(".spinner").addClass("displayLoding");	
    					},error : function(){
    						$('#failModal').modal('show');
    					}
    				}) ;
    				//$("#msform").submit();
    			}
    			

    	}) //save btn end
    	
    	
    	function reReply(a){
        	var form = new FormData(document.getElementById('reReplyForm'+a));
				$.ajax({
				    type: 'POST',
					url: "${pageContext.request.contextPath}/reReplyInsert", 
					data: form,
					dataType: 'html',
					processData: false, 
					contentType: false, 		
					enctype: 'multipart/form-data',
					success: function(data){
						alert("답글이 등록 되었습니다");
						location.reload();
						$("#repleTxt").val("");

					}
					,beforeSend : function(){
						$(".spinner").removeClass("displayLoding");
					},
					complete:function(){
						$(".spinner").addClass("displayLoding");	
					},error : function(){
						$('#failModal').modal('show');
					}
				}) ;
				//$("#msform").submit();

        }
    	


   
    	 
        function replyUpdate(a){

	        	 if($("#repleModifyTxt"+a).val()==""){
	       	        alert("댓글 내용을 입력해 주세요.");
	       	        $("#repleModifyTxt"+a).focus();
	       	        return false;
	       	    }else{
	       				 var form = new FormData(document.getElementById('repleModify'+a));
	       				$.ajax({
	       				    type: 'POST',
	       					url: "${pageContext.request.contextPath}/repleModify", 
	       					data: form,
	       					dataType: 'html',
	       					processData: false, 
	       					contentType: false, 		
	       					enctype: 'multipart/form-data',
	       					success: function(data){
	       						alert("댓글이 수정 되었습니다");
	       						location.reload();
	
	       					}
	       					,beforeSend : function(){
	       						$(".spinner").removeClass("displayLoding");
	       					},
	       					complete:function(){
	       						$(".spinner").addClass("displayLoding");	
	       					},error : function(){
	       						$('#failModal').modal('show');
	       					}
	       				}) ;
	       				//$("#msform").submit();
	       			}
	       			
        }
    
      	function deleteView(groupNum){
        		//alert(idx+","+num);
        	  $("#delete").click(function(){
        		//  alert(idx+","+num);
        			$.ajax({
        				type: "post", 
        				processData: false,
        				contentType:'application/x-www-form-urlencoded; charset=UTF-8',
        				url: "${pageContext.request.contextPath}/repleDelete", 
        				data: 'groupNum='+groupNum, 
        				dataType: 'html',
        				success: function(data){
        					alert("댓글이 삭제 되었습니다");
      						location.reload();
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
        };
        
     	function deleteView2(idx,num){
      	  $("#delete2").click(function(){
      		//  alert(idx+","+num);
      			$.ajax({
      				type: "post", 
      				processData: false,
      				contentType:'application/x-www-form-urlencoded; charset=UTF-8',
      				url: "${pageContext.request.contextPath}/repleDelete2", 
      				data: 'idx='+idx+"&num="+num, 
      				dataType: 'html',
      				success: function(data){
      					alert("답글이 삭제 되었습니다");
    						location.reload();
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
      };
        
var flag = 0;  
var flag2 = 0;  
function displayArea(a){

	if(flag==0){
		$(".btnArea"+a).css("display","block");
		flag=1;
	}else if(flag==1){
		$(".btnArea"+a).css("display","none");
		flag=0;
	}
	
}

function reRepleShow(a){
	if(flag2 == 0){
		$("#reRepleForm"+a).css("display","block");
		flag2=1;
	}else if(flag2==1){
		$("#reRepleForm"+a).css("display","none");
		flag2=0;
	}
}
</script>
    </body>
</html>