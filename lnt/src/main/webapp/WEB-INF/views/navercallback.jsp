<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
        var naver_id_login = new naver_id_login("ilGF_w3CT8tn3xcNjxEq", "http://bluering.pe.kr/lnt/navercallback"); // 역시 마찬가지로 'localhost'가 포함된 CallBack URL
        
        // 접근 토큰 값 출력
        //alert(naver_id_login.oauthParams.access_token);
        
        // 네이버 사용자 프로필 조회
        naver_id_login.get_naver_userprofile("naverSignInCallback()");
        
        // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
        function naverSignInCallback() {
            //alert(naver_id_login.getProfileData('email'));
            //alert(naver_id_login.getProfileData('nickname'));
            var nick = naver_id_login.getProfileData('nickname');
            var email = naver_id_login.getProfileData('email');
            var profile_image = naver_id_login.getProfileData('profile_image'); 
            var mobile = naver_id_login.getProfileData('mobile')
            opener.location.href="${pageContext.request.contextPath}/activeDetail?idx=1&navername="+nick+"&naveremail="+email+"&naver_profile_image="+profile_image+"&navermobile="+mobile;
            window.close();
        }
       

    </script>

</body>
</html>