<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function juso_search()  // 우편번호 버튼 클릭시 호출 함수명
	{
	  new daum.Postcode({
	      oncomplete: function(data) {
	        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	            addr = data.roadAddress;
	        } else { // 사용자가 지번 주소를 선택했을 경우(J)
	            addr = data.jibunAddress;
	        }
	
	        // 우편번호와 주소 정보를 해당 필드에 넣는다.
	        document.pkc.zip.value = data.zonecode; // 우편번호
	        document.pkc.juso.value = addr;  // 주소
	        // 커서를 상세주소 필드로 이동한다.
	        document.pkc.jusoEtc.focus();
	    }
	  }).open();
	}
	
	function pwdchk() {
		var pwd1=document.getElementById("pwd1");
		var pwd2=document.getElementById("pwd2");
		var msg=document.getElementById("msg");
		
		if(pwd1.value!=pwd2.value) {
			msg.innerText="비밀번호가 일치하지 않습니다.";
			msg.style.color="red";
		} else {
			msg.innerText="";
		}
		
	}
</script> 
</head>
<body>
	<form method="post" action="memberOk">
		<div> 
			<input type="text" name="userid" placeholder="아이디"> 
			<input type="button" onclick="useridChk()" value="중복 확인"> 
		</div>
		<div> <input type="text" name="pwd" id="pwd1" placeholder="비밀번호" oninput="pwdchk()"> </div>
		<div> <input type="text" id="pwd2" placeholder="비밀번호 확인" oninput="pwdchk()"> </div>
		<div id="msg"></div>
		<div> <input type="text" name="zip" readonly placeholder="우편번호"> <input type="button" value="주소검색" onclick="juso_search()"> </div>
		<div> <input type="text" name="juso" readonly placeholder="주소"> </div>
		<div> <input type="text" name="jusoEtc" placeholder="나머지 주소"> </div>
		<div> <input type="submit" value="회원가입"> </div>
	</form>
</body>
</html>