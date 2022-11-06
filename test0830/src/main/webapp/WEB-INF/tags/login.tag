<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${mid != null}">
<form action="login.do" method="post">
	<input type="hidden" name="mid" value="${mid}">
<c:choose>
	<c:when test="${type=='login'}">
		<input type="hidden" name="action" value="logout">
		<input type="text" name="login">
		<input type="submit" value="로그아웃">
	</c:when>
	</c:choose>
	</form>
</c:if>

<c:if test="${mid == null}">
<form action="logout.do" method="post">
	<input type="hidden" name="mid" value="${mid}">
<c:choose>
	<c:when test="${type=='logout'}">
	<input type="hidden" name="action" value="login">
		ID&nbsp;<input type="text" name="mid">&nbsp;&nbsp;PW&nbsp;<input type="password" name="mpw">&nbsp;&nbsp;
		<input type="submit" value="로그인">
	</c:when>
	</c:choose>
	</form>
</c:if>



<!-- 
<form action="login.do" method="post">
<c:choose>
	<c:when test="${mid != null}">
		<input type="hidden" name="action" value="logout">
		<input type="submit" value="로그아웃">
	</c:when>
	<c:otherwise>
		<input type="hidden" name="action" value="login">
		ID&nbsp;<input type="text" name="mid">&nbsp;&nbsp;PW&nbsp;<input type="password" name="mpw">&nbsp;&nbsp;
		<input type="submit" value="로그인">
	</c:otherwise>
</c:choose>
</form>
-->