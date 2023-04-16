<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>${title}</title>
    <jsp:include page="all_css_js.jsp"/>
</head>
<body>
<div class="container mt-3">
    <div class="col-md-6 offset-md-3">
        <h1 class="text-center mb-3">Edit the product detail</h1>
        <form action="${pageContext.request.contextPath}/submitForm" method="post">
            <input name="id" value="${product.id}" hidden>
            <div class="form-group my-1">
                <label for="productName">Product Name</label>
                <input name="name" type="text" class="form-control" id="productName"
                       value="${product.name}" required>
            </div>
            <div class="form-group my-1">
                <label for="productDescription">Product Description</label>
                <textarea name="description" class="form-control" id="productDescription"
                          required>${product.description}</textarea>
            </div>
            <div class="form-group my-1">
                <label for="productPrice">Product Price</label>
                <input name="price" type="text" class="form-control" id="productPrice"
                       value="${product.price}" required/>
            </div>
            <div class="container text-center mt-3">
                <a href="${pageContext.request.contextPath}" class="btn btn-outline-primary">Back</a>
                <button type="submit" class="btn btn-outline-success">Update</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
