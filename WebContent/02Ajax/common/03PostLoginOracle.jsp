<%@page import="controller.OracleDAO"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--JSON콜백 시 공백 제거 --%>
<%@page trimDirectiveWhitespaces="true" %>


<%
//폼값을 받음
String id = request.getParameter("user_id");
String pw = request.getParameter("user_pw");

OracleDAO dao = new OracleDAO();
boolean isMember = dao.isMember(id,pw);
JSONObject json = new JSONObject();

if(isMember == true){
	json.put("result", 1);
	json.put("message", "로그인 성공이다");
	
	String html = "";
	html += "<table class='table table-bordered' style='width:300px;'";
	html += "<tr>";
	html += "  <td>회워님 반갑습니다.</td>";
	html += "</tr>";
	html += "</table>";
	
	json.put("html", html);
} else {
	json.put("result", 0);
	json.put("message", "로그인 실패입니다.");
}

String jsonStr = json.toJSONString();
out.println(jsonStr);

%>


















