<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@page import="com.techmind.dropdown.DropDown"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	System.out.println("20000000000000000000000000000000");
	String keyword = request.getParameter("keyword");
	System.out.println("keyword4444444444444 " + keyword);
	String name = "";
	DropDown ddl = new DropDown();
	String jString = "";
%>


<% 
	JSONObject json = new JSONObject();

	JSONArray jArray = new JSONArray();
	
	java.util.Iterator list=ddl.getRecommend(keyword).iterator();
	
	while(list.hasNext())
	{
		HashMap tempMap = (HashMap) list.next();
		name = (String) tempMap.get("name");
		json.put("name",name);
		jString = json.toString();
		JSONObject jsonObject1 = new JSONObject(jString);
		jArray.put(jsonObject1);
		
		
	}
	


%>

<%


	System.out.println("TTTTTTTTTTTTTTTTTTTTTTTTTTTTT");
	out.print(jArray.toString());
	
%>





