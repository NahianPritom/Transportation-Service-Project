<%-- 
    Document   : index
    Author     : Nahian
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="cn.pts.dao.ProductDao"%>
<%@page import="cn.pts.connection.DbCon"%>
<%@page import="cn.pts.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }
    ProductDao pd = new ProductDao(DbCon.getConnection());
    List<Product> products = pd.getAllProducts();
    
    
       ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
 
    
if (cart_list != null) {
     
	
        	request.setAttribute("cart_list", cart_list);


}

%>
<!DOCTYPE html>
<html>
    <head>

        <title>Welcome</title>
        <%@include file="includes/head.jsp"%>
    </head>
    <body>
        <%@include file="includes/navbar.jsp"%>
        
        <div class="container" >
            <div class ="row">
                <div class="col-md-4">
                    <form action=""" method="get">
                        
                        <input type = "text" class ="form-control" name="q" placeholder="Search here...">
                        
                    </form>
                    
                </div>
                
            
            
            
        </div>
            <div class="card-header my-3" >
                All Products
                <div class="row">
                    <%       String query = request.getParameter("q");  
                        if (!products.isEmpty()) {
                            
                            for (Product p : products) {
                         // out.println(p.getCategory());   %> 
                                 <div class="col-md-3 my-3">
                        <div class="card w-100" style="width: 18rem;">
                            <img class="card-img-top" src="product-image/<%=p.getImage()%>" alt="Card image cap" style="height: 100%;" >
                            <div class="card-body">
                                <h5 class="card-title"><%=p.getName()%></h5>
                                <h6 class="price"><%=p.getPrice()%>tk</h6>
                                <h6 class="category">Category: <%=p.getCategory()%></h6>
                                <div class="mt-3 d-flex justify-content-between">

                                    <a href="add-to-cart?id=<%=p.getId()%>" class="btn btn-dark">Add to Cart</a>
                                    <a href="order-now-servlet?quantity=1&id=<%=p.getId()%>" class="btn btn-primary">Buy Now</a>
                                    
                                </div>

                            </div>
                        </div>
                    </div>
                           <% }
                    }
                                
                    %>
                   
                </div>

            </div>
        </div>
        <%@include file="includes/footer.jsp"%>

    </body>
</html>
