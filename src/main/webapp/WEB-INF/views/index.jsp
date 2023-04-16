<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <jsp:include page="all_css_js.jsp"/>
    <title>${title}</title>
</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Welcome to Product App</h1>
            <table class="table table-striped">
                <thead class="table-dark">
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Description</th>
                    <th scope="col">Product Price</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td>&#36; ${product.price}</td>
                        <td>
                            <a href="delete/${product.id}" class="mr-2 text-danger"><i class="fa-sharp fa-solid fa-trash fa-2x"></i></a>
                            <a href="edit/${product.id}"><i class="fa-sharp fa-solid fa-pen-nib fa-2x"></i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="container text-center">
                <a href="add" class="btn btn-primary">Add Product</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>