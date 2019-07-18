<%@page import="Anirban.FillShelf"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.FillShelf"/>
   	<%
   		ob.updateShelf();
   		ob.updateWarehouse();
   		ob.resetOrder();
   	%>
	<script>
		alert("Quantity filled Successfully!")
		window.location.href = "employee.jsp";
	</script>
</body>
</html>