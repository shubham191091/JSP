<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>  
<head>  
<title>Core Tag Example</title>  
</head>  
<body>  
<h1>JSTL c:when, c:otherwise, c:choose</h1>  
  
<c:set value="10" var="num"></c:set>  
<c:choose>  
<c:when test="${num%2==0}">  
<c:out value="${num} is even number"></c:out>  
</c:when>  
<c:otherwise>  
<c:out value="${num} is odd number"></c:out>  
</c:otherwise>  
</c:choose>  

<c:set var="income" scope="session" value="${4000*4}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/><p>  
</c:if>

<p>Before Remove Value is: <c:out value="${income}"/></p>  
<c:remove var="income"/>  
<p>After Remove Value is: <c:out value="${income}"/></p>  
  
</body>  
</html>  