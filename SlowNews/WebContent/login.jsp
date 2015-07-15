<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    session="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Login</title>
<link rel="stylesheet" href="styles/main.css" >
</head>
<body>
<h1>Slow News</h1>
<h2>Login Page</h2>
<nav> 
 <a href="doIndex">Main</a>&nbsp;|&nbsp;
 <a href="doLogin">Login</a>&nbsp;|&nbsp;
 <a href="doArchive">Archive</a>
</nav>
<div>
 <form action="doLogin" method="get" name="dasform">
 <label for="input_usr_id">Nick</label>
 <input type="text" name="username" id="input_usr_id"/>
 <br>
 <input type="submit" value="login" />
 </form>
</div>
</body>
</html>