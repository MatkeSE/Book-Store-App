<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">


.crd-ho:hover {
	background-color: #f7ead7;
}
</style>

</head>
<body>
	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			
			<%
	User u=(User)session.getAttribute("userobj");
	%>
			<%
		BookDAO dao2 = new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list = dao2.getAllRecentBook();
		for (BookDtls b : list) {
		%>
		
				<div class="col-md-3">
					<div class="card crd-ho mt-3">
						<div class="card-body text-center">
							<img alt="" src="img/<%=b.getPhotoName()%>"
								style="width: 130px; height: 180px;" class="img-thumblin">
							<p><%=b.getBookName()%></p>
							<p><%=b.getAuthor()%></p>
							
							<p>
							<%
							if(b.getBookCategory().equals("Old"))
							{%>
							Category : <%=b.getBookCategory()%></p>
								<div class="row text-center">
								
								    <a href="view_books.jsp?bid=<%=b.getBookId()%>"
									class="btn btn-success btn-sm ml-5">View Details</a> 
									<a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>
							<%}else
							{%>
								Category : <%=b.getBookCategory()%></p>
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
									class="btn btn-success btn-sm ml-1">View Details</a> <a href=""
									class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
									class="fa-solid fa-euro-sign"></i></a>
							</div>
							<%}
							%>
							
							
						</div>
					</div>
				</div>
				<%
				}
				%>
			
			
			
		</div>
	</div>

</body>
</html>