<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Manager Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/userstyle.css" />
</head>
<body>
	<%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")
    	|| (session.getAttribute("pass") == null) || (session.getAttribute("pass") == "")
    	|| (session.getAttribute("role") == null) || (session.getAttribute("role") == "")) {
	%>
	<p>You are not logged in<br/></p>
	<a href="sign_in_page.html">Please Login</a>
	<%} else {
	%>
	<p>Welcome <%=session.getAttribute("uname")%></p>
    <%}
	%>
</body>
</html>