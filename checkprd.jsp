<%-- Document : checkprd Author : Nahian --%>

  <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.Statement" %>
      <%@page import="java.sql.DriverManager" %>
        <%@page import="java.sql.Connection" %>
          <%@page contentType="text/html" pageEncoding="UTF-8" %>
            <!DOCTYPE html>
            <html>

            <head>
              <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <title>JSP Page</title>
              <%@include file="includes/head.jsp" %>
                <style type="text/css">
                  .table tbody td {
                    vertical-align: middle;
                  }
                </style>
            </head>

            <body>
              <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container">
                  <a class="navbar-brand" href="index.jsp">Product Transportation System</a>
                  <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
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
              <% Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); Connection
                cn=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=isd1;selectMethod=cursor", "sa"
                , "123456" ); %>

                <div class="container">

                  <table class="table table-light">

                    <thread>
                      <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>category</th>

                        <th>Quantity</th>
                      </tr>


                    </thread>
                    <tbody>
                      <% Statement stat=null; ResultSet res=null; stat=cn.createStatement(); String data;
                        data=" select * from product;" ; res=stat.executeQuery(data); while(res.next()){ %>
                        <tr>
                          <td>
                            <%=res.getString("Description") %>
                          </td>
                          <td>
                            <%=res.getString("Price") %>
                          </td>
                          <td>
                            <%=res.getString("category") %>
                          </td>

                          <td>
                            <%=res.getString("Quantity") %>
                          </td>


                        </tr>

                        <% } %>

                    </tbody>

                  </table>


                </div>

                <%@include file="includes/footer.jsp" %>
            </body>

            </html>