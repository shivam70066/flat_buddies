<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String uname = (String)session.getAttribute("name");
	

%>
    
<!DOCTYPE html>
<html>
<body>
<header class="header">

   <nav class="navbar nav-1">
      <section class="flex">
         <a href="../home.jsp" class="logo"><i class="fas fa-house"></i>FlatBuddies</a>
      </section>
   </nav>

   <nav class="navbar nav-2">
      <section class="flex">
         <div id="menu-btn" class="fas fa-bars"></div>

         <div class="menu">
            <ul>
               <li><a href="../home.jsp">Home</a></li>
               <li><a href="../about.jsp">About us</a></li>
               <li><a href="../contact.jsp">Contact us</a></li>
               <li><a href="../contact.jsp#faq">FAQ</a></li>
            </ul>
         </div>

         <% if(uname==null){ %>
         		<ul>
	            <li><a href="#">Account <i class="fas fa-angle-down"></i></a>
	               <ul>
	                  <li><a href="../login.jsp">Login</a></li>
	                  <li><a href="../register.jsp">Register</a></li>
	               </ul>
	            </li>
	         </ul>		
         <%} else{%>
         	 <ul>
	            <li><a href="#"><%= uname %></a>
	            <li><a href="../Logout" style="background-color:red; margin:1px; border-radius:10px;">Logout</a></li>
	         </ul>	
	           
       	
         <% }%>
         
      </section>
   </nav>

</header>
</body>
</html>