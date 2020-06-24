<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
PrintToday.jsp바로가기 누르면 뜨는 팝업창에서 소스보기를하면
페이지 지시어때문에 상단에 공백부터 생긴다. 이를 제거해주는 지시어
ajax에서 콜백되는 내용은 항상 페이지 소스보기로 결과를 확인해야한다.

페이지 상단에 불필요한 공백을 제거하기위해 사용되는 디렉티브로 
안드로이드에서 서버와 통신할때 가끔 공백때문에 에러발생하는 경우가
있으므로 반드시 제거해주는것이 좋다.(샘의 경험)
 --%>
<%@page trimDirectiveWhitespaces="true" %>    

<%-- 파일명 : 02PrintTOday.jsp--%>



<%
request.setCharacterEncoding("UTF-8");
String msg = request.getParameter("msg");
String varStr = request.getParameter("varStr");
String today = 
	new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());

out.println("<h2>메시지:"+msg+"</h2>");
out.println("<h2>varStr:"+varStr+"</h2>");
out.println("<h2>오늘날자:"+today+"</h2>");

%>