<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 

<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요. (인증번호가 맞아야 다음 단계로 넘어가실 수 있습니다.)</span> <br> <br>    
        <br> <br>
        
        
        <div style="text-align:center;">
   
                    <form action="./join_injeung" method="post">                 
             
                        <br>
                        <div>
                            인증번호 입력 : <input type="number" name="email_injeung"
                                placeholder="안내 받은 인증번호를 입력하세요. ">
                        </div>                                        
 						<input type="hidden" name="dice" value="${dice }" />
 						<input type="hidden" name="e_mail" value="${e_mail }" />
                        <br> <br>
                        <button type="submit" name="submit">인증번호 전송</button>
                          </form>
 
  	</div>
      
  
      

 
</body>
</html>
