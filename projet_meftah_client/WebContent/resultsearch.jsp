<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%String name= (String)request.getAttribute("reche"); %>
 <%@page errorPage="erreur.jsp" import="java.sql.*"%>
<% String url="jdbc:mysql://localhost/book?useUnicode=true " + 
		"&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&" +
		"serverTimezone=UTC&useSSL=false";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,"root","");
PreparedStatement stmt=con.prepareStatement("select id,name,imgurl,description,price from books where name LIKE '%"+name+"%';");
ResultSet res = stmt.executeQuery();
PreparedStatement stmt1=con.prepareStatement("select * from categories;");
ResultSet res1 = stmt1.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Homepage</title>

<!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">
<link href="style1.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">Booking</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div >
			<form method="get" action="Recherche">
			<input type="text" name="search" class="area" ><button type="submit" class="buttonrech" name="btnsearch" value="btnsearch">rechercher</button>
			
			
			</form>
			
			</div>
			
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="checkcss.jsp">Panier</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<div class="row">

			<div class="col-lg-3">

				<h1 class="my-4">Sign in</h1>
				<div class="list-group">
					<% while (res1.next()) { %>
					<a href="http://localhost:8080/testos/Categories?idcat=<%=res1.getInt(1) %>" class="list-group-item"><%=res1.getString(2) %></a>
                    <% } %>
				</div>

			</div>
			<!-- /.col-lg-3 -->

			<div class="col-lg-9">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner" role="listbox">
						<div class="carousel-item active">
							<img class="d-block img-fluid" src="image/openbook.jpg"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="image/reading.jpg"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block img-fluid" src="image/books.jpg"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
				<div class="row">
<% while (res.next()) { %>
<div class="col-lg-4 col-md-6 mb-4">
						<div class="card h-100">
							<a href="http://localhost:8082/testos/Showbook?id=<%=res.getInt(1)%>"><img class="card-img-top" src=<%=res.getString(3)%> height="300px" width="150px" alt=""></a>
							<div class="card-body">
								<h4 class="card-title">
									<a href="#"><%=res.getString(2)%></a>
									<a href="">checkpanier</a>
									
						</h4>
								
							</div>
							<div class="card-footer">
								<small class="text-muted">&#9733; &#9733; &#9733;
									&#9733; &#9734;</small>
							</div>
						</div>
					</div>
					<% } %></div>
<script src="jquery/jquery.min.js"></script>
	<script src="bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>