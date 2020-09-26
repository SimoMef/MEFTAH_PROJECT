<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="erreur.jsp" import="java.sql.*"%>
<% String url="jdbc:mysql://localhost:3306/test1";

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,"root","");
PreparedStatement st=con.prepareStatement("select * from panier; ");
ResultSet res = st.executeQuery();
%>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Shopping Cart Checkout Widget</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body>


<div class="cart">
    <div class="cart-top">
      <h2 class="cart-top-title">Checkout</h2>
      <div class="cart-top-info"> items</div>
    </div>

    <ul>
     <% int s=0;
     while (res.next()){ %>
      <li class="cart-item">
        <span class="cart-item-pic">
          <img src="C:\Users\simo\eclipse-workspace\store\WebContent\images\<%=res.getString(3) %>" > 
        </span>
        
        Elèment ajouté
        <span class="cart-item-desc"><%=res.getString(2) %> </span>
        <span class="cart-item-price"> <%=res.getInt(5) %> </span>
         <a href="http://localhost:8083/store/delelpanier?i=<%=res.getInt(1)%>" class="cart-button">Supprimer</a>
      </li>
        
    
    <% s+=res.getInt(5); %>
    
     <% } %>
    </ul>

    <div class="cart-bottom">
    
   


      Total: $ <%= s%>
      
      <a href="http://localhost:8083/store/delpanier" class="cart-button">Confirmer l'achat</a>
    </div>
  </div>

  <div class="about">
    <p class="about-links">
      <a href="http://www.cssflow.com/snippets/shopping-cart-checkout-widget" target="_parent">View Article</a>
      <a href="http://www.cssflow.com/snippets/shopping-cart-checkout-widget.zip" target="_parent">Download</a>
    </p>
    <p class="about-author">
      &copy; 2013 <a href="http://thibaut.me" target="_blank">Thibaut Courouble</a> -
      <a href="http://www.cssflow.com/mit-license" target="_blank">MIT License</a><br>
      Original PSD by <a href="http://pixelb.in/simple-shopping-cart-checkout-widget-507/" target="_blank">Aleksandar Djuric</a>
    </p>
  </div>

 
 




<%
res.close();
st.close(); 
con.close();%>


</body>
</html>





