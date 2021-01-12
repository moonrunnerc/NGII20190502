<%@page import="java.util.Iterator" %>
<%@page import="java.util.Map" %>
<%@page import="org.jasig.cas.client.authentication.AttributePrincipal" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>CAS Demo</title>
</head>
<body>
<%
	AttributePrincipal principal = (AttributePrincipal)request.getUserPrincipal();
	Map attributes = principal.getAttributes();	
	Iterator attributeNames = attributes.keySet().iterator();
	out.println("<table>");
	 //以下信息如果想获取到需要联系CAS管理员配置，默认只包括uid，如果需要其他信息，需要在申请里注明使用用户中心数据：
	 //uid：netid；
	 //employeeType：类别，学生1，教师2；
	 //cn：为了防止乱码，传输的是encode以后的姓名，需要在下边进行decode回来；
	 //affiliation：用户类别,暂无用；
	 //employeeNumber：职工号。
	 //depId（部门编号）
	for (; attributeNames.hasNext();) {
			out.println("<tr><th>");
			String attributeName = (String) attributeNames.next();
	      	out.println(attributeName);
	      	out.println("</th><td>");
	      	Object attributeValue = attributes.get(attributeName);
	      	//如果是姓名，则进行decode
	      	if(attributeName.equals("cn")){
	      		attributeValue = java.net.URLDecoder.decode(attributeValue.toString(),"utf-8");   
	      	}
	      	out.println(attributeValue);
	      	out.println("</td></tr>");
	}
	out.println("</table>");
%>

<p>
	<a href="logout.jsp">从CAS登出</a>
</p>
</body>
</html>