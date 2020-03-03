<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./style.css">
<title>Edit product</title>
</head>
<body>
<h3>Edit product</h3>
<form method="post">
<input type="hidden" value="${product.id}" name="id" />
<label>Name</label><br>
<input name="name" value= ${product.name} /><br><br>
<label>Price</label><br>
<input name="price" value= ${product.price} type="number" min="100" /><br><br>
<input type="submit" value="Send" class="edit-btn"/>
</form>
</body>
</html>