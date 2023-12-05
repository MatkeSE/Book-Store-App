<%@page import="com.entity.User"%>
<%@page import="com.mysql.cj.Session"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.db.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/1.jpg");
	height: 50vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #f7ead7;
}
</style>
</head>
<body style="background-color: #f7f5f2;">



	<%
	User u=(User)session.getAttribute("userobj");
	%>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img"></div>

	<div>

		<!-- Start -->

		<div class="container">
			<h3 class="text-center">Recent Book</h3>
			<div class="row">
				<%
				BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao2.getRecentBook();
				for (BookDtls b : list) {
				%>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="img/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>

							<p>
								<%
								if (b.getBookCategory().equals("Old")) {
								%>
								Category :
								<%=b.getBookCategory()%></p>
							<div class="row text-center">

								<a href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>
							<%
							} else {
							%>
							Category :
							<%=b.getBookCategory()%></p>
							<div class="row text-center">
							
							<% 
							if(u==null) 
							{%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-shopping"></i>Add</a> 
							<% }
							else
							{%>
								<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>"
								class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-shopping"></i>Add</a> 
							<%}
							
							%>
							
							
								 <a href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-1">View Details</a>
									 <a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>
							<%
							}
							%>


						</div>
					</div>
				</div>
				<%
				}
				%>



			</div>
			<div class="text-center mt-1">
				<a href="all_recent_book.jsp"
					class="btn btn-danger btn-sm text-white">View All</a>
			</div>

		</div>

		<!-- end -->

		<hr>

		<!-- start -->


		<div class="container">
			<h3 class="text-center">New Book</h3>
			<div class="row">


				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list2 = dao.getNewBook();
				for (BookDtls b : list2) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="img/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							<p>
								Category :
								<%=b.getBookCategory()%></p>
							<div class="row text-center">
							
							<% 
							if(u==null) 
							{%>
								<a href="login.jsp" class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-shopping"></i>Add</a> 
							<% }
							else
							{%>
								<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>"
								class="btn btn-danger btn-sm ml-2"><i
									class="fa-solid fa-cart-shopping"></i>Add</a> 
							<%}
							
							%>
								
								
							    <a
									href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-1">View Details</a>
							    <a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>
						</div>
					</div>

				</div>
				<%
				}
				%>


			</div>
			<div class="text-center mt-1">
				<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View
					All</a>
			</div>

		</div>
		<!-- end -->

		<hr>

		<!-- start -->
		<div class="container">
			<h3 class="text-center">Old Book</h3>
			<div class="row">



				<%
				BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list3 = dao3.getOldBook();
				for (BookDtls b : list3) {
				%>

				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="img/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>

							<p>
								Category :
								<%=b.getBookCategory()%></p>

							<div class="row text-center">
								<a href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>

						</div>
					</div>
				</div>
				<%
				}
				%>



			</div>
			<div class="text-center mt-1">
				<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View
					All</a>
			</div>

		</div>
		<!-- end -->

		<%@include file="all_components/footer.jsp"%>

	</div>

</body>
</html>