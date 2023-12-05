<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2">

	<%@include file="all_components/navbar.jsp"%>

    <div class="container text-center mt-3">
    <i class="fas fa-check-circle fa-5x text-success"></i>
    <h1>Thank You!</h1>
    <h2>Your order has successfully been made.</h2>
    <h3>Within 7 Days you product will be delivered to your door.</h3>
    <a href="index.jsp" class="btn btn-primary mt-3">Home</a> <a
        href="order.jsp" class="btn btn-danger mt-3">View Order</a>
    </div>

</body>
</html>