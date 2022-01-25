<%-- 
    Document   : index
    Created on : 25 ene. 2022, 12:37:32
    Author     : user
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hola Mundo JSP</title>
    </head>
    <body>
        <h1>Ejercicio de Hola Mundo con JSPs</h1>
        <ul>
            <li> Hola Mundo con HTML
            <li> <% out.print("Hola Mundo con Scriptles");%>
            <li> ${"Hola Mundo con Expression Language (EL)"}
            <li> <c:out value="Hola Mundo con JSTL"/>           
        </ul>
        <ul>
            <li> Hola: <%= new java.util.Date()%> <%-- si ponemos un <%= esto no es un scriptles sino que se usa para imprimir una expresi�n o valor de java --%>
            <li> Nombre del Contexto de la aplicaci�n:
                <%= request.getContextPath()%> <%--Variable impl�cita, ya tiene un valor, no necesitamos declararla--%>
            <li> Valor del par�metro x:
                <%= request.getParameter("x")%><%--Variable expl�cita, nos devuelve null porque nunca le hemos dado valor--%>
        </ul>
    </body>
</html>
