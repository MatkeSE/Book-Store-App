<%@page import="com.entity.BookDtls"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>

<%
int bid = Integer.parseInt(request.getParameter("bid"));
BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
BookDtls b = dao.getBookById(bid);
%>

</head>
<body style="background-color: #f7f5f2;">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container p-3">
		<div class="row p-5">

			<div class="col-md-6 text-center p-5 border bg-white">



				<img src="img/<%=b.getPhotoName()%>"
					style="height: 220px; width: 150px"><br>
				<h4 class="mt-3">
					Book Name : <span class="text-success"><%=b.getBookName()%></span>
				</h4>
				<h4>
					Author Name : <span class="text-success"><%=b.getAuthor()%></span>
				</h4>
				<h4>
					Category : <span class="text-success"><%=b.getBookCategory()%></span>
				</h4>
			</div>

			<div class="col-md-6 text-center p-5 border bg-white">


				<h2><%=b.getBookName()%></h2>

				<%
				if ("Old".equals(b.getBookCategory())) {
				%>

				<h5 class="text-primary">Contact Seller</h5>
				<h5 class="text-primary">
					<i class="fa-solid fa-envelope"></i> Email:<%=b.getEmail()%>
				</h5>

				<%
				}
				%>
				<div class="row">
					<div class="col-md-4 text-danger text-center bg-white">
						<i class="fa-solid fa-coins fa-2x"></i>
						<p>Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-danger text-center bg-white">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center bg-white">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Shipping</p>
					</div>

				</div>

                   <%
				if ("Old".equals(b.getBookCategory())) {
				%>

                   <div class="text-center p-3">
					<a href="index.jsp" class="btn btn-success"><i
						class="fa-solid fa-cart-shopping"></i>Continue Shopping</a> <a href=""
						class="btn btn-danger">200<i class="fa-solid fa-euro-sign"></i></a>
				</div>
				
				<%
				}
				else
				{%>
					<div class="text-center p-3">
					<a href="" class="btn btn-primary"><i
						class="fa-solid fa-cart-shopping"></i>Add Cart</a> <a href=""
						class="btn btn-danger">200<i class="fa-solid fa-euro-sign"></i></a>
				</div>
				<%}
				%>

				

			</div>

		</div>
	</div>

</body>
</html>