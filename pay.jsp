<%-- 
    Document   : pay
    Author     : Nahian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
            <%@include file="includes/head.jsp"%>
    </head>
    <body>
         <%@include file="includes/navbar.jsp"%>
        <div class="container">
           
             
                   
            <h4 style="text-align: center">Payment Information</h4>                   
            <form method="POST" action="r2" style="text-align: center; ">

                        <tr>
                             <td><b>Payment Type</b> </td>
                            <td>
                                <select name="usertype">
                                 
                                    <option>Cash</option>
                                    <option>Bkash</option>
                                   
                                </select>
                            </td>
                        </tr>
                       
                      <br>
                        <input type="submit" name="submit" value="Confirm">
                   
                        
                         
                    </form>
                    
                </div>
                
                
                
         
        
            
            <%@include file="includes/footer.jsp"%>
    </body>
    
   
</html>
