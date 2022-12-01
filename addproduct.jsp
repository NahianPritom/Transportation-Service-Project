<%-- Document : addproduct Author : Nahian --%>

  <%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Add Products</title>
      <%@include file="includes/head.jsp" %>
    </head>

    <body>
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
          <a class="navbar-brand" href="index.jsp">Product Transportation System</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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
          <div class="card-header text-center">Product Info.</div>
          <div class="card-body">
            <form action="Add-Product-Servlet" method="post">
              <div class="form-group">
                <label>Product Name</label>
                <input type="text" name="uname" class="form-control" placeholder="Enter Productname">
              </div>
              <div class="form-group">
                <label>Image</label>
                <input type="file" class="form-control" name="image" accept="image/*">
              </div>
              <div class="form-group">
                <label>Category</label>
                <input type="text" name="category" class="form-control" placeholder="Enter Category">
              </div>
              <div class="form-group">
                <label>Price</label>
                <input type="text" name="price" class="form-control" placeholder="Enter Price">
              </div>
              <div class="form-group">
                <label>Quantity</label>
                <input type="text" name="quantity" class="form-control" placeholder="Enter Quantity">
              </div>

              <div class="text-center">
                <button type="submit" class="btn btn-primary">ADD</button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <%@include file="includes/footer.jsp" %>
    </body>

    </html>