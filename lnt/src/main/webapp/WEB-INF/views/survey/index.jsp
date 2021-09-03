<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>올바른 캠핑 문화 형성을 위한 설문조사</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/survey/css/bootstrap.min.css">

    <!-- Font Awesome JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/survey/js/fontawesome-all.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css" />
    <style>
      .h5{
        line-height: 2.2rem;
      }

      .unvisible{
        display:none;
      }

      #agreename{
        display: none;
      }

      #submit2{
        display: none;
      }
      
      .displayLoding {
		 display:none;
	  } 
	  
	  .form-row {
	  	margin-left:20px;
	  }

    </style>
</head>
  <body class="bg-light py-3 py-lg-5">
    <div class="container">
      <div class="text-center">
        <h3>제주 올바른 캠핑 문화<br> 형성을 위한 설문조사<br><span style="font-size:18px;color:steelblue">(온라인 설문)</span></h3>
        <p class="lead">"Leave no trace"</p>
      </div>
      <div class="text-center alert alert-primary">
        본 설문은 제주소통협력센터의 제주생활탐구라는 프로젝트의 일환으로 캠핑 인구 1000만 시대에, 캠핑을 좋아하시는 캠퍼분들을 대상으로 제주도 올바른 캠핑 문화 형성을 위한 설문 입니다. 올바르지 않은 캠핑문화로 자연훼손, 통제구역, 금지사항 등이 생기고 있습니다. 올바른 캠핑 문화 형성으로 자연과 함께 지속가능하며 민원이 없는 캠핑문화를 형성하고자 합니다.
      </div>
      	<div class="row">
					<div class="col-4 mb-3">
						<img src="${pageContext.request.contextPath}/resources/survey/img/2.png" alt="..." style="width:100%;">
					</div>
					<div class="col-4">
						 <img src="${pageContext.request.contextPath}/resources/survey/img/1.png" alt="..." style="width:100%;">
					  </div>
					  <div class="col-4">
						  <img src="${pageContext.request.contextPath}/resources/survey/img/3.png" alt="..." style="width:100%">
					  </div>
					  <div class="col-4">
						 <img src="${pageContext.request.contextPath}/resources/survey/img/4.png" alt="..." style="width:100%;">
					  </div>
					   <div class="col-4">
						 <img src="${pageContext.request.contextPath}/resources/survey/img/5.png" alt="..." style="width:100%">
					  </div>
					   <div class="col-4">
						 <img src="${pageContext.request.contextPath}/resources/survey/img/6.png" alt="..." style="width:100%">
					  </div>
				</div>
      <br>
      <hr>
      <br>
      <ul class="nav nav-tabs nav-justified" id="nav" role="tablist">
        <li class="nav-item">
          <a href="#step-1" class="nav-link h4 mb-0 active" id="step-1-tab" data-toggle="tab" role="tab" aria-controls="step-1" aria-selected="true">Step 1<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-2" class="nav-link h4 mb-0" id="step-2-tab" data-toggle="tab" role="tab" aria-controls="step-2" aria-selected="false">Step 2<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-3" class="nav-link h4 mb-0" id="step-3-tab" data-toggle="tab" role="tab" aria-controls="step-3" aria-selected="false">Step 3<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-4" class="nav-link h4 mb-0" id="step-4-tab" data-toggle="tab" role="tab" aria-controls="step-4" aria-selected="false">Step 4<br></a>
        </li>
      </ul>
      <form id="form">
      <div class="tab-content" id="navContent">
      
        <div class="tab-pane fade pt-4 show active" id="step-1" role="tabpanel" aria-labelledby="step-1-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
          
          <!-- #1 start-->
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #1: 귀하의 연령대는 어떻게 되나요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary1-1" name="age" value="10대"/>
                <label for="primary1-1">10대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary1-2" name="age" value="20대"/>
                  <label for="primary1-2">20대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary1-3" name="age" value="30대" />
                <label for="primary1-3">30대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary1-4" name="age" value="40대"/>
                <label for="primary1-4">40대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary1-5" name="age" value="50대"/>
                <label for="primary1-5">50대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary1-6" name="age" value="60대"/>
                <label for="primary1-6">60대</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary1-7" name="age" value="70대"/>
                <label for="primary1-7">70대</label>
              </div>
          	</div>
          </div>
          <hr>
           <!-- #1 end-->

          <!-- #2 start-->
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #2: 귀하의 성별은 어떻게 되나요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary2-1" name="gender" value="여성" />
                <label for="primary2-1">여성</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary2-2" name="gender" value="남성"/>
                  <label for="primary2-2">남성</label>
              </div>
          	</div>
          </div>
          <hr>
           <!-- #2 end-->

          <!-- #3 start-->
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #3: 귀하의 거주지는 어떻게 되나요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary3-1" name="area" value="제주도"/>
                <label for="primary3-1">제주도</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary3-2" name="area" value="제주도 외 지역"/>
                  <label for="primary3-2">제주도 외 지역</label>
              </div>
              <!-- <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-3" name="area" value="경기도"/>
                <label for="primary3-3">경기도</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-4" name="area" value="경상도"/>
                <label for="primary3-4">경상도</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-5" name="area" value="충청도"/>
                <label for="primary3-5">충청도</label>
               </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-6" name="area"  value="전라도"/>
                <label for="primary3-6">전라도</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-7" name="area"  value="제주도" />
                <label for="primary3-7">제주도</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary3-8" name="area"value="해외" />
                <label for="primary3-8">해외</label>
              </div> -->
              
          	</div>
          </div>
          <hr>
          <!-- #3 end--> 
          <!-- #4 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #4: 귀하의 성함과 연락처를 남겨주세요.</h2>
                <p class="small">(설문을 마친 분들의 한해 추첨을 통해 소정의 선물을 드립니다)</p>
                <br>
            </div>
           </div> 
         <!-- #4 end--> 
          <div class="form-row">
            <div class="col-md-6 form-group">
          		<input type="text" class="form-control" name="name" id="name" placeholder="이름">
          	</div>
          	<div class="col-md-6 form-group">
          		<input type="tel" class="form-control" name="phone" id="phone" placeholder="연락처" onBlur="isCelluar(this.value)">
          	</div>
          </div>

          <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-3" id="goto-step-2">Step 2</button>
        </div>
        <div class="tab-pane fade pt-4" id="step-2" role="tabpanel" aria-labelledby="step-2-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
          <!-- #5 start --> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<!-- <h2 class="h5">Question #5: 현재 귀하가 계시는 캠핑장소는 어디인가요?</h2> -->
          		<h2 class="h5">Question #5: 귀하께서 평소 즐기시는 캠핑장소는 어디인가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary5-1" name="ans5" value="금능해수욕장"/>
                <label for="primary5-1">금능해수욕장</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary5-2" name="ans5" value="협재해수욕장"/>
                  <label for="primary5-2">협재해수욕장</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary5-3" name="ans5"  value="함덕해수욕장"/>
                <label for="primary5-3">함덕해수욕장</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary5-4" name="ans5" value="김녕해수욕장"/>
                <label for="primary5-4">김녕해수욕장</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary5-5" name="ans5" value="우도 비양도"/>
                <label for="primary5-5">우도 비양도</label>
              </div>
          	</div>
          </div>
          <hr>
          <!-- #5 end -->

          <!-- #6 start --> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<!-- <h2 class="h5">Question #6: 어떤 캠핑 스타일로 오셨나요?</h2> -->
          		<h2 class="h5">Question #6: 평소 어떤 캠핑 스타일을 즐기시나요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary6-1" name="ans6" value="오토캠핑"/>
                <label for="primary6-1">오토캠핑</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary6-2" name="ans6" value="백패킹"/>
                  <label for="primary6-2">백패킹</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary6-3" name="ans6"  value="차박"/>
                <label for="primary6-3">차박</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary6-4" name="ans6" value="캠핑카/트레일러"/>
                <label for="primary6-4">캠핑카/트레일러</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary6-5" name="ans6" value="미니멀 캠핑"/>
                <label for="primary6-5">미니멀 캠핑</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary6-6" name="ans6" value="피크닉"/>
                <label for="primary6-6">피크닉</label>
              </div>
          	</div>
          </div>
          <hr>
          <!-- #6 end -->

          <!-- #7 start --> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<!-- <h2 class="h5">Question #7: 캠핑일정은 어떻게 되시나요?</h2> -->
          		 <h2 class="h5">Question #7: 캠핑일정은 어떻게 정하시나요?</h2> 
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary7-1" name="ans7" value="당일"/>
                <label for="primary7-1">당일</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary7-2" name="ans7" value="1박2일"/>
                  <label for="primary7-2">1박2일</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary7-3" name="ans7"  value="2박3일"/>
                <label for="primary7-3">2박3일</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary7-4" name="ans7" value="3박이상"/>
                <label for="primary7-4">3박이상</label>
              </div>
          	</div>
          </div>
          <hr>
          <!-- #7 end -->

		  <!-- #8 start --> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<!-- <h2 class="h5">Question #8: 이곳을 선택하신 기준은 무엇인가요? </h2> -->
          		<h2 class="h5">Question #8: 캠핑장소를 선택하시는 기준은 무엇인가요? </h2>
				<p class="small">(2개 선택 가능)</p>
              <br>
          	  <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox" id="primary8-1" name="ans8" value="자연환경"/>
                <label for="primary8-1">자연환경</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="checkbox"  id="primary8-2" name="ans8" value="놀거리 즐길거리"/>
                  <label for="primary8-2">놀거리 즐길거리</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox"  id="primary8-3" name="ans8"  value="조용하고 한적한곳"/>
                <label for="primary8-3">조용하고 한적한곳</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox"  id="primary8-4" name="ans8" value="편의시설 "/>
                <label for="primary8-4">편의시설</label>
              </div>
			  <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox"  id="primary8-5" name="ans8" value="시설청결도"/>
                <label for="primary8-5">시설청결도</label>
              </div>
			  <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox"  id="primary8-6" name="ans8" value="sns 핫플레이스"/>
                <label for="primary8-6">sns 핫플레이스</label>
              </div>
			  <div class="icheck-primary form-check form-check-inline">
                <input type="checkbox"  id="primary8-7" name="ans8" value="기타"/>
                <label for="primary8-7">기타</label>
              </div>
          	</div>
          </div>
          <hr>
          <!-- #8 end -->

		   <!-- #9 start --> 
		   <div class="form-row">
            <div class="col-md-12 form-group">
          		<!-- <h2 class="h5">Question #9: 이곳은 누구랑 동행하셨나요?</h2> -->
          		<h2 class="h5">Question #9: 캠핑장소는 누구랑 동행하시나요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
                <input type="radio" id="primary9-1" name="ans9" value="가족"/>
                <label for="primary9-1">가족</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                  <input type="radio"  id="primary9-2" name="ans9" value="지인/동료"/>
                  <label for="primary9-2">지인/동료</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary9-3" name="ans9"  value="부부/연인"/>
                <label for="primary9-3">부부/연인</label>
              </div>
              <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary9-4" name="ans9" value="동호회"/>
                <label for="primary9-4">동호회</label>
              </div>
			  <div class="icheck-primary form-check form-check-inline">
                <input type="radio"  id="primary9-5" name="ans9" value="혼자"/>
                <label for="primary9-5">혼자</label>
              </div>
          	</div>
          </div>
          <hr>
          <!-- #9 end -->

		<!-- #10start --> 
		<div class="form-row">
			<div class="col-md-12 form-group">
				<!-- <h2 class="h5">Question #10: 이곳의 편의 시설을 평가 한다면 몇점을 주시겠습니까? </h2> -->
				<h2 class="h5">Question #10: 제주도 내 캠핑장의 편의 시설을 평가 한다면 몇점을 주시겠습니까? </h2>
				<p class="small">(5점 만점 기준)</p>
				<br>
				<h2 class="bold rating-header" style=""></h2>
				<span class="selected-rating1">0</span><small> / 5</small>
				<input type="hidden" id="primary10" name="ans10" value="" required="required">
				<button type="button" class="btnrating1 btn btn-default btn-lg" data-attr="1" id="rating-star1-1">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating1 btn btn-default btn-lg" data-attr="2" id="rating-star1-2">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating1 btn btn-default btn-lg" data-attr="3" id="rating-star1-3">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating1 btn btn-default btn-lg" data-attr="4" id="rating-star1-4">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating1 btn btn-default btn-lg" data-attr="5" id="rating-star1-5">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				</div>
			</div>
			<hr>
			<!-- #10 end -->

			
		<!-- #11start --> 
		<div class="form-row">
			<div class="col-md-12 form-group">
				<!-- <h2 class="h5">Question #11: 이곳 자연환경을 평가한다면 몇점을 주시겠습니까? </h2> -->
				<h2 class="h5">Question #11: 제주도 내 캠핑장의 자연환경을 평가한다면 몇점을 주시겠습니까? </h2>
				<p class="small">(5점 만점 기준)</p>
				<br>
				<h2 class="bold rating-header" style=""></h2>
				<span class="selected-rating2">0</span><small> / 5</small>
				<input type="hidden" id="primary11" name="ans11" value="" required="required">
				<button type="button" class="btnrating2 btn btn-default btn-lg" data-attr="1" id="rating-star2-1">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating2 btn btn-default btn-lg" data-attr="2" id="rating-star2-2">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating2 btn btn-default btn-lg" data-attr="3" id="rating-star2-3">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating2 btn btn-default btn-lg" data-attr="4" id="rating-star2-4">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				<button type="button" class="btnrating2 btn btn-default btn-lg" data-attr="5" id="rating-star2-5">
					<i class="fa fa-star" aria-hidden="true"></i>
				</button>
				</div>
		</div>
		<hr>
		<!-- #11 end -->

		<!-- #12start --> 
		<div class="form-row">
				<div class="col-md-12 form-group">
					 <!--  <h2 class="h5">Question #12: 이곳 편의시설 또는 자연환경의 좋은 점이 있다면 자유롭게 적어주세요.</h2> -->
					 <h2 class="h5">Question #12: 제주도 내 캠핑장의 편의시설 또는 자연환경의 좋은 점이 있다면 자유롭게 적어주세요.</h2>
					 <!--  <p class="small">최소 5자이상 작성해 주세요.</p> -->
				  	  <br>
				  <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="primary12" name="ans12" cols="130" rows="5"></textarea>
				  </div>
				</div>
		</div>
		<hr>
		<!-- #12 end -->

    <!-- #13start --> 
		<div class="form-row">
				<div class="col-md-12 form-group">
					  <!-- <h2 class="h5">Question #13: 이곳 편의시설 또는 자연환경의 불편한 점이 있다면 자유롭게 적어주세요.</h2> -->
					  <h2 class="h5">Question #13: 제주도 내 캠핑장의 편의시설 또는 자연환경의 불편한 점이 있다면 자유롭게 적어주세요.</h2>
					 <!--  <p class="small">최소 5자이상 작성해 주세요.</p> -->
				  	  <br>
				  <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="primary13" name="ans13" cols="130" rows="5"></textarea>
				  </div>
				</div>
		</div>
		<hr>
		<!-- #13 end -->
              <!-- #14start --> 
              <div class="form-row">
              
                  <div class="col-md-12 form-group">
                      <h2 class="h5">Question #14: 제주도 내 가보셨던 곳 중 가장 좋았던 캠핑장소와 이유를 자유롭게 적어주세요.</h2> 
                     <!--  <p class="small">최소 5자이상 작성해 주세요.</p> -->
                        <br>
                    <div class="icheck-primary form-check form-check-inline">
                      <textarea class="form-control" id="primary14" name="ans14" cols="130" rows="5"></textarea>
                    </div>
                  </div>
                
              </div>
              <!-- #14end --> 
              <hr>
              <!-- #15start --> 
              <div class="form-row">
               
                  <div class="col-md-12 form-group">
                      <h2 class="h5">Question #15: 제주도 내 앞으로 가보고 싶은 캠핑장소와 이유를 자유롭게 적어주세요.</h2>
                      <!--  <p class="small">최소 5자이상 작성해 주세요.</p> -->
                        <br>
                    <div class="icheck-primary form-check form-check-inline">
                      <textarea class="form-control" id="primary15" name="ans15" cols="130" rows="5"></textarea>
                    </div>
                  
                </div>
              </div>
              <!-- #15end --> 

          <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-2" id="goto-step-3">Step 3</button>
        </div>

        <!-- tab3 시작-->
        <div class="tab-pane fade pt-4" id="step-3" role="tabpanel" aria-labelledby="step-3-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
           <!-- #16start --> 
            <div class="form-row">
              <div class="col-md-12 form-group">
                  <h2 class="h5">Question #16: 캠핑을 즐기시며 드시는 음식스타일은 무엇인가요?</h2>
                  <p class="small">(2개 선택 가능)</p>
                   <br>
                   <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary16-1" name="ans16" value="화기사용 다양한 조리형(찌개,고기)"/>
                    <label for="primary16-1">화기사용 다양한 조리형(찌개,고기)</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary16-2" name="ans16" value="화기사용 간편한 조리형(라면류,즉석요리)"/>
                    <label for="primary16-2">화기사용 간편한 조리형(라면류,즉석요리)</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary16-3" name="ans16" value="간단 비조리형(컵라면,도시락)"/>
                    <label for="primary16-3">간단 비조리형(컵라면,도시락)</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary16-4" name="ans16" value="패스트 푸드"/>
                    <label for="primary16-4">패스트 푸드</label>
                  </div>
              </div>
            </div>
          <!-- #16end --> 
          <hr>
          <!-- #17start --> 
          <div class="form-row">
            
              <div class="col-md-12 form-group">
                  <h2 class="h5">Question #17: 캠핑을 즐기시면서 주로 나오는 쓰레기는 무엇인가요?</h2>
                  <p class="small">(2개 선택 가능)</p>
                   <br>
                   <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary17-1" name="ans17" value="플라스틱류"/>
                    <label for="primary17-1">플라스틱류</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary17-2" name="ans17" value="병류"/>
                    <label for="primary17-2">병류</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary17-3" name="ans17" value="캔류"/>
                    <label for="primary17-3">캔류</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary17-4" name="ans17" value="비닐류"/>
                    <label for="primary17-4">비닐류</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="checkbox" id="primary17-5" name="ans17" value="음식물"/>
                    <label for="primary17-5">음식물</label>
                  </div>
              </div>
            
          </div>
          <!-- #17end --> 
          <hr>
         <!-- #18start --> 
         <div class="form-row">
          
            <div class="col-md-12 form-group">
                <h2 class="h5">Question #18: 캠핑을 즐기시면서 발생한 쓰레기는 어떻게 처리하시나요?</h2>
                 <br>
                 <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary18-1" name="ans18" value="집 또는 숙소까지 가지고 간다"/>
                  <label for="primary18-1">집 또는 숙소까지 가지고 간다</label>
                </div>
                <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary18-2" name="ans18" value="캠핑장소 내 쓰레기가 모여있는 곳에 버린다"/>
                  <label for="primary18-2">캠핑장소 내 쓰레기가 모여있는 곳에 버린다</label>
                </div>
                <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary18-3" name="ans18" value="근처 쓰레기장(클린하우스)에 버린다. "/>
                  <label for="primary18-3">근처 쓰레기장(클린하우스)에 버린다. </label>
                </div>
                <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary18-4" name="ans18" value="캠핑장소에 적당히 두고간다"/>
                  <label for="primary18-4">캠핑장소에 적당히 두고간다</label>
                </div>
           
          </div>
        </div>
        <!-- #18end --> 
          <hr>
          <!-- #19start --> 
         <div class="form-row">
          
            <div class="col-md-12 form-group">
                <h2 class="h5">Question #19: 제주에서 캠핑을 즐겨보신 장소에 쓰레기 배출 하기에 어떠하셨나요?</h2>
                 <br>
                 <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary19-1" name="ans19" value="불편하다"/>
                  <label for="primary19-1">불편하다</label>
                </div>
                <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary19-2" name="ans19" value="편하다"/>
                  <label for="primary19-2">편하다</label>
                </div>
            
          </div>
        </div>
        <!-- #19end --> 
          <hr>
          <!-- #20start --> 
          <div class="form-row">
            
              <div class="col-md-12 form-group">
                  <h2 class="h5">Question #20: 제주도에는 쓰레기 배출을 "클린하우스"라는 곳에 "요일별.정해진시간에 배출"을 하고 있습니다. "제주도클린하우스"와 "종류에 따라 요일제, 정해진 시간배출" 에 대하여 알고 계신가요?</h2>
                   <br>
                   <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary20-1" name="ans20" value="예"/>
                    <label for="primary20-1">예</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary20-2" name="ans20" value="아니오"/>
                    <label for="primary20-2">아니오</label>
                  </div>
              
            </div>
          </div>
          <!-- #20end --> 
          <hr>
             <!-- #21start --> 
             <div class="form-row">
              
                <div class="col-md-12 form-group">
                    <h2 class="h5">Question #21: 평소 즐기시는 캠핑 장소의 클린하우스가 있는 위치를 아시나요?</h2>
                     <br>
                     <div class="icheck-primary form-check form-check-inline">
                      <input type="radio" id="primary21-1" name="ans21" value="예"/>
                      <label for="primary21-1">예</label>
                    </div>
                    <div class="icheck-primary form-check form-check-inline">
                      <input type="radio" id="primary21-2" name="ans21" value="아니오"/>
                      <label for="primary21-2">아니오</label>
                    </div>
                
              </div>
            </div>
            <!-- #21end --> 
          <hr>
            <!-- #22start --> 
              <div class="form-row">
               
                  <div class="col-md-12 form-group">
                      <h2 class="h5">Question #22: 제주에서 캠핑을 즐기신다면 불멍(화롯대,모닥불)를 사용 하신적이 있으신가요?</h2>
                       <br>
                       <div class="icheck-primary form-check form-check-inline">
                        <input type="radio" id="primary22-1" name="ans22" value="예"/>
                        <label for="primary22-1">예</label>
                      </div>
                      <div class="icheck-primary form-check form-check-inline">
                        <input type="radio" id="primary22-2" name="ans22" value="아니오"/>
                        <label for="primary22-2">아니오</label>
                      </div>
                  
                </div>
              </div>
            <!-- #22end --> 
          <hr>
            <!-- #22-1start --> 
                <div class="form-row unvisible">
                 
                    <div class="col-md-12 form-group">
                        <h2 class="h5">Question #22-1: 불멍(화롯대,모닥불)를 사용하시면서 화롯대 바닥은 어떻게 하시나요?</h2>
                         <br>
                         <div class="icheck-primary form-check form-check-inline">
                          <input type="radio" id="primary22-3" name="ans23" value="그냥 사용한다"/>
                          <label for="primary22-3">그냥 사용한다</label>
                        </div>
                        <div class="icheck-primary form-check form-check-inline">
                          <input type="radio" id="primary22-4" name="ans23" value="방염포 또는 화롯대판을 설치한다"/>
                          <label for="primary22-4">방염포 또는 화롯대판을 설치한다</label>
                        </div>
                    
                  </div>
                </div>
              <!-- #22-1end --> 
              <hr class="unvisible">
              <!-- #22-2start --> 
              <div class="form-row unvisible">
               
                  <div class="col-md-12 form-group">
                      <h2 class="h5">Question #22-2: 불멍(화롯대,모닥불)을 즐기신 후 남아있는 재는 어떻게 처리하시나요?</h2>
                        <br>
                        <div class="icheck-primary form-check form-check-inline">
                        <input type="radio" id="primary22-5" name="ans24" value="그냥 땅에 버린다"/>
                        <label for="primary22-5">그냥 땅에 버린다</label>
                      </div>
                      <div class="icheck-primary form-check form-check-inline">
                        <input type="radio" id="primary22-6" name="ans24" value="땅을 파서 묻는다"/>
                        <label for="primary22-6">땅을 파서 묻는다</label>
                      </div>
                      <div class="icheck-primary form-check form-check-inline">
                        <input type="radio" id="primary22-7" name="ans24" value="재를 담아 가지고 간다"/>
                        <label for="primary22-7">재를 담아 가지고 간다</label>
                      </div>
                 
                </div>
              </div>
            <!-- #22-2end --> 
            <hr class="unvisible">
            <!-- #22-3start --> 
            <div class="form-row unvisible">
              
                <div class="col-md-12 form-group">
                    <h2 class="h5">Question #22-3: 제주에서 캠핑을 하시며 누군가 불멍(화롯대,모닥불)을 즐기신 후 흔적을 남겨 놓고 가신 것을 보신적이 있으신가요?</h2>
                      <br>
                      <div class="icheck-primary form-check form-check-inline">
                      <input type="radio" id="primary22-8" name="ans25" value="예"/>
                      <label for="primary22-8">예</label>
                    </div>
                    <div class="icheck-primary form-check form-check-inline">
                      <input type="radio" id="primary22-9" name="ans25" value="아니오"/>
                      <label for="primary22-9">아니오</label>
                    </div>
                </div>
            
            </div>
          <!-- #22-3end --> 
          <hr class="unvisible">
          <!-- #23start --> 
          <div class="form-row">
           
              <div class="col-md-12 form-group">
                  <h2 class="h5">Question #23: 제주에서 클린캠핑이 이루어지려면 무엇이 필요하다고 생각하십니까?</h2>
                    <br>
                    <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary23-1" name="ans26" value="캠핑지역의 쓰레기 배출 시설 확대"/>
                    <label for="primary23-1">캠핑지역의 쓰레기 배출 시설 확대</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary23-2" name="ans26" value="정해진 곳에서만 캠핑이 가능하도록 제한"/>
                    <label for="primary23-2">정해진 곳에서만 캠핑이 가능하도록 제한</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary23-3" name="ans26" value="장작/숯 사용 제한"/>
                    <label for="primary23-3">장작/숯 사용 제한</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary23-4" name="ans26" value="캠핑 후 클린활동(주변청소)을 포함한 캠페인 상시화"/>
                    <label for="primary23-4">캠핑 후 클린활동(주변청소)을 포함한 캠페인 상시화</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary23-5" name="ans26" value="캠퍼들의 자발적 인식 변화"/>
                    <label for="primary23-5">캠퍼들의 자발적 인식 변화
                    </label>
                  </div>
                  
              
            </div>
          </div>
        <!-- #23end --> 
        <hr>
         <!-- #24 start --> 
         <div class="form-row">
           
              <div class="col-md-12 form-group">
                  <h2 class="h5">Question #24: 제주에서 클린캠핑이 이루어지려면 어떻게 해야 할까요?</h2>
                   <!-- <p class="small">최소 5자이상 작성해 주세요.</p> -->
				  	  <br>
				  <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="primary24-1" name="ans27" cols="130" rows="5"></textarea>
				  </div>
               </div>
          </div>     
        <!-- #25start --> 
        <div class="form-row">
          
            <div class="col-md-12 form-group">
                <h2 class="h5">Question #25: 급속적으로 캠핑문화가 퍼져가며 다양한 부분에 문제가 생기고 있습니다.<br>
                  ① 쓰레기 무단 투기로 인한 자연 환경 훼손.<br>
                  ② 현지 주민과의 마찰.<br>
                  ③ 민원발생으로 캠핑지 폐쇄 및 통제.<br>
                  ④ 화기 사용으로 인한 화재 발생.<br>
                  ⑤ 동일한 장소 텐트설치로 인한 잔디 및 바닥 훼손 등.<br>
                  이런 문제들의 지속적 발생으로 인해 국내 캠핑문화에 대한 부정적 인식이 확산되고 있습니다. 이에 올바른 캠핑 문화를 형성 하고자 합니다. 흔적을 남기지 않는 캠퍼 "우리 모두 흔적을 남기지 않는 캠핑 문화를 만들어요".<br>
                  <span style="color:red">[흔적을 남기지 말아요]</span> 캠페인에 동참을 하시겠습니까?</h2>
                  <br>
                  <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary25-1" name="ans28" value="예"/>
                  <label for="primary25-1">예</label>
                </div>
                <div class="icheck-primary form-check form-check-inline">
                  <input type="radio" id="primary25-2" name="ans28" value="아니오"/>
                  <label for="primary25-2">아니오</label>
                </div>
            
          </div>
        </div>
        <!-- #24end --> 
        <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-2" id="goto-step-4">Step 4</button>
        </div> <!--tab3 끝-->

        <div class="tab-pane fade pt-4" id="step-4" role="tabpanel" aria-labelledby="step-4-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
          <div class="form-row" style="line-height:2rem">
              <div class="col-md-12 form-group">
                  <h2 class="h5 text-center p-2" style="color:blue;font-size:24px;font-weight:bold;border-bottom:1px solid #181818">개인정보‧초상권 사용 동의서</h2><br>
                    제주 올바른 캠핑문화형성 캠페인에 참여한 귀하의 정보를 관리함에 있어 「개인정보보호법」에서 규정하고 있는 책임과 의무를 준수하고 제공자가 동의한 내용 외 다른 목적으로 활용하지 않음을 알려드립니다.<br> 단, 제주 올바른 캠핑문화형성 캠페인는 <span style="color:blue">활동 과정 및 결과의 기록, 홍보 목적으로 참가자의 사진 촬영 및 활용이 필요할 시</span> 별도의 동의를 얻고 진행하고 있으며, 동의나 승낙 없이 촬영한 사진을 사용하지 않습니다.<br>제주 올바른 캠핑문화형성 캠페인 <span style="color:blue">활동의 일환으로 만들어진 결과물은 제주시소통협력센터와 케이엠커뮤니케이션즈에 귀속되며, (귀하의 정보, 인터뷰 내용 등)은</span> 제주 올바른 캠핑문화형성 캠페인의  <span style="color:blue">업무상 필요한 범위 안에서 아래와 같은 용도로 사용할 수 있습니다.</span><br>제주 올바른 캠핑문화형성 캠페인은 아래와 같이 동의를 득하거나 아래 사항에 의한 경우는 예외적으로 제3자에게 개인정보를 제공할 수 있습니다.
                    <div style="border:1px solid #181818" class="p-3">
                        <b>▪ 개인정보·초상권·저작권 이용 범위:</b> 제주 올바른 캠핑문화 형성 아카이브 <br>
                        <b>▪ 수집하려는 개인정보·초상권·저작권 항목 :</b> 제주 올바른 캠핑문화 형성 아카이브<br>
                        <b>▪ 활용기간 :</b> 제주 올바른 캠핑문화 형성 아카이브 기간<br>
                        <b>▪ 사용 매체명 :</b> 케이엠커뮤니케이션즈<br><br>

                        [개인정보 제3자 제공에 대한 별도 동의]<br>
                        <b><span style="text-decoration: underline">① 개인정보를 제공받는 자 :</span></b> 제주시소통협력센터 <br>
                        <b><span style="text-decoration: underline">② 개인정보를 제공받는 자의 개인정보 이용 목적 :</span></b> 사업홍보, 기록, 분석 및 아카이빙, 활동비 정산, 결과자료집 제작 <br>
                        <b><span style="text-decoration: underline">③ 제공하는 개인정보의 항목 :</span></b> 성명, 연락처(전화번호, 이메일), 사진 및 영상자료, 활동관련 자료 (인터뷰 내용 등) <br>
                        ④ 개인정보를 제공받는 자의 개인정보 보유 및 이용 기간 : 제공 후 3년 <br>
                        ⑤ 사용 매체명 : 인터넷 홈페이지, 자체 소식지, 사업소개 및 홍보자료, SNS (페이스북, 인스타그램, Youtube), 결과보고서 및 자료집 <br>
                    </div>
                    본 개인정보는 위에 명시된 목적 이외의 다른 용도로 사용되지 않고, 이용 목적이 달성된 후에는 지체없이 파기함을 알려드립니다. <br><br>
                  <span style="color:blue">※ 위와 같이 개인정보 및 초상권을 제공하는데 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 사업 참여에 제한을 받을 수 있습니다.</span><br>
                  위와 같이 개인정보를 수집·이용하는데 동의하시나요?
                    <br>
                    <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary26-1" name="ans29" value="예"/>
                    <label for="primary26-1">예, 동의합니다.</label>
                  </div>
                  <div class="icheck-primary form-check form-check-inline">
                    <input type="radio" id="primary26-2" name="ans29" value="아니오"/>
                    <label for="primary26-2">아니오, 동의하지 않습니다.</label>
                  </div>
              </div>

            
          </div>
          <div class="form-row submitArea">
            <div class="col-md-12 form-group">
              <p class="text-center">${todayTime}</p>
              <input type="text" class="form-control" name="agreename" id="agreename" placeholder="동의하시는 분 성함"/>
            </div>
          </div>
          
          <input type="button" class="btn btn-outline-primary btn-lg  ml-auto float-right mb-2" id="submit1" value="설문작성완료">
          <input type="button" class="btn btn-outline-primary btn-lg  ml-auto float-right mb-2" id="submit2" value="설문작성완료">
        </div>
 
    </div>
  </form>
 <div style="position:fixed;top:50%;left:46%;" class="displayLoding spinner">
  		<span><img src="${pageContext.request.contextPath}/resources/survey/img/spin.gif" /></span>
</div>



    <!-- jQuery first, then Bootstrap JS -->
    <%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/survey/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
      $(function () {
        $('#goto-step-2').on('click', function (e) {

          if($('input:radio[name=age]').is(':checked')==false){
            alert("1번 항목을 선택해 주세요.");
            $("#primary1-1").focus();
            return false;
          }else if($('input:radio[name=gender]').is(':checked')==false){
            alert("2번 항목을 선택해 주세요.");
            $("#primary2-1").focus();
            return false;
          }else if($('input:radio[name=area]').is(':checked')==false){
            alert("3번 항목을 선택해 주세요.");
             $("#primary3-1").focus();
            return false;
          }else if($("#name").val().length==0 || $("#phone").val().length==0){
            $("#name").focus();
            alert("작성자님의 이름 또는 연락번호를 입력해 주세요.");
            return false;
          }else if($("#name").val().length<2){
            $("#name").focus();
            alert("이름은 최소 2글자 이상이어야 합니다.");
            return false;
          }else{

            $('html, body').animate({
            scrollTop: 500
            }, 400, function() {
              $('#step-2-tab').tab('show');
            });

          }

        })

        $("#step-2-tab").on('click',function(e){
          if($('input:radio[name=age]').is(':checked')==false){
            alert("1번 항목을 선택해 주세요.");
            $("#primary1-1").focus();
            return false;
          }else if($('input:radio[name=gender]').is(':checked')==false){
            alert("2번 항목을 선택해 주세요.");
            $("#primary2-1").focus();
            return false;
          }else if($('input:radio[name=area]').is(':checked')==false){
            alert("3번 항목을 선택해 주세요.");
             $("#primary3-1").focus();
            return false;
          }else if($("#name").val().length==0 || $("#phone").val().length==0){
            $("#name").focus();
            alert("작성자님의 이름 또는 연락번호를 입력해 주세요.");
            return false;
          }else if($("#name").val().length<2){
            $("#name").focus();
            alert("이름은 최소 2글자 이상이어야 합니다.");
            return false;
          }else{

            $('html, body').animate({
            scrollTop: 500
            }, 400, function() {
              $('#step-2-tab').tab('show');
            });

          }
        });



        $('#goto-step-3').on('click', function (e) {

          if($('input:radio[name=ans5]').is(':checked')==false){
            alert("5번 항목을 선택해 주세요.");
            $("#primary5-1").focus();
            return false;
          }else if($('input:radio[name=ans6]').is(':checked')==false){
            alert("6번 항목을 선택해 주세요.");
            $("#primary6-1").focus();
            return false;
          }else if($('input:radio[name=ans7]').is(':checked')==false){
            alert("7번 항목을 선택해 주세요.");
            $("#primary7-1").focus();
            return false;
          }else if($('input:checkbox[name=ans8]').is(':checked')==false){
            alert("8번 항목을 선택해 주세요.");
            $("#primary8-1").focus();
            return false;
          }else if($('input:radio[name=ans9]').is(':checked')==false){
            alert("9번 항목을 선택해 주세요.");
            $("#primary9-1").focus();
            return false;
          }else if($("#primary10").val().length==0){
            alert("10번 항목을 선택해 주세요.");
            $("#primary10").focus();
            return false;
          }else if($("#primary11").val().length==0){
            alert("11번 항목을 선택해 주세요.");
            $("#primary11").focus();
            return false;
          }/* else if($("#primary12").val().length==0 || $("#primary12").val().length<5){
            alert("12번 설문을 최소 5글자 이상 작성해 주세요.");
            $("#primary12").focus();
            return false;
          }else if($("#primary13").val().length==0 || $("#primary13").val().length<5){
            alert("13번 설문을 최소 5글자 작성해 주세요.");
            $("#primary13").focus();
            return false;
          }else if($("#primary14").val().length==0 || $("#primary14").val().length<5){
            alert("14번 설문을 최소 5글자 작성해 주세요.");
            $("#primary14").focus();
            return false;
          }else if($("#primary15").val().length==0 || $("#primary15").val().length<5){
            alert("15번 설문을 최소 5글자 작성해 주세요.");
            $("#primary15").focus();
            return false;
          } */else{
            $('html, body').animate({
            scrollTop: 500
            }, 400, function() {
            $('#step-3-tab').tab('show');
            });
          }
         
        })

        $("#step-3-tab").on('click',function(e){
          if($('input:radio[name=ans5]').is(':checked')==false){
            alert("5번 항목을 선택해 주세요.");
            $("#primary5-1").focus();
            return false;
          }else if($('input:radio[name=ans6]').is(':checked')==false){
            alert("6번 항목을 선택해 주세요.");
            $("#primary6-1").focus();
            return false;
          }else if($('input:radio[name=ans7]').is(':checked')==false){
            alert("7번 항목을 선택해 주세요.");
            $("#primary7-1").focus();
            return false;
          }else if($('input:checkbox[name=ans8]').is(':checked')==false){
            alert("8번 항목을 선택해 주세요.");
            $("#primary8-1").focus();
            return false;
          }else if($('input:radio[name=ans9]').is(':checked')==false){
            alert("9번 항목을 선택해 주세요.");
            $("#primary9-1").focus();
            return false;
          }else if($("#primary10").val().length==0){
            alert("10번 항목을 선택해 주세요.");
            $("#primary10").focus();
            return false;
          }else if($("#primary11").val().length==0){
            alert("11번 항목을 선택해 주세요.");
            $("#primary11").focus();
            return false;
          }/* else if($("#primary12").val().length==0 || $("#primary12").val().length<5){
            alert("12번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary12").focus();
            return false;
          }else if($("#primary13").val().length==0 || $("#primary13").val().length<5){
            alert("13번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary13").focus();
            return false;
          }else if($("#primary14").val().length==0 || $("#primary14").val().length<5){
            alert("14번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary14").focus();
            return false;
          }else if($("#primary15").val().length==0 || $("#primary15").val().length<5){
            alert("15번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary15").focus();
            return false;
          } */else{
            $('html, body').animate({
            scrollTop: 500
            }, 400, function() {
            $('#step-3-tab').tab('show');
            });
          }
        });


      $('#goto-step-4').on('click', function (e) {
        if($('input:checkbox[name=ans16]').is(':checked')==false){
            alert("16번 항목을 선택해 주세요.");
            $("#primary16-1").focus();
            return false;
        }else if($('input:checkbox[name=ans17]').is(':checked')==false){
            alert("17번 항목을 선택해 주세요.");
            $("#primary17-1").focus();
            return false;
        }else if($('input:radio[name=ans18]').is(':checked')==false){
            alert("18번 항목을 선택해 주세요.");
            $("#primary18-1").focus();
            return false;
        }else if($('input:radio[name=ans19]').is(':checked')==false){
            alert("19번 항목을 선택해 주세요.");
            $("#primary19-1").focus();
            return false;
        }else if($('input:radio[name=ans20]').is(':checked')==false){
            alert("20번 항목을 선택해 주세요.");
            $("#primary20-1").focus();
            return false;
        }else if($('input:radio[name=ans21]').is(':checked')==false){
            alert("21번 항목을 선택해 주세요.");
            $("#primary21-1").focus();
            return false;
        }else if($('input:radio[name=ans22]').is(':checked')==false){
            alert("22번 항목을 선택해 주세요.");
            $("#primary22-1").focus();
            return false;
        }else if($('input:radio[name=ans26]').is(':checked')==false){
            alert("23번 항목을 선택해 주세요.");
            $("#primary23-1").focus();
            return false;
        }/* else if($("#primary24-1").val().length==0 || $("#primary24-1").val().length<5){
            alert("24번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary24-1").focus();
            return false;
          } */else if($('input:radio[name=ans28]').is(':checked')==false){
              alert("25번 항목을 선택해 주세요.");
              $("#primary25-1").focus();
              return false;
          }else{
          $('html, body').animate({
            scrollTop: 500
          }, 400, function() {
            $('#step-4-tab').tab('show');
          });
        }
      })

      $("#step-4-tab").on('click',function(e){
        if($('input:checkbox[name=ans16]').is(':checked')==false){
            alert("16번 항목을 선택해 주세요.");
            $("#primary16-1").focus();
            return false;
        }else if($('input:checkbox[name=ans17]').is(':checked')==false){
            alert("17번 항목을 선택해 주세요.");
            $("#primary17-1").focus();
            return false;
        }else if($('input:radio[name=ans18]').is(':checked')==false){
            alert("18번 항목을 선택해 주세요.");
            $("#primary18-1").focus();
            return false;
        }else if($('input:radio[name=ans19]').is(':checked')==false){
            alert("19번 항목을 선택해 주세요.");
            $("#primary19-1").focus();
            return false;
        }else if($('input:radio[name=ans20]').is(':checked')==false){
            alert("20번 항목을 선택해 주세요.");
            $("#primary20-1").focus();
            return false;
        }else if($('input:radio[name=ans21]').is(':checked')==false){
            alert("21번 항목을 선택해 주세요.");
            $("#primary21-1").focus();
            return false;
        }else if($('input:radio[name=ans22]').is(':checked')==false){
            alert("22번 항목을 선택해 주세요.");
            $("#primary22-1").focus();
            return false;
        }else if($('input:radio[name=ans26]').is(':checked')==false){
            alert("23번 항목을 선택해 주세요.");
            $("#primary23-1").focus();
            return false;
        }/* else if($("#primary24-1").val().length==0 || $("#primary24-1").val().length<5){
            alert("24번 설문을 최소 5자 이상 작성해 주세요.");
            $("#primary24-1").focus();
            return false;
          } */else if($('input:radio[name=ans28]').is(':checked')==false){
              alert("25번 항목을 선택해 주세요.");
              $("#primary25-1").focus();
              return false;
          }else{
          $('html, body').animate({
            scrollTop: 500
          }, 400, function() {
            $('#step-4-tab').tab('show');
          });
        }
    });

 
 });

	  $(document).ready(function($){
		$(".btnrating1").on('click',(function(e) {
      
        var previous_value = $("#primary10").val();
        
        var selected_value = $(this).attr("data-attr");
        $("#primary10").val(selected_value);
        
        $(".selected-rating1").empty();
        $(".selected-rating1").html(selected_value);
        
        for (i = 1; i <= selected_value; ++i) {
        $("#rating-star1-"+i).toggleClass('btn-primary');
        $("#rating-star1-"+i).toggleClass('btn-default');
        }
        
        for (ix = 1; ix <= previous_value; ++ix) {
        $("#rating-star1-"+ix).toggleClass('btn-primary');
        $("#rating-star1-"+ix).toggleClass('btn-default');
        }
      
      }));

      $(".btnrating2").on('click',(function(e) {
      
      var previous_value = $("#primary11").val();
      
      var selected_value = $(this).attr("data-attr");
      $("#primary11").val(selected_value);
      
      $(".selected-rating2").empty();
      $(".selected-rating2").html(selected_value);
      
      for (i = 1; i <= selected_value; ++i) {
      $("#rating-star2-"+i).toggleClass('btn-primary');
      $("#rating-star2-"+i).toggleClass('btn-default');
      }
      
      for (ix = 1; ix <= previous_value; ++ix) {
      $("#rating-star2-"+ix).toggleClass('btn-primary');
      $("#rating-star2-"+ix).toggleClass('btn-default');
      }
    
    }));		
	});





  function isCelluar(asValue) {
		//var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
		var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;

		if(asValue.indexOf("-")>0){
			var reg = exp.test(asValue); // 형식에 맞는 경우 true 리턴
			if(reg==false){
				alert("연락처 형식이 올바르지 않습니다.");
				$("#phone").val("");
				return false;
			}
			return true;
		
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
			return true; 		
		}


	}

  $("#primary22-1").on("click",function(){
    $(".unvisible").css("display","block");

  });
  

  $("#primary22-2").on("click",function(){
    $(".unvisible").css("display","none");
    $("input:radio[name='ans23']").prop("checked",false);
    $("input:radio[name='ans24']").prop("checked",false);
    $("input:radio[name='ans25']").prop("checked",false);
  });

  $("input:checkbox[name='ans8']").click(function(){
			   var count =$("input:checked[name='ans8']").length;
			   if(count > 2){
			    $(this).prop("checked",false);
			       alert("2개 까지만 선택할 수 있습니다");
			   }
		});


    $("input:checkbox[name='ans16']").click(function(){
			   var count =$("input:checked[name='ans16']").length;
			   if(count > 2){
			    $(this).prop("checked",false);
			       alert("2개 까지만 선택할 수 있습니다");
			   }
		});

    $("input:checkbox[name='ans17']").click(function(){
			   var count =$("input:checked[name='ans17']").length;
			   if(count > 2){
			    $(this).prop("checked",false);
			       alert("2개 까지만 선택할 수 있습니다");
			   }
		});

    
  $("#primary26-1").on("click",function(){
    $("#agreename").css("display","block");
    $("#submit2").css("display","none");
    $("#submit1").css("display","block");
    $("#submit1").on('click',(function(e) {
      if($("#agreename").val.length==0){
        alert("동의하시는 분의 성명을 입력해 주세요");
        return false;
      }else if($("#agreename").val() != $("#name").val()){
        alert("동의하시는 분의 성명이 일치하지 않습니다.");
        $("#agreename").focus();
        $("#agreename").val("");
        return false;
      }else{
       	//$("#form").submit();
       			// do ajax thingy here
				 var form1 = new FormData(document.getElementById('form'));
					$.ajax({
					    type: 'POST',
						url: "${pageContext.request.contextPath}/index", 
						data: form1,
						dataType: 'html',
						processData: false, 
						contentType: false, 		
						enctype: 'multipart/form-data',
						success: function(data){
							 $('#successModal').modal('show');
						}
						,beforeSend : function(){
							$(".spinner").removeClass("displayLoding");
						},
						complete:function(){
							$(".spinner").addClass("displayLoding");	
						},error : function(request,status,error){
							//alert("실패사유1  code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							$('#failModal').modal('show');
						}
					}) ;
					
      }

    }));
 });

  $("#primary26-2").on("click",function(){
    $("#agreename").css("display","none");
    $("#submit2").css("display","block");
    $("#submit1").css("display","none");
    $("#agreename").val("");
    $("#submit2").on('click',(function(e) {
      if($('input:radio[name=ans28]').is(':checked')==false){
            alert("25번 항목을 선택해 주세요.");
            $("#primary25-1").focus();
           return false;
      }else{
        var form2 = new FormData(document.getElementById('form'));
		$.ajax({
		    type: 'POST',
			url: "${pageContext.request.contextPath}/index", 
			data: form2,
			dataType: 'html',
			processData: false, 
			contentType: false, 		
			enctype: 'multipart/form-data',
			success: function(data){
			//	 alert("성공2 : " + data);
				 $('#successModal').modal('show');
			}
			,beforeSend : function(){
				$(".spinner").removeClass("displayLoding");
			},
			complete:function(){
				$(".spinner").addClass("displayLoding");	
			},error : function(request,status,error){
				//alert("실패사유2  code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
				$('#failModal').modal('show');
			}
		}) ;
      }
    }));
  });




  $("#submit1").on('click',(function(e) {

    if($('input:radio[name=ans28]').is(':checked')==false){
            alert("개인정보‧초상권 사용 동의에 체크 여부를 선택해 주세요.");
            $("#primary26-1").focus();
            return false;

    }else if($("#agreename").val() != $("#name").val()){
        alert("동의하시는 분의 성명이 일치하지 않습니다.");
        $("#agreename").focus();
        $("#agreename").val("");
        return false;
   }
 }));

  


    </script>
    
    <!-- 모달 -->
<div id="successModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
			<img src="${pageContext.request.contextPath}/resources/survey/img/check.png" width="5%" height="5%"/>
			&nbsp;&nbsp;<span style="font-size:16px">설문에 응답해 주셔서 감사합니다. </span>
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/'">OK</button>
      </div>
    </div>

  </div>
</div>


<div id="failModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-body">
			<img src="${pageContext.request.contextPath}/resources/survey/img/fail-icon.png" width="5%" height="5%"/>
			&nbsp;&nbsp;<span style="font-size:16px">You Have Fail.. Try a gain1</span>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/'">OK</button>
      </div>
    </div>
  </div>
</div>

 
  </body>
</html>