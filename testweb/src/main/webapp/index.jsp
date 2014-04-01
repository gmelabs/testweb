<%@page import="java.util.Enumeration"%>
<html>
<body>
<h2>Hello World!</h2>
Si esto chuta aqui debería salir el nombre del entorno: <%
	Enumeration<String> keys = session.getAttributeNames();
	while (keys.hasMoreElements())
	{
	  String key = keys.nextElement();
	  out.println(key + ": " + session.getValue(key) + "<br>");
	}
	%>
</body>
</html>
