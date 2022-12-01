<%-- Document : indtry Author : Nahian --%>

    <%@page import="java.sql.ResultSet" %>
        <%@page import="java.sql.Statement" %>
            <%@page import="java.sql.DriverManager" %>
                <%@page import="java.sql.Connection" %>
                    <%@page import="java.util.ArrayList" %>
                        <%@page import="cn.pts.model.Cart" %>
                            <%@page import="cn.pts.dao.ProductDao" %>
                                <%@page import="java.util.List" %>
                                    <%@page import="cn.pts.model.Product" %>
                                        <%@page import="cn.pts.connection.DbCon" %>
                                            <%@page import="cn.pts.model.User" %>
                                                <%@page import="cn.pts.model.User" %>
                                                    <%@page contentType="text/html" pageEncoding="UTF-8" %>
                                                        <% User auth=(User) request.getSession().getAttribute("auth");
                                                            if (auth !=null) { request.setAttribute("auth", auth); }
                                                            ProductDao pd=new ProductDao(DbCon.getConnection());
                                                            List<Product> products = pd.getAllProducts();


                                                            ArrayList<Cart> cart_list = (ArrayList<Cart>)
                                                                    session.getAttribute("cart-list");


                                                                    if (cart_list != null) {


                                                                    request.setAttribute("cart_list", cart_list);


                                                                    }

                                                                    %>
                                                                    <!DOCTYPE html>
                                                                    <html>

                                                                    <head>
                                                                        <meta http-equiv="Content-Type"
                                                                            content="text/html; charset=UTF-8">
                                                                        <title>JSP Page</title>
                                                                        <%@include file="includes/head.jsp" %>
                                                                    </head>

                                                                    <body>
                                                                        <%@include file="includes/navbar.jsp" %>
                                                                            <div class="container">
                                                                                <div class="row">
                                                                                    <div class="col-md-4">
                                                                                        <form action=""" method=" get">

                                                                                            <input type="text"
                                                                                                class="form-control"
                                                                                                name="q"
                                                                                                placeholder="Search here...">

                                                                                        </form>

                                                                                    </div>




                                                                                </div>
                                                                                <div class="card-header my-3">
                                                                                    All Products
                                                                                    <div class="row">
                                                                                        <% Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                                                                                            Connection
                                                                                            cn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=isd1;selectMethod=cursor", "sa"
                                                                                            , "123456" ); Statement
                                                                                            stat=null; ResultSet
                                                                                            res=null;
                                                                                            stat=cn.createStatement();
                                                                                            String
                                                                                            query=request.getParameter("q");
                                                                                            String data;
                                                                                            if(query!=null){
                                                                                            data="select * from product where Description like '%"
                                                                                            +query+"%'"; }else{
                                                                                            data="select * from product"
                                                                                            ; }
                                                                                            res=stat.executeQuery(data);
                                                                                            while(res.next()){ String
                                                                                            prdname=res.getString("Description");
                                                                                            %>
                                                                                            <div class="col-md-3 my-3">
                                                                                                <div class="card w-100"
                                                                                                    style="width: 18rem;">
                                                                                                    <img class="card-img-top"
                                                                                                        src="product-image/<%=res.getString("
                                                                                                        images")%>"
                                                                                                    alt="Card image cap"
                                                                                                    style="height:
                                                                                                    100%;" >
                                                                                                    <div
                                                                                                        class="card-body">
                                                                                                        <h5
                                                                                                            class="card-title">
                                                                                                            <%=prdname%>
                                                                                                        </h5>
                                                                                                        <h6
                                                                                                            class="price">
                                                                                                            <%=res.getString("Price")%>
                                                                                                                tk
                                                                                                        </h6>
                                                                                                        <h6
                                                                                                            class="category">
                                                                                                            Category:
                                                                                                            <%=res.getString("category")%>
                                                                                                        </h6>
                                                                                                        <div
                                                                                                            class="mt-3 d-flex justify-content-between">

                                                                                                            <a href="add-to-cart?id=<%=res.getString("
                                                                                                                Productid")%>"
                                                                                                                class="btn
                                                                                                                btn-dark">Add
                                                                                                                to
                                                                                                                Cart</a>
                                                                                                            <a href="order-now-servlet?quantity=1&id=<%=res.getString("
                                                                                                                Productid")%>"
                                                                                                                class="btn
                                                                                                                btn-primary">Buy
                                                                                                                Now</a>

                                                                                                        </div>

                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>

                                                                                            <% } %>


                                                                                    </div>



                                                                                </div>




                                                                            </div>

                                                                            <%@include file="includes/footer.jsp" %>
                                                                    </body>

                                                                    </html>