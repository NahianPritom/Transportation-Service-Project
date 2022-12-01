<%-- 
    Document   : loginAdmin
    Author     : Nahian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
    <head>
       
        <title>login</title>
        <%@include file="includes/head.jsp"%>
    </head>
    <body>
         <%@include file="includes/navbar.jsp"%>
       <div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Admin Login</div>
			<div class="card-body">
				<form action="login-Admin-Servlet" method="post">
					<div class="form-group">
						<label>Name</label> 
						<input type="text" name="username" class="form-control" placeholder="Enter name">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="password" class="form-control" placeholder="Password">
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

