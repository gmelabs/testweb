<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%><%

String entorno = System.getenv().get("entorno");
if (entorno == null) entorno = "null";
String descEntorno = "Entorno Desconocido :O";
String color = "gray";
if (entorno.equals("ei")) {
	descEntorno = "Entorno de TEST";
	color = "green";
} else if (entorno.equals("qt")) {
	descEntorno = "Entorno de CERTIFICACIÓN";
	color = "orange";
} else if (entorno.equals("pr")) {
	descEntorno = "Entorno de PRODUCCIÓN";
	color = "red";
}
%>
<html>
 <head><title>Hola <%= descEntorno %></title></head>
 <body>
  <h1 style="color:<%= color %>;">Hello World!</h1>
  <span style="color: <%= color %>;">Estamos en el <%= descEntorno %> (<b><%= entorno %></b>)</span>
 </body>
</html>
