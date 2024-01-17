<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->

<%@include file='navbar.jsp'%>

<!-- header section ends -->

<!-- home section starts  -->

<div class="home">

   <section class="center">
      <h1>Find a suitable flat (1BHK, 2BHK, 3BHK)</h1>
      <h1> And PG (For Boys And Girls)</h1>

   </section>

</div>

<!-- home section ends -->

<!-- services section starts  -->

<section class="services">

   <h1 class="heading">our services</h1>

   <div class="box-container">

      <div class="box">
         <a href="listings.jsp"><img src="images/icon-2.png" alt=""></a>
         <h3>Rent Flat</h3>
         <p>You can rent flat from various reputated societies. (1BHK, 2BHK, 3BHK)</p>
      </div>
      
      <div class="box">
         <a href="properties/pg.jsp"> <img src="images/icon-4.png" alt=""> </a>
         <h3>PG (Paying Guest)</h3> 
         <p>You Can search various PGs for girls and boys</p>
      </div>

      <div class="box">
         <a href="contact.jsp"><img src="images/icon-3.png" alt=""></a>
         <h3>Sale Your Property</h3>
         <p>You Can list your flats and house for sale purpose by contacting us.</p>
      </div>

      <div class="box">
         <a href="contact.jsp"><img src="images/icon-4.png" alt=""> </a>
         <h3>List Your Property</h3>
         <p>You Can list your flats and PGs in this website by contacting us.</p>
      </div>

      <div class="box">
         <a href="contact.jsp"><img src="images/icon-6.png" alt=""> </a>
         <h3>24/7 service</h3>
         <p>You can contact us at any time for listing your property or any other related queries.</p>
      </div>

   </div>

</section>

<!-- services section ends -->

<!-- listings section starts  -->

<section class="listings">

   <h1 class="heading">latest listings</h1>

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
            <p class="total-images"><i class="far fa-image"></i><span>3</span></p>
            <p class="type"><span>flat</span><span>rent</span></p>
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
            <p class="total-images"><i class="far fa-image"></i><span>5</span></p>
            <p class="type"><span>flat</span><span>rent</span></p>
            <a href="properties/omega3bhk.jsp"><img src="images/omega.jpeg" alt=""> </a>
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
         <p class="location"><i class="fas fa-map-marker-alt"></i><span>Kharar, Punjab, India - 1403013</span></p>
         <div class="flex">
            <p><i class="fas fa-bed"></i><span>3</span></p>
            <p><i class="fas fa-bath"></i><span>3</span></p>
         </div>
         <a href="properties/naturehut3bhk.jsp" class="btn">view property</a>
      </div>

   </div>

   <div style="margin-top: 2rem; text-align:center;">
      <a href="listings.jsp" class="inline-btn">view all</a>
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