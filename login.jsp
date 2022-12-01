<%-- 
    Document   : index
    Author     : Nahian
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="cn.pts.model.*"%>
<%
User auth = (User)request.getSession().getAttribute("auth");
if(auth!=null){
request.setAttribute("auth", auth);

}

%>
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
			<div class="card-header text-center">Client Login</div>
			<div class="card-body">
				<form action="LoginServlet" method="post">
					<div class="form-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
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
