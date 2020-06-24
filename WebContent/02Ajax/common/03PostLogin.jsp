<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page trimDirectiveWhitespaces="true" %>


<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");

//jsp에서 JSON을 사용하기위해 확장라이브러리 설치후 객체 생성함
JSONObject jsonObj = new JSONObject();

if(user_id.equals("kosmo") && user_pw.equals("1234")){
	/*
	JSONObject 객체를 통해 key, value를 입력한다.
	사용법은 Map컬렉션과 동일하다. 아래와 같이 하면
	JSON객체가 생성된다.
	*/
	jsonObj.put("user_id", user_id);
	jsonObj.put("user_name", "홍길동");
	jsonObj.put("user_pw", user_pw);
	jsonObj.put("result", 1);
} else {
	//아이디/패스워드가 일치하지 않은경우 result를 0으로 반환한다.
	jsonObj.put("result", 0);
}

//JSON객체를 String타입으로 형변환후 화면에 내용을 출력한다.
//String jsonTxt = jsonObj.toJSONString();
//out.println(jsonTxt);



//toJSONString()을 하지 않고 실행했을때도 정상 작동했다.
out.println(jsonObj);




//콜백결과 : {"result":1,"user_pw":"1234","user_id":"kosmo","user_name":"홍길동"}
%>
























