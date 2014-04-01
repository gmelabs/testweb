<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<html>
<body>
<h2>Hello World!</h2>
Si esto chuta aqui debería salir el nombre del entorno: <pre><%
	Enumeration<String> keys = request.getHeaderNames();
	out.println("<b>COMPUTER: " + System.getenv().get("COMPUTERNAME") + "</b><br>");
	while (keys.hasMoreElements())
	{
		String key = keys.nextElement();
		out.println(key + ": " + request.getHeader(key) + "");
	}
	out.println("<hr>");
	Map<String, String> env = System.getenv();
	for (String envName : env.keySet()) {
		out.println(envName + "=" + env.get(envName));
	}
	out.println("COMPUTER: " + env.get("COMPUTERNAME"));
	%></pre>
</body>
</html>
