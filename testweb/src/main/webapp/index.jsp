<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="acn.b.gmelabs.web.Prueba"%><%

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

String suma;

String sNum1 = request.getParameter("num1");
String sNum2 = request.getParameter("num2");

Integer num1 = null;
Integer num2 = null;

if (sNum1 == null && sNum2 == null) suma = "Introduzca dos números";
else {
	try {
		num1 = Integer.parseInt(sNum1);
		num2 = Integer.parseInt(sNum2);
		suma = "La suma es: " + (new Prueba()).suma(num1, num2);
		
	} catch(NumberFormatException e) {
		suma = "No se puede sumar '" + sNum1 + "' y '" + sNum2;
	}
}
%>
<html>
 <head><title>Hola <%= descEntorno %></title></head>
 <body>
  <h1 style="color:<%= color %>;">Hello World!</h1>
  <span style="color: <%= color %>;">Estamos en el <%= descEntorno %> (<b><%= entorno %></b>)</span>
  <br>
  <%= suma %>
  <form action="index.jsp" method="get">
    <input type="text" value="<%= sNum1 %>"/> + <input type="text" value="<%= sNum2 %>"/> <input type="submit"/>
  </form>
 </body>
</html>
