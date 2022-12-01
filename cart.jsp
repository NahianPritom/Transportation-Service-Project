<%-- 
    Document   : index
    Author     : Nahian
--%>

<%@page import="cn.pts.dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="cn.pts.connection.DbCon"%>
<%@page import="cn.pts.model.*"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
       request.setAttribute("auth", auth);
       
    }
    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    //try for db cart
    //ArrayList<Cart> cart_listGt = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
    List<Cart> cartProduct = null;
    
if (cart_list != null) {
       ProductDao pDao = new ProductDao(DbCon.getConnection());
	cartProduct = pDao.getCartProducts(cart_list);
        double total=pDao.getTotalCartPrice(cart_list);
        	request.setAttribute("cart_list", cart_list);
                request.setAttribute("total", total);
                



}
    %>
<!DOCTYPE html>
<html>
    <head>

        <title>cart</title>
        <%@include file="includes/head.jsp"%>
        <style type="text/css">

.table tbody td{
vertical-align: middle;
}
.btn-incre, .btn-decre{
box-shadow: none;
font-size: 25px;
}
</style>
    </head>
    <body>
        <%@include file="includes/navbar.jsp"%>

        <div class="container">
            <div class="d-flex py-3">
                <h3>Total Price: ${ (total>0)?total:0 }tk</h3>
                
                <a class="mx-3 btn btn-primary" href="cart-check-out">Check Out</a>
             
                                        
            </div>
            <table class="table table-light">
                <thead>
                    <tr>


                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Cancel</th>
     


                    </tr>

                </thead>
                <tbody>
                    <% if (cart_list != null){
                       for (Cart c : cartProduct){ %>
                       
                        <tr>
                        <td><%=c.getName()%></td>
					<td><%=c.getCategory()%></td>
					<td><%= c.getPrice()%>tk</td>
                        <td>
                            <form action="order-now-servlet" method="post" class="form-inline">
                                <input type="hidden" name="id" value="<%= c.getId()%>" class="form-input">
                                <div class="form-group d-flex justify-content-between">
                                                                    <a class="btn bnt-sm btn-decre" href="quantity-inc-dec?action=dec&id=<%=c.getId()%>"><i class="fas fa-minus-square"></i></a> 
                                    <input type="text" name="quantity" class="form-control" value="<%=c.getQuantity()%>" readonly>

                                    <a class="btn bnt-sm btn-incre" href="quantity-inc-dec?action=inc&id=<%=c.getId()%>"><i class="fas fa-plus-square"></i></a> 
                                </div>
                                
                        
                            </form>
                        </td>
                        <td>
                            <a class ="btn btn-sm btn-danger" href="remove-from-cart?id=<%= c.getId()%>">Remove</a>
                            
                        </td>
                         
                        
                       
                            
                            
                       
                    </tr>
                       
                       
                      <% }
                    
                    } %>
                   
                </tbody>


            </table>




        </div>
        <%@include file="includes/footer.jsp"%>

    </body>
</html>
