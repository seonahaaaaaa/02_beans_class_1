<%@ page contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@page import="info.infoBean" %>

<%// <jsp:useBean id="빈 이름" class="자바빈 파일의 패키지.클래스명" /> %>
<% // <jsp:setProperty name="빈 이름" property="필드명" value="값" /> %>
<jsp:useBean id="bean" class="info.infoBean">
	<jsp:setProperty name="bean" property="*"/>
	<!--< jsp:setProperty name="bean" property="id"/> -->
</jsp:useBean>

<!DOCTYPE html>
<html>
<body>
	<h2>  당신의 신상명세서 확인 </h2>
	이   름  : <%= bean.getName() %><br/>
	주민번호 : <%= bean.getId() %><br/>
	성  별   : <%= bean.getGender() %><br/>  
	맞습니까????
</body>
</html>

<%/*
	setProperty : 생성된 자바 빈 객체에 프로퍼티 값을 지정하는 기능을 한다
	getProperty : 자바 빈 객체에서 저장된 프로퍼티 값을 사용하기 위해 사용된다

*/
%>