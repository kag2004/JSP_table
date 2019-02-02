<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<%@ page import="jsp.member.model.MemberBean" %>
	<%@ page import="jsp.member.model.MemberDAO" %>
<title>Insert title here</title>
</head>
<body>

	<%	/* 한글 처리 UTF-8 */
	request.setCharacterEncoding("UTF-8");
	%>
	
	<% 
	/* 자바빈 불러 오기 위해서 선언 문 */ 
	/* 주의 사항 property ="*" 하려면 그러나 폼으로부터 넘어오는 파라미터의 이름과 개수가 프로퍼티의 이름과 개수와 일치해야 한다.  */%>
	
	<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean"></jsp:useBean>
	<jsp:setProperty property="*" name="memberBean"/> 
	
	
	
	<%
	/* JoinForm.jsp 값을 받아 String값으로 변수값 저장 */
	/* String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name"); */

	/* type=여러개 받아야 하는 select와 성별 등은 []배열로 받아야 해서 다르다 그리고 
		배열은 받을때는 getParameter도 다르다 중요는 그냥 value 넣으면 거희다 이런식인듯?*/
	/* String gender[] =request.getParameterValues("gender");
	String birth_yy =request.getParameter("birth_yy");
	String birth_mm[] =request.getParameterValues("birth_mm");
	String birth_dd = request.getParameter("birth_dd");
	
	String email_1 = request.getParameter("email_1");
	String email_2[] = request.getParameterValues("email_2");
	
	String phone = request.getParameter("phone");
	String address = request.getParameter("address"); */
	%>
	
<div id="wrap">
        <br><br>
        <b><font size="5" color="gray">회원가입 정보를 확인하세요.</font></b>
        <br><br>
        <font color="blue">
        	<%=memberBean.getName() %></font>님 가입을 축하드립니다.
        <br><br>
        
        <table>
            <tr>
                <td id="title">아이디</td>
                <td><%=memberBean.getId() %></td>
            </tr>
                        
            <tr>
                <td id="title">비밀번호</td>
                <td><%=memberBean.getPassword() %></td>
            </tr>
                    
            <tr>
                <td id="title">이름</td>
                <td><%=memberBean.getName() %></td>
            </tr>
                    
            <tr>
                <td id="title">성별</td>
                <td>
                <%=memberBean.getGender() %>
                <%-- <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String g : gender){
                        out.println(g);
                    }
                %> --%>
                </td>
            </tr>
                    
            <tr>
                <td id="title">생일</td>
                <td>
                <%=memberBean.getBirth_yy() %>년 
                <%-- <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String m : birth_mm){
                        out.println(m);
                    }        
                %> --%>
				<%=memberBean.getBirth_mm() %>월
                <%=memberBean.getBirth_dd() %>일	
             
                </td>
            </tr>
                    
            <tr>
                <td id="title">이메일</td>
                <td>
                    <%=memberBean.getEmail_1() %>
                    <%-- <%
                    // 배열로 넘겨받은 값을 처리하기 위해 for문 이용
                    for(String e : email_2){
                        out.println("@"+e);
                    }        
                    %> --%>
                    <%=memberBean.getEmail_2() %>
                </td>
            </tr>
                    
            <tr>
                <td id="title">휴대전화</td>
                <td><%=memberBean.getPhone() %></td>
            </tr>
            <tr>
                <td id="title">주소</td>
                <td>
                    <%=memberBean.getAddress() %>
                </td>
            </tr>
        </table>
        
        <br>
        <input type="button" value="확인">
    </div>
</body>
</html>