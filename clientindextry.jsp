<%-- 
    Document   : clientindextry
    Author     : Nahian
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cn.pts.model.Cart"%>
<%@page import="java.util.List"%>
<%@page import="cn.pts.model.Product"%>
<%@page import="cn.pts.dao.ProductDao"%>
<%@page import="cn.pts.connection.DbCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                
                <div class="row">
                    
                    
                    
                    
                </div>
                
                
            </div>
            
            
        </div>
    </body>
</html>
