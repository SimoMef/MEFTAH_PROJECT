<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>page d'achat</title>
<meta name="keywords"
	content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML, TemplateMo.com" />
<meta name="description"
	content="Book Store Template, Free CSS Template, Download CSS Website from TemplateMo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%String nom= (String)request.getAttribute("nom"); %>
<%String img = (String)request.getAttribute("img"); %>
<%String descr = (String)request.getAttribute("descr"); %>
<%int prix = (int)request.getAttribute("prix"); %>
<%int id = (int)request.getAttribute("id"); %>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<div id="templatemo_menu">
			<ul>
				<li><a href="Home.jsp">Home</a></li>
				<li><a href="#" class="current">Search</a></li>
				<li><a href="Home.jsp">Books</a></li>
				<li><a href="Home.jsp">New Releases</a></li>
				<li><a href="#">Company</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div>
		<!-- end of menu -->

		<div id="templatemo_header">
			<div id="templatemo_special_offers">
				<p>
					<span>25%</span> discounts for purchase over $ <%= prix%>
				</p>
				<a href="#" style="margin-left: 50px;">Read more...</a>
			</div>


			<div id="templatemo_new_books">
				<ul>
					<li>Suspen disse</li>
					<li>Maece nas metus</li>
					<li>In sed risus ac feli</li>
				</ul>
				<a href="#" style="margin-left: 50px;">Read more...</a>
			</div>
		</div>
		<!-- end of header -->

		<div id="templatemo_content">

			<div id="templatemo_content_left">
				<div class="templatemo_content_left_section">
					<h1>Categories</h1>
					<ul>
						<li><a href="Home.jsp">Donec accumsan urna</a></li>
						<li><a href="Home.jsp">Proin vulputate justo</a></li>
						<li><a href="#">In sed risus ac feli</a></li>
						<li><a href="#">Aliquam tristique dolor</a></li>
						<li><a href="#">Maece nas metus</a></li>
						<li><a href="#">Sed pellentesque placerat</a></li>
						<li><a href="#">Suspen disse</a></li>
						<li><a href="#">Maece nas metus</a></li>
						<li><a href="#">In sed risus ac feli</a></li>
						
					</ul>
				</div>
				<div class="templatemo_content_left_section">
					<h1>Bestsellers</h1>
					<ul>
						<li><a href="#">Vestibulum ullamcorper</a></li>
						<li><a href="#">Maece nas metus</a></li>
						<li><a href="#">In sed risus ac feli</a></li>
						<li><a href="#">Praesent mattis varius</a></li>
						<li><a href="#">Maece nas metus</a></li>
						<li><a href="#">In sed risus ac feli</a></li>
						<li><a href="http://www.flashmo.com" target="_parent">Flash
								Templates</a></li>
						<li><a href="http://www.templatemo.com" target="_parent">CSS
								Templates</a></li>
						<li><a href="http://www.webdesignmo.com" target="_parent">Web
								Design</a></li>
						<li><a href="http://www.photovaco.com" target="_parent">Free
								Photos</a></li>
					</ul>
				</div>

				<div class="templatemo_content_left_section">
					<a href="http://validator.w3.org/check?uri=referer"><img
						style="border: 0; width: 88px; height: 31px"
						src="http://www.w3.org/Icons/valid-xhtml10"
						alt="Valid XHTML 1.0 Transitional" width="88" height="31"
						vspace="8" border="0" /></a> <a
						href="http://jigsaw.w3.org/css-validator/check/referer"><img
						style="border: 0; width: 88px; height: 31px"
						src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
						alt="Valid CSS!" vspace="8" border="0" /></a>
				</div>
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">

				<h1>
					<%= nom%> <span>(by author name)</span>
				</h1>
				<div class="image_panel">
					<img src="C:\Users\simo\eclipse-workspace\store\WebContent\images\<%= img%>"
					alt="css template ad" 
						width="100" height="150" />
				</div>
				<h2>   Read the lessons - Watch the videos - Do the exercises</h2>
				<ul>
					<li>By Deke <a href="#">McClelland</a></li>
					<li>January 2024</li>
					<li>Pages: 498</li>
					<li>ISBN 10: 0-496-91612-0 | ISBN 13: 9780492518154</li>
				</ul>

				<p> <%= descr%> </p>

				<p></p>

				<p> <a href="http://localhost:8083/store/panier1?i=<%=id%>">ajouter au panier</a> </p>

				<div class="cleaner_with_height">&nbsp;</div>

				<a href="Home.jsp"></a>

			</div>
			<!-- end of content right -->

			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer">
			<a href="Home.jsp">Home</a> | <a href="Home.jsp">Search</a> | <a
				href="Home.jsp">Books</a> | <a href="#">New Releases</a> | <a
				href="#">FAQs</a> | <a href="#">Contact Us</a><br /> Copyright ©
			2048 <a href="#"><strong>Your Company Name</strong></a> | <a
				href="http://www.iwebsitetemplate.com" target="_parent">Website
				Templates</a> by <a href="http://www.templatemo.com" target="_parent">Free
				CSS Templates</a>
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
	<div align=center>
		This template downloaded form <a
			href='http://all-free-download.com/free-website-templates/'>free
			website templates</a>
	</div>
</body>
</html>