<%-- 
    Document   : regdriver
    Author     : Nahian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Driver</title>
               <%@include file="includes/head.jsp"%>
    </head>
    <body>
 <%@include file="includes/navbar.jsp"%>
 <div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Registration Driver</div>
			<div class="card-body">
				<form action="register-driver-servlet" method="post">
                                    <div class="form-group">
						<label>Name</label> 
						<input type="text" name="uname" class="form-control" placeholder="Enter name">
					</div>
                                   
                                    <div class="form-group">
						<label>Contact</label> 
						<input type="text" name="contact" class="form-control" placeholder="Enter contact">
					</div>
					 <div class="form-group">
						<label>Vehicle No</label> 
						<input type="text" name="pickupno" class="form-control" placeholder="Enter contact">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="pass" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
    <%@include file="includes/footer.jsp"%>
    
    </body>
</html>

