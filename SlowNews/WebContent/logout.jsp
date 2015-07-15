<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
<h1>Slow News</h1>
<h2>Logout Page</h2>
<nav> 
 <a href="doIndex">Main</a>&nbsp;|&nbsp;
 <a href="doLogin">Login</a>&nbsp;|&nbsp;
 <a href="doArchive">Archive</a>
</nav>
<h3>Hello&nbsp;<% 
Object usr = session.getAttribute("UserName");  
out.print( (usr == null)?"Anon":usr); %></h3>
<div>
 <form action="doLogout" method="get" name="dasform">
 <input type="submit" value="logout" />
 </form>
</div>
</body>
</html>