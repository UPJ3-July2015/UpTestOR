<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    session="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Main page</title>
<link rel="stylesheet" href="styles/main.css" >
</head>
<body>
<h1>Slow News</h1>
<h2>Index page</h2>
<nav> 
 <a href="doIndex">Main</a>&nbsp;|&nbsp;
 <a href="doLogin">Login</a>&nbsp;|&nbsp;
 <a href="doArchive">Archive</a>
</nav>
<h3>Hello&nbsp;<% 
Object usr = session.getAttribute("UserName");  
out.print( (usr == null)?"Anon":usr); %></h3>
<div class="content">
<h2>Today</h2>
</div>
</body>
</html>