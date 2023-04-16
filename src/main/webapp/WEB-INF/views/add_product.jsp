<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>${title}</title>
    <jsp:include page="all_css_js.jsp"/>
</head>
<body>
<div class="container mt-3">
    <div class="col-md-6 offset-md-3">
        <h1 class="text-center mb-3">Fill the product detail</h1>
        <form action="submitForm" method="post">
            <div class="form-group my-1">
                <label for="productName">Product Name</label>
                <input name="name" type="text" class="form-control" id="productName"
                       placeholder="Enter product Name" required>
            </div>
            <div class="form-group my-1">
                <label for="productDescription">Product Description</label>
                <textarea name="description" class="form-control" placeholder="Enter product description" id="productDescription" required></textarea>
            </div>
            <div class="form-group my-1">
                <label for="productPrice">Product Price</label>
                <input name="price" type="text" class="form-control" id="productPrice"
                       placeholder="Enter product price" required/>
            </div>
            <div class="container text-center mt-3">
                <a href="${pageContext.request.contextPath}" class="btn btn-outline-primary">Back</a>
                <button type="submit" class="btn btn-outline-success">Add</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
