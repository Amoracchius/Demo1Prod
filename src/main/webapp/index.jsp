<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Oswald:400,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./style.css">
<title>Products</title>
</head>
<body>
<h2>Products List</h2>
<p><a href='<c:url value="/create" />'>Create new</a></p>
<table>
<tr><th>Name</th><th>Price</th><th></th></tr>
<c:forEach items="${products}" var="product">
 <tr><td>${product.name}</td>
    <td>${product.price}</td>
    <td>
    <a href='<c:url value="/edit?id=${product.id}" />'>Edit</a> |
    <form method="post" action='<c:url value="/delete" />' style="display:inline;">
        <input type="hidden" name="id" value="${product.id}">
        <input type="submit" value="Delete">
    </form>
 </td></tr>
</c:forEach>
</table>
</body>
</html>