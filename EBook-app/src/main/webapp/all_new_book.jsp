<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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

#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.dispay {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@
keyframes fadeIn {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadeOut {
	form {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>

</head>
<body>
   

	<c:if test="${not empty addCart }">


		<div id="toast">${addCart }</div>

		<script type="text/javascript">
     showToast();
     function showToast(content)
     {
    	 $('#toast').addClass("display");
    	 $('#toast').html(content);
    	 setTimeout(()=>{
    		 $('#toast').removeClass("display");
    	 },2000)
		}
</script>


  

	</c:if>


 <%
	User u=(User)session.getAttribute("userobj");
	%>

	<%@include file="all_components/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">


			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao.getAllNewBook();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="img/<%=b.getPhotoName()%>"
							style="width: 130px; height: 180px;" class="img-thumblin">
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
								
								 <a href="view_books.jsp?bid=<%=b.getBookId()%>"
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
	</div>

</body>
</html>