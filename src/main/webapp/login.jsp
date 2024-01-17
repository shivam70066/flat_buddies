<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Login</title>

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

<!-- login section starts  -->

<section class="form-container">
	

   <form action="Login" method="post">
      <h3>welcome back!</h3>
      <input type="email" name="email" required maxlength="50" placeholder="enter your email" class="box">
      <input type="password" name="pass" required maxlength="20" placeholder="enter your password" class="box">
      <p>don't have an account? <a href="register.jsp">register new</a></p>
      <input type="submit" value="login now" name="submit" class="btn">
   </form>

</section>

<!-- login section ends -->












<!-- footer section starts  -->

<%@include file='footer.jsp'%>
<!-- footer section ends -->


<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
	var status = document.getElementById("status").value;
	if(status=="failed"){
		swal({
		    title: "Error!!!",
		    text: "Wrong Username or Password.",
		    icon: "error",
		    button : "Retry."
		})
	}
	
</script>

</body>
</html>