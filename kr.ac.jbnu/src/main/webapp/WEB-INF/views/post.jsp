<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Post Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Post
</h1>

<c:url var="addAction" value="/post/add" ></c:url>

<form:form action="${addAction}" commandName="post">
<table>
	<c:if test="${!empty post.post_title}">
	<tr>
		<td>
			<form:label path="post_key">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="post_key" readonly="true" size="8"  disabled="true" />
			<form:hidden path="post_key" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="post_title">
				<spring:message text="Title"/>
			</form:label>
		</td>
		<td>
			<form:input path="post_title" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="post_content">
				<spring:message text="Content"/>
			</form:label>
		</td>
		<td>
			<form:input path="post_content" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="post_visible">
				<spring:message text="Visibility"/>
			</form:label>
		</td>
		<td>
			<form:input path="post_visible" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="post_owner">
				<spring:message text="Owner"/>
			</form:label>
		</td>
		<td>
			<form:input path="post_owner" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty post.post_title}">
				<input type="submit"
					value="<spring:message text="Edit Post"/>" />
			</c:if>
			<c:if test="${empty post.post_title}">
				<input type="submit"
					value="<spring:message text="Add Post"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Posts List</h3>
<c:if test="${!empty listPosts}">
	<table class="tg">
	<tr>
		<th width="80">Post ID</th>
		<th width="120">Post Title</th>
		<th width="120">Post Content</th>
		<th width="120">Post Visible</th>
		<th width="120">Post Owner</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listPosts}" var="post">
		<tr>
			<td>${post.post_key}</td>
			<td>${post.post_title}</td>
			<td>${post.post_content}</td>
			<td>${post.post_visible}</td>
			<td>${post.post_owner}</td>	
			<td><a href="<c:url value='/edit_post/${post.post_key}' />" >Edit</a></td>
			<td><a href="<c:url value='/remove_post/${post.post_key}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>