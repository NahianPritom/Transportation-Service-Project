<%-- 
    Document   : logindriver
    Author     : Nahian
--%>


<!DOCTYPE html>
<html>
    <head>
       
        <title>login</title>
        <%@include file="includes/head.jsp"%>
    </head>
    <body>
         <%@include file="includes/navbar.jsp"%>
       <div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Driver Login</div>
			<div class="card-body">
				<form action="login-Driver-Servlet" method="post">
					<div class="form-group">
						<label>Contact No</label> 
						<input type="text" name="drivercontact" class="form-control" placeholder="Enter contact">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="driverpassword" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
        <%@include file="includes/footer.jsp"%>

    </body>
</html>

