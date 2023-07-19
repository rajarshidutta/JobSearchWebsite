<%-- 
    Document   : admin
    Created on : 01-Jun-2023, 9:23:43 pm
    Author     : Rajarshi
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        
         <%@include file="all_components/all_css.jsp" %>
        
         <style type="text/css">
             
             .back-img{
                 background: url(img/admin_img.jpg);
                 height: 91vh;
                 width: 100%;
                 background-repeat: no-repeat;
                 background-size: cover;
             }
             
         </style>
         
    </head>
    <body>
        
        <!--sendRedirect-->
        
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
         <%@include file="all_components/navbar.jsp" %>
        
         <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white p-4">
                    Welcome Admin
                </h1>
            </div>
        </div>
        
    </body>
</html>
