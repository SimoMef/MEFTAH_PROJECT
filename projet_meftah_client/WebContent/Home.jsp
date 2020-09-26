<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="erreur.jsp" import="java.sql.*"%>
<% String url="jdbc:mysql://localhost:3306/test1";

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(url,"root","");
PreparedStatement st=con.prepareStatement("select * from livre Order by id; ");
ResultSet res = st.executeQuery();



%> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>page d'acceuil</title>
<meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
<meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/form.css" rel="stylesheet" type="text/css" />

</head>
<body>
<!--  Free CSS Templates from www.templatemo.com -->
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="Home.jsp" class="current">Home</a></li>
           
            <li><a href="subpage.html">Books</a></li>            
            <li><a href="subpage.html">New Releases</a></li>  
            <li><a href="#">Company</a></li> 
            <li><a href="panier.jsp">panier</a></li>
    	</ul><br/>
    	 <form  action="search" method="get" autocomplete="on">
    	 <label  style="display: block;
    font: 1rem 'Fira Sans', sans-serif;  margin: .4rem 0; color: #e6e154;"       for="site-search">Search the book:</label>
                <input style="margin: .4rem 0;" type="text" id="site-search" name="qq"/>
                <button type="submit"  name="q" value="q">Search</button>
        </form>
  
 
 
    </div> <!-- end of menu -->
    
    <div id="templatemo_header">
    	<div id="templatemo_special_offers">
        	<p>
                <span>25%</span> discounts for
        purchase over $80
        	</p>
			<a href="subpage.html" style="margin-left: 50px;">Read more...</a>
        </div>
        
        
        <div id="templatemo_new_books">
        	<ul>
                <li>Suspen disse</li>
                <li>Maece nas metus</li>
                <li>In sed risus ac feli</li>
            </ul>
            <a href="subpage.html" style="margin-left: 50px;">Read more...</a>
        </div>
    </div> <!-- end of header -->
    
    <div id="templatemo_content">
    	
        <div id="templatemo_content_left">
        	<div class="templatemo_content_left_section">
            	<h1>Categories</h1>
                <ul>
                    <li><a href="subpage.html">Alimentation</a></li>
                    <li><a href="subpage.html">Photographie</a></li>
                    <li><a href="#">Environnement </a></li>
                    <li><a href="#">Culture</a></li>
                    <li><a href="#">Sport</a></li>
                    <li><a href="#">Histoire</a></li>
                    <li><a href="#">Education</a></li>
                    <li><a href="#">Philosophie</a></li>
                    <li><a href="#">Langues</a></li>
            	</ul>
            </div>
			<div class="templatemo_content_left_section">
					<h1>ESPACE ADMINS</h1>
					<h2> <a href="http://localhost:8083/store/form.jsp">Page Reservée aux Admins</h2>
		    </div>
            
            <div class="templatemo_content_left_section">                
                <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
<a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
			</div>
        </div> <!-- end of content left -->
        
        <div id="templatemo_content_right">
         <% 
     while (res.next()){ %>
        <div class="templatemo_product_box">
       
            	<h1><%=res.getString(2) %> <span>(<%=res.getInt(1)%>)</span></h1>
   	      <img src="C:\Users\simo\eclipse-workspace\store\WebContent\images\<%=res.getString(3) %>" alt="image" />
                <div class="product_info">
                	<p><%=res.getString(4) %></p>
                  <h3>$<%=res.getInt(5) %></h3>
                    <div class="buy_now_button"><a href="http://localhost:8083/store/pj2?id=<%=res.getInt(1)%>">Buy Now</a></div>
                    <div class="detail_button"><a href="#">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            <div class="cleaner_with_width">&nbsp;</div>
           
            <%} %>
             
        	<%-- <div class="templatemo_product_box">
            	<h1>Photography  <span>(by Best Author)</span></h1>
   	      <img src="images/templatemo_image_01.jpg" alt="image" />
                <div class="product_info">
                	<p>Les meilleures photos de tous les temps.</p>
                  <h3>$55</h3>
                    <div class="buy_now_button"><a href="#">Buy Now</a></div>
                    <div class="detail_button"><a href="#">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            
            <div class="cleaner_with_width">&nbsp;</div>
            
            <div class="templatemo_product_box">
            	<h1>Cooking  <span>(by New Author)</span></h1>
       	    <img src="images/templatemo_image_02.jpg" alt="image" />
                <div class="product_info">
                	<p>Le meilleur livre de cuisine .</p>
                    <h3>$35</h3>
                 
                    <div class="buy_now_button"><a href="#">Buy Now</a></div>
                    <div class="detail_button"><a href="#">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            
            <div class="cleaner_with_height">&nbsp;</div>
            
            <div class="templatemo_product_box">
            	<h1>Gardening <span>(by Famous Author)</span></h1>
   	      <img src="images/templatemo_image_03.jpg" alt="image" />
                <div class="product_info">
                	<p>Tout savoir sur les aspects écologique.</p>
                    <h3>$65</h3>
                    <div class="buy_now_button"><a href="#">Buy Now</a></div>
                    <div class="detail_button"><a href="#">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            
            <div class="cleaner_with_width">&nbsp;</div>
            
            <div class="templatemo_product_box">
            	<h1>Sushi Book  <span>(by Japanese Name)</span></h1>
            	<img src="images/templatemo_image_04.jpg" alt="image" />
                <div class="product_info">
                	<p>Le grand livre de la cuisine japonaise. </p>
                    <h3>$45</h3>
                    <div class="buy_now_button"><a href="http://localhost:8083/store/pj2?id=1">Buy Now</a></div>
                    <div class="detail_button"><a href="#">Detail</a></div>
                </div>
                <div class="cleaner">&nbsp;</div>
            </div>
            --%>
            <div class="cleaner_with_height">&nbsp;</div>
            
            <a href="subpage.html"><img src="images/templatemo_ads.jpg" alt="ads" /></a>
        </div> <!-- end of content right -->
    
    	<div class="cleaner_with_height">&nbsp;</div>
    </div> <!-- end of content -->
    
    <div id="templatemo_footer">
    
	       <a href="subpage.html">Home</a> | <a href="subpage.html">Search</a> | <a href="subpage.html">Books</a> | <a href="#">New Releases</a> | <a href="#">FAQs</a> | <a href="#">Contact Us</a><br />
        Copyright Â© 2048 <a href="#"><strong>Your Company Name</strong></a> | <a href="http://www.iwebsitetemplate.com" target="_parent">Website Templates</a> by <a href="http://www.templatemo.com" target="_parent" title="free css templates">Free CSS Templates</a>	</div> 
    <!-- end of footer -->
<!--  Free CSS Template www.templatemo.com -->
</div> <!-- end of container -->
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>