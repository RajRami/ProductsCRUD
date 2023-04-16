<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>${title}</title>
    <jsp:include page="all_css_js.jsp"/>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="container text-center">
            <h1>${error}</h1>
            <a href="${pageContext.request.contextPath}" class="btn btn-primary">Home Page</a>
        </div>
    </div>
</div>
</body>
</html>
