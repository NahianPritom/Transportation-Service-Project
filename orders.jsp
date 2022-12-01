<%-- Document : index Author : Nahian --%>

    <%@page import="java.util.ArrayList" %>
        <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <%@page import="cn.pts.connection.DbCon" %>
                <%@page import="cn.pts.model.*" %>
                    <% User auth=(User)request.getSession().getAttribute("auth"); if(auth!=null){
                        request.setAttribute("auth", auth); } ArrayList<Cart> cart_list = (ArrayList<Cart>)
                            session.getAttribute("cart-list");


                            if (cart_list != null) {


                            request.setAttribute("cart_list", cart_list);


                            }
                            %>
                            <!DOCTYPE html>
                            <html>

                            <head>

                                <title>order</title>
                                <%@include file="includes/head.jsp" %>
                            </head>

                            <body>
                                <%@include file="includes/navbar.jsp" %>
                                    <%@include file="includes/footer.jsp" %>

                            </body>

                            </html>