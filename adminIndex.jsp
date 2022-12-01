<%-- 
    Document   : adminIndex
    Author     : Nahian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Index</title>
         <%@include file="includes/head.jsp"%>
           <style type="text/css">

.table tbody td{
vertical-align: middle;
}

</style>
    </head>
    <body>
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
  <a class="navbar-brand" href="index.jsp">Product Transportation System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="loginAdmin.jsp">Logout </a>
      </li>
      
      
      

    </ul>
  
  </div>
  </div>
</nav>
           
           <div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Admin</div>
			<div class="card-body">
                            <form action="addproduct.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:10px; padding: 13px 18px;" type="submit" class="btn btn-primary">Add Products</button>
					</div>
				</form>
				<form action="checkprd.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:10px; padding: 10px 10px;" type="submit" class="btn btn-primary">Check Products </button>
					</div>
				</form>
                            <form action="admincheckorder.jsp" method="post">
					
					<div class="text-center">
						<button style="margin:10px; padding: 13px 18px;" type="submit" class="btn btn-primary">Check Order</button>
					</div>
				</form>
			</div>
		</div>
	</div>
     <%@include file="includes/footer.jsp"%>

    </body>
</html>
