<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Member Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Member
</h1>

<c:url var="addAction" value="/member/add" ></c:url>

<form:form action="${addAction}" commandName="member">
<table>
	<c:if test="${!empty member.member_name}">
	<tr>
		<td>
			<form:label path="member_key">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="member_key" readonly="true" size="8"  disabled="true" />
			<form:hidden path="member_key" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="member_name">
				<spring:message text="Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="member_name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="birthday">
				<spring:message text="Birthday"/>
			</form:label>
		</td>
		<td>
			<form:input path="birthday" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="email_address">
				<spring:message text="EmailAddress"/>
			</form:label>
		</td>
		<td>
			<form:input path="email_address" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="password">
				<spring:message text="PassWord"/>
			</form:label>
		</td>
		<td>
			<form:input path="password" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty member.member_name}">
				<input type="submit"
					value="<spring:message text="Edit Member"/>" />
			</c:if>
			<c:if test="${empty member.member_name}">
				<input type="submit"
					value="<spring:message text="Add Member"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Members List</h3>
<c:if test="${!empty listMembers}">
	<table class="tg">
	<tr>
		<th width="80">Member ID</th>
		<th width="120">Member Name</th>
		<th width="120">Member Birthday</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listMembers}" var="member">
		<tr>
			<td>${member.member_key}</td>
			<td>${member.member_name}</td>
			<td>${member.birthday}</td>
			<td>${member.email_address}</td>
			<td>${member.password}</td>
<%-- 			<td>${member.email_address}</td> --%>
			<td><a href="<c:url value='/edit/${member.member_key}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove/${member.member_key}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>