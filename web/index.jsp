<%-- 
    Document   : index
    Created on : 31-May-2023, 3:41:10 pm
    Author     : Rajarshi
--%>

<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%@include file="all_components/all_css.jsp" %>
        
        <style type="text/css">
            .back-img{
                background: url("img/image.jpg");
                width: 100%;
                height: 84vh;
                background-repeat: no-repeat;
                background-size: cover;
            }
            
            
            
        </style>
        
        
        
    </head>
    
    
    <body>
        <%@include file="all_components/navbar.jsp" %>
        
        <% 
//            Connection conn=DBConnect.getConn();
//            out.println(conn);
        %>
        
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white p-5">
                    <i class="fa fa-book" aria-hidden="true"></i> Online Job Portal
                </h1>
            </div>
        </div>
        
        <%@include file="all_components/footer.jsp" %>
        
    </body>
    
    
</html>
