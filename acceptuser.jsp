<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>User Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/userstyle.css" />
</head>
<body>
	<h1>Verifying User</h1>
	<jsp:useBean id="ob" class="Anirban.ValidateUser"/>

	<jsp:setProperty name="ob" property="uname"/>
	<jsp:setProperty name="ob" property="pass"/>
	<jsp:setProperty name="ob" property="role"/>

	<p>The details entered are as follows:</p>
	<p>Username : <jsp:getProperty name="ob" property="uname"/></p>
	<p>Password : <jsp:getProperty name="ob" property="pass"/></p>
	<p>Role : <jsp:getProperty name="ob" property="role"/></p>

	<%if(ob.validate("Anirban","1234","man")){%>
		<p>Welcome Store Manager</p>
	<%}else{%>
		<p>Invalid User</p>
	<%}%>
</body>
</html>