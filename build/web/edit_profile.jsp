<%-- 
    Document   : edit_profile
    Created on : 06-Jun-2023, 1:21:48 am
    Author     : Rajarshi
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Page</title>
        
        <%@include file="all_components/all_css.jsp" %>
        
    </head>
    <body style="background-color: #f7f7f7">
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <%@include file="all_components/navbar.jsp" %>
        
        <div class="container-fluid">
            <div class="row p-4">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x"></i>
                                
                                <h5>Edit Profile</h5>
                                
                            </div>
                            
                            <form action="update_profile" method="post">
                                
                                <input type="hidden" name="id" value="${userobj.id}">
                                <div class="form-group">
                                    <label>Enter Full Name</label>
                                    <input type="text" required="required" class="form-control"
                                           id="exampleDropdownFormEmail1" aria-describedby="emailHelp" 
                                           name="name" value="${userobj.name}">
                                </div>
                                
                                <div class="form-group">
                                    <label>Enter Qualification</label>
                                    <input type="text" required="required" class="form-control"
                                           id="exampleDropdownFormEmail1" aria-describedby="emailHelp" 
                                           name="qua" value="${userobj.qualification}">
                                </div>
                                <div class="form-group">
                                    <label>Enter Email</label>
                                    <input type="email" required="required" class="form-control"
                                           id="exampleDropdownFormEmail1" 
                                           name="email" value="${userobj.email}">
                                </div>
                                <div class="form-group">
                                    <label>Enter Password</label>
                                    <input type="password" required="required" class="form-control"
                                           id="exampleDropdownFormEmail1" name="ps" 
                                           value="${userobj.password}">
                                </div>
                                
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Update</button>
                                
                            </form>
                            
                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
    </body>
</html>
