<%@page import="Anirban.ProductShelf"%>
<%@page import="java.util.*"%>
<%@ page import = "java.text.*" %>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.ProductShelf"/>
	<div class = "container">
		<div class = "heading">
			<h1>Assign Routines : </h1>
		</div>
		<div class = "tabledetails">
			<form name="routineschedule" id="form">
				<table>
					<tr><th>Day</th><th>Gap Scan</th><th>Gap Fill</th></tr>
					<tr><td><%
         				Date date = new Date();
						SimpleDateFormat ft = new SimpleDateFormat ("EEEE");
         				String day = ft.format(date);
      					%><%=day%></td>
      					<td><input type="checkbox" name="routine" value="gapscan" checked></td>
      					<td><input type="checkbox" name="routine" value="gapfill"></td>
      				</tr>
				</table><br/>
				<input type="button" value="Submit" onclick="return take_values()" id="submit">	
			</form>
		</div>
	</div>
	<script type="text/javascript">
	function take_values() {
		var http = new XMLHttpRequest();
		http.open("POST", "http://http://localhost:8080/StoreRoutineOnline/pages/routine.jsp", true);
		http.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		var params = "day=" + day +"value="+routineschedule.getElementById("routine"); // probably use document.getElementById(...).value
		http.send(params);
		http.onload = function() {
		alert(http.responseText);
	}
	</script>
</body>
</html>