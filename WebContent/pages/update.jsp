<%@page import="Anirban.ProductShelf"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/rightpane.css" />
</head>
<body>
	<jsp:useBean id="ob" class="Anirban.ProductShelf"/>
	<div class = "container">
		<div class = "heading">
			<h1>Update the following products : </h1>
		</div>
		<div class = "tabledetails">
			<form method = "POST" action = "updatedproduct.jsp">
				<table>
					<tr><th>Product Name</th><th>Quantity</th></tr>
					<%
						ArrayList<ProductShelf> arr = ob.getdetails();
						for(ProductShelf a : arr) {
							%>
							<tr><td><%=a.getPid()%></td>
							<%
								String qname = "quantity" + a.getPid();
							%>
							<td><input type = "text" name = <%=qname %> placeholder="0" required></td>
							</tr>
							<%
						}
					%>
				</table>
				<input type = "submit" value = "Submit" id="submit">
			</form>
		</div>
	</div>
</body>
</html>