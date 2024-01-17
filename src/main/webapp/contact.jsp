<%
	if(session.getAttribute("name")==null){
		session.setAttribute("userr","Please Login first");
		session.setAttribute("uname","Account");
		response.sendRedirect("login.jsp");
	}
	else{
		session.setAttribute("uname",session.getAttribute("name"));
	}

%>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Contact Us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<input type="hidden" id="statuss" value="<%= request.getAttribute("statuss")%>">
   
<!-- header section starts  -->

<%@include file='navbar.jsp'%>

<!-- header section ends -->

<!-- contact section starts  -->

<section class="contact">

   <div class="row">
      <div class="image">
         <img src="images/contact-img.svg" alt="">
      </div>
      <form action="ContactUs" method="post">
         <h3>Contact Us <br> And list your flat and pPGs for rent and sale purpose.</h3>
         <input type="text" name="name" required maxlength="50" placeholder="enter your name" class="box">
         <input type="email" name="email" required maxlength="50" placeholder="enter your email" class="box">
         <input type="number" name="number" required maxlength="10" max="9999999999" min="0" placeholder="enter your number" class="box">
         <textarea name="message" placeholder="enter your message" required maxlength="1000" cols="30" rows="10" class="box"></textarea>
         <input type="submit" value="Send" name="submit" class="btn">
      </form>
   </div>

</section>

<!-- contact section ends -->

<!-- faq section starts  -->

<section class="faq" id="faq">

   <h1 class="heading">FAQ</h1>

   <div class="box-container">

      <div class="box active">
         <h3><span>Do you charge any brokerage?</span><i class="fas fa-angle-down"></i></h3>
         <p>NO, we don't charge any brokerage from students.</p>
      </div>

      <div class="box active">
         <h3><span>How will I list my flat or PG.</span><i class="fas fa-angle-down"></i></h3>
         <p>By contacting FlatBuddies team in the contact us section or contact us at givem email or mobile number.</p>
      </div>

      <div class="box">
         <h3><span>Where can I pay the rent?</span><i class="fas fa-angle-down"></i></h3>
         <p>Right now, we don't provide any facility for online payment. You can pay rent in offline mode.</p>
      </div>

      <div class="box">
         <h3><span>How to contact with the owner?</span><i class="fas fa-angle-down"></i></h3>
         <p>Searh for the desired flat then in the given details of that flat mobile number or email of the owner is provided.</p>
      </div>

      <div class="box">
         <h3><span>Why my listing not showing up?</span><i class="fas fa-angle-down"></i></h3>
         <p>May be your property is not good for students or you didn't give sufficient details. </p>
      </div>


   </div>

</section>

<!-- faq section ends -->










<!-- footer section starts  -->

<%@include file='footer.jsp'%>

<!-- footer section ends -->


<!-- custom js file link  -->
<script src="js/script.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	var statuss = document.getElementById("statuss").value;
	if(statuss == "success"){
		swal({
		    title: "Done.",
		    text: "Message Sent",
		    icon: "success",
		    button : "OKAY!!"
		}).then(function() {
		    window.location = "contact.jsp";
		});
	}
</script>

</body>
</html>