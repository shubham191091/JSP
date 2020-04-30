<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>
<%@ page import = "java.text.DateFormat,java.util.Date" %>

<%
   // Set response content type
   response.setContentType("text/html");
   
   // Set spanish language code.
   response.setHeader("Content-Language", "fr");
   String title = "Bonjour";
   
   //Get the client's Locale
   Locale locale = request.getLocale( );
   
   String date = DateFormat.getDateTimeInstance(
		      DateFormat.FULL, 
		      DateFormat.SHORT, 
		      locale).format(new Date( ));
%>

<html>
   <head>
      <title><%  out.print(title); %></title>
   </head>
   
   <body>
      <div align = "center">
         <p>Local Date: <%  out.print(date); %></p>
      </div>
      
      <div align = "center">
         <p>Bonjour</p>
         
      </div>
   </body>
</html>