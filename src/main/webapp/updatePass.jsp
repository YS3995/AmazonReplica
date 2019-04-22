<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Amazon OOAD Project</title>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>


<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">

<!-- jQuery -->
<script src="js/jquery-2.0.0.min.js" type="text/javascript"></script>

<!-- Bootstrap4 files-->
<script src="js/bootstrap.bundle.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>

<!-- Font awesome 5 -->
<link href="fonts/fontawesome/css/fontawesome-all.min.css" type="text/css" rel="stylesheet">

<!-- plugin: owl carousel  -->
<link href="plugins/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="plugins/owlcarousel/assets/owl.theme.default.css" rel="stylesheet">

<script src="plugins/owlcarousel/owl.carousel.min.js"></script>

<!-- custom style -->
<link href="css/ui.css" rel="stylesheet" type="text/css"/>
<link href="css/responsive.css" rel="stylesheet" media="only screen and (max-width: 1200px)" />
<link href="css/custom.css" rel="stylesheet"  />




<script type="text/javascript">
function updatePass(){
	
	var udata = JSON.parse(localStorage.getItem("userdata"));
    
	
	var obj = {
			password : $("#password").val(),
			password1 : $("#password1").val(),
			password2 : $("#password2").val(),
			user_id : udata.id
	};
	alert(udata.id);
	$.ajax({
    	type: "POST",
		url: "http://localhost:8055/amazon.com/webapi/UserController/updatePassword",
        data: obj, 
       	success:function(result){
        	//window.alert(result);
        	//window.location.href="http://localhost:8055/amazon.com/";
        	alert(result);
        		
        }
    });
	
	
}

</script>






<!-- jQuery -->

<!-- Data Table -->
		<script src="js/jquery.dataTables.js" type="text/javascript"></script>
		<link type="text/css" rel="stylesheet" href="css/jquery.dataTables.css">
<script type="text/javascript">


</script>

<!--  <script src="js/admin_layout.js" type="text/javascript"></script>  -->

</head>
<body>

<%@include file="header.jsp" %>

<section class="section-main bg padding-y-sm">
<div class="container">
<div id="code_register_2">
<div class="card">
<article class="card-body col-md-4 offset-md-4" >
	<h4 class="card-title mt-3 text-center">Reset Password</h4>
	<form id="resetpassform">
	<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password" class="form-control" placeholder="Current password" type="password" id="password">
    </div> <!-- form-group// -->
   <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password1" class="form-control" placeholder="New password" type="password" id="password1">
    </div> <!-- form-group// -->
    <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		</div>
        <input name="password2" class="form-control" placeholder="Confirm password" type="password" id="password2">
    </div> <!-- form-group// -->
    <div class="form-group">
        <button class="btn btn-warning btn-block" type="button" id ="changePass" onclick="updatePass();">Change Password</button>
    </div> <!-- form-group// -->                                                                       
</form>
</article>
</div> <!-- card.// -->
</div><!-- card.// -->

</body>
</html>