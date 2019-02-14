<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
    <body>
        <form:form action="processForm" modelAttribute="product">
            Product ID: <form:input path="productID" />
            <br>
            Product Title: <form:input path="productTitle" />
            <br>
            Product Cost: <form:input path="productCost" />
            <br>
            <input type="submit" value="Submit" />
        </form:form>
    </body>
</html>
