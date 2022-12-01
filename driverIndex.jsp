<%-- 
    Document   : driverIndex
    Author     : Nahian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Driver Index</title>
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
        <a class="nav-link" href="logindriver.jsp">Logout </a>
      </li>
      
      
      

    </ul>
  
  </div>
  </div>
</nav>
            <h3 style="text-align: center">Client's OrderList</h3>
          <% 
          
                    
                 
                
          
                 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");    
                
             Connection cn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=isd1;selectMethod=cursor", "sa", "123456");
          
             
          
          
          
          
          %>  
         
   
        <div class="container">
            
            <table class="table table-light">
                
                  <thread>
                    <tr>
                        <th>Product</th>
                        <th>Client Name</th>
                       <th>Destination</th>
                        <th>Quantity</th>
                    </tr>
                    
                    
                </thread>
                <tbody>
                     <% 
                       Statement stat =null;
                    ResultSet res =null;
                    stat= cn.createStatement();
                  
                    String data;
                    data = "select product.Description,Clients.ClinetName,Clients.Clinetid,Clients.CAddress,orders.o_quantity,orders.p_id from product INNER JOIN orders ON orders.p_id=product.Productid  Inner join Clients  on orders.u_id=Clients.Clinetid;";
                       res=stat.executeQuery(data);
                       while(res.next()){
                     
                     
                     
                     %>
                     <tr>
                          <td><%=res.getString("Description") %></td>
                           <td><%=res.getString("ClinetName") %></td>
                         <td><%=res.getString("CAddress") %></td>
                         <td><%=res.getString("o_quantity") %></td>
            
                         <td>  <a href="driver-confirm?id=<%=res.getString("p_id")%>&&id1=<%=res.getString("Clinetid")%>&&id2=<%=res.getString("o_quantity")%>" class="btn btn-dark">Confirm</a></td> 
                      
                     </tr>
                    
                     <% 

                        }
                    %>
                    
                </tbody>
                
            </table>
            
            
        </div>
         
            <%@include file="includes/footer.jsp"%>
    </body>
</html>
