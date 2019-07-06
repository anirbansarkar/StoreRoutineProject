<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Employee Page</title>
	<link rel="shortcut icon" href="images/icon.ico" />
	<link rel="stylesheet" href="css/managerstyle.css" />
</head>
<body>
	<%
	if (!(session.getAttribute("uname").equals("anirban")) || !(session.getAttribute("pass").equals("siliguri")) 
	    	|| !(session.getAttribute("role").equals("emp"))) {
	%>
	<p>You are not logged in<br/></p>
	<a href="sign_in_page.html">Please Login</a>
	<%} else {
	%>
	<header>
		<div class="container">
			<div class = "leftpane">
				<div class = "dp">
					<img src="images/dp.jpg" alt="">
				</div>
				<div class = "welcome_text">
					<h1>Welcome <%=session.getAttribute("uname")%></h1>
				</div>
				<div class = "button_list">
					<button type="button" onclick="update()">Update</button>					
					<a href = "logout.jsp"><button type="button" id="logout">Logout</button></a>
				</div>
			</div>
			<div class  = "rightpane" id = "display">
				<div class = "heading">
					<h1>Welcome Employee!</h1>
				</div>			
			</div>
		</div>
	</header>
    <%}
	%>
<script>
	function update() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      document.getElementById("display").innerHTML =
		      this.responseText;
		    }
		  };
		  xhttp.open("GET", "update.jsp", true);
		  xhttp.send();
	}
</script>
</body>
</html>