<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Register</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   

</head>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<!-- header section starts  -->

<%@include file='navbar.jsp'%>

<!-- header section ends -->

<!-- register section starts  -->

<section class="form-container">

   <form action="Register" method="POST">
      <h3>create an account!</h3>
      <input type="text" name="name" required maxlength="50" placeholder="enter your name" class="box">
      <input type="email" name="email" required maxlength="50" placeholder="enter your email" class="box">
      <input type="number" name="mobNo" required maxlength="20" placeholder="enter your mobile number" class="box">
      <input type="password" name="pass" required maxlength="20" placeholder="enter your password" class="box">
      <p>already have an account? <a href="login.jsp">Login </a></p>
      <input type="submit" value="register now" name="submit" class="btn">
   </form>

</section>

<!-- register section ends -->












<!-- footer section starts  -->

<%@include file='footer.jsp'%>

<!-- footer section ends -->
<script src="js/script.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	var status = document.getElementById("status").value;
	if(status=="success"){
		swal({
		    title: "Done.",
		    text: "You are Registered Now!",
		    icon: "success",
		    button : "Login Now"
		}).then(function() {
		    window.location = "login.jsp";
		});
	}
	if(status=="failed"){
		swal({
		    title: "Error",
		    text: "Something Went Wrong or Already registered with same email.",
		    icon: "error",
		    button : "Try again"
		}).then(function() {
		    window.location = "register.jsp";
		});
	}
</script>








</body>
</html>