<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>--회원 가입--</title>
	<script type="text/javascript">
	function checkvalue(){
	
		if(!document.userInfo.id.value){
			alert("아이디를 입력하세요.");
			return false;
		}if(!document.userInfo.password.value){
			alert("아이디를 입력하세요.");
			return false;
		}if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
            alert("비밀번호를 동일하게 입력하세요.");
            return false;
        }
	}

	
	</script>
</head>
<body>
	<div id="wrap">
	<br><br>
	<b><font size="6" color="gray">회원가입</b>
	<br><br>
		<!-- onsubmit : 예외 처리 나올때는 false가 나온다. -->
		<form action="../pro/Joinpro.jsp" method="post" name="userInfo" onsubmit="return checkValue()">
		<table>
			<tr>
				<td id="title">아이디</td>
				<td>
					<input type="text" name="id" maxlength="20">
					<input type="button" value="중복확인">
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호</td>
				<td>
					<input type="password" name="password" maxlength="15">
					<!-- 비밀번호 특수 문자 및 css빨간색 처리 해주기 -->
				</td>
			</tr>
			<tr>
				<td id="title">비밀번호 재확인</td>
				<td>
					<input type="password" name="password" maxlength="15">
				</td>
			</tr>
			<tr>
				<td id="title">이름</td>
				<td>
					<input type="text" name="name" maxlength="20">
				</td>
			</tr>
			<tr>
				<td id="title">성별</td>
				<td>
				<input type="radio" name="gender" vlaue="남자" checked>남자
				<input type="radio" name="gender" vlaue="여자" checked>여자
				</td>
			</tr>
			<tr>
				<td id="title">생년월일</td>
				<td>
					<input type="text" name="birth_yy" maxlength="4" placeholder="년(ex1900)" size=6>
					<select name="birth_mm">
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
					</select>
					<input type="text" name="birth_dd" maxlength="2" placeholder="일" size="4">
				</td>
			</tr>
			<tr>
            	<td id="title">이메일</td>
                <td>
                	<input type="text" name="email_1" maxlength="30">
                    <select name="email_2">
                    	<option>naver.com</option>
                        <option>daum.net</option>
                        <option>gmail.com</option>
                        <option>nate.com</option>                        
                    </select>
                </td>
            </tr>
           	<tr>
            	<td id="title">휴대전화</td>
                <td>
                 	<input type="text" name="phone" />
                </td>
             </tr>
             <tr>
                 <td id="title">주소</td>
                 <td>
                 	<input type="text" size="50" name="address"/>
                 </td>
             </tr>
		</table>
		<input type="submit" value="회원가입"/>
		<input type="button" value="취소">
	</form>
</div>

</body>
</html>