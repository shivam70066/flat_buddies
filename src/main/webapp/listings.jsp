<%
	if(session.getAttribute("name")==null){
		session.setAttribute("userr","Please Login first");
		response.sendRedirect("login.jsp");
	}

%>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>All Listings</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->

<%@include file='navbar.jsp'%>

<!-- header section ends -->

<!-- listings section starts  -->

<section class="listings">

   <h1 class="heading">all listings</h1>

   <div class="box-container">

      <div class="box">
         <div class="admin">
            <h3>P</h3>
            <div>
               <p>Pankaj</p>
               <span>11-11-2023</span>
            </div>
         </div>
         <div class="thumb">
            <p class="total-images"><i class="far fa-image"></i><span>4</span></p>
            <p class="type"><span>Flat</span><span>Rent</span></p>
            <a href="properties/modernValley3bhk.jsp"><img src="images/modern.jpg" alt=""> </a>
         </div>
         <h3 class="name">Modern Valley (3BHK)</h3>
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 140301</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>3</span></p>
            <p><i class="fas fa-bath"></i><span>2</span></p>
         </div>
         <a href="properties/modernValley3bhk.jsp" class="btn">view property</a>
      </div>

      <div class="box">
         <div class="admin">
            <h3>M</h3>
            <div>
               <p>Munish</p>
               <span>01-11-2023</span>
            </div>
         </div>
         <div class="thumb">
            <p class="total-images"><i class="far fa-image"></i><span>4</span></p>
            <p class="type"><span>Flat</span><span>Sale</span></p>
            <a href="properties/omega3bhk.jsp" ><img src="images/omega.jpeg" alt=""> </a>
         </div>
         <h3 class="name">Omega city (2BHK)</h3>
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 140301</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>2</span></p>
            <p><i class="fas fa-bath"></i><span>2</span></p>
         </div>
         <a href="properties/omega3bhk.jsp" class="btn">view property</a>
      </div>

      <div class="box">
         <div class="admin">
            <h3>R</h3>
            <div>
               <p>Rahul Sharma</p>
               <span>20-10-2023</span>
            </div>
         </div>
         <div class="thumb">
            <p class="total-images"><i class="far fa-image"></i><span>5</span></p>
            <p class="type"><span>Flat</span><span>Rent</span></p>
            <a href="properties/naturehut3bhk.jsp"><img src="images/naturehutt.jpg" alt=""> </a>
         </div>
         <h3 class="name">Nature huts-3 (2BHK)</h3>
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 140301</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>2</span></p>
            <p><i class="fas fa-bath"></i><span>2</span></p>
         </div>
         <a href="properties/naturehut3bhk.jsp" class="btn">view property</a>
      </div>

      <div class="box">
         <div class="admin">
            <h3>j</h3>
            <div>
               <p>Shivani Rajput</p>
               <span>19-11-2023</span>
            </div>
         </div>
         <div class="thumb">
            <p class="total-images"><i class="far fa-image"></i><span>4</span></p>
            <p class="type"><span>PG</span><span>Girls and Boys</span></p>
            <a href="properties/pg.jsp"><img src="images/society.jpg" alt=""> </a>
         </div>
         <h3 class="name">PG for girls and boys (Onkar City)</h3>
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 140301</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>1</span></p>
            <p><i class="fas fa-bath"></i><span>1</span></p>
         </div>
         <a href="properties/pg.jsp" class="btn">view property</a>
      </div>

      <div class="box">
         <div class="admin">
            <h3>j</h3>
            <div>
               <p>Ankit</p>
               <span>10-11-2023</span>
            </div>
         </div>
         <div class="thumb">
            <p class="total-images"><i class="far fa-image"></i><span>6</span></p>
            <p class="type"><span>Kothi</span><span>Rent</span></p>
            <a href="properties/kothi4bhk.jsp"><img src="images/kothi.jpg" alt=""> </a>
         </div>
         <h3 class="name">GBP - 4BHK Kothi</h3>
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 140301</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>4</span></p>
            <p><i class="fas fa-bath"></i><span>5</span></p>
         </div>
         <a href="properties/kothi4bhk.jsp" class="btn">view property</a>
      </div>

   

   </div>

</section>

<!-- listings section ends -->












<!-- footer section starts  -->

<%@include file='footer.jsp'%>

<!-- footer section ends -->


<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>