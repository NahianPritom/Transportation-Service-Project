<%-- 
    Document   : loginoption
    Author     : Nahian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register option</title>
         <%@include file="includes/head.jsp"%>
    </head>
    <body>
         <%@include file="includes/navbar.jsp"%>
       <div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Login As</div>
			<div class="card-body">
                            <form action="loginAdmin.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:10px;padding: 10px 10px;" type="submit" class="btn btn-primary">Admin</button>
					</div>
				</form>
				<form action="login.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:10px;"type="submit" class="btn btn-primary"> Client </button>
					</div>
				</form>
                            <form action="logindriver.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:12px;" type="submit" class="btn btn-primary">Driver</button>
					</div>
				</form>
			</div>
		</div>
	</div>
           <%@include file="includes/footer.jsp"%>
    </body>
</html>

