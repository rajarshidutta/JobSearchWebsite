<%-- 
    Document   : edit_job
    Created on : 02-Jun-2023, 11:51:40 pm
    Author     : Rajarshi
--%>

<%@page import="com.entity.Jobs"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Job Page</title>
        
        <%@include file="all_components/all_css.jsp" %>
        
    </head>
    
    <body style="background-color: #f0f1f2">
        
        <!--sendRedirect-->
        
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        
        
        
        
        
        <%@include file="all_components/navbar.jsp" %>
        
        <div class="container p-2">
            <div class="col-md-10 offset-md-1">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="text-center text-success">
                            <i class="fas fa-user-friends fa-3x"></i>
                            
                           
        <%
            
            int id=Integer.parseInt(request.getParameter("id"));
            JobDAO dao=new JobDAO(DBConnect.getConn());
            Jobs j=dao.getJobById(id);
        
        
        %>                    
                    
                            
                            <h5>Edit Jobs</h5>
                        </div>
                        
                        <form action="update" method="post">
                            
                            <!--creating a hidden input-->
                            <input type="hidden" name="id" value="<%= j.getId() %>">
                            
                            
                                <div class="form-group">
                                  <label>Enter Title</label>
                                  <input type="text" required class="form-control" name="title" value="<%= j.getTitle() %>">
                                </div>
                            
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                        <label>Location</label>
                                        <select name="location" class="custom-select" id="inlineFormCustomSelectPref">
                                            <option value="<%= j.getLocation() %>"><%= j.getLocation() %></option>
                                            <option value="Odisha">Odisha</option>
                                            <option value="Jharkhand">Jharkhand</option>
                                            <option value="Gujurat">Gujurat</option>
                                            <option value="Bangalore">Bangalore</option>
                                            <option value="Delhi">Delhi</option>
                                            <option value="Chennai">Chennai</option>
                                            <option value="Hyderabad">Hyderabad</option>
                                            <option value="Kolkata">Kolkata</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-4">
                                        <label>Category</label>
                                        <select class="custom-select" id="inlineFormCustomSelectPref" name="category">
                                              <option value="<%= j.getCategory() %>"><%= j.getCategory() %></option>
                                              <option value="IT">IT</option>
                                              <option value="Developer">Developer</option>
                                              <option value="Banking">Banking</option>
                                              <option value="Engineer">Engineer</option>
                                              <option value="Teacher">Teacher</option>
                                        </select>
                                    </div>
                                    
                                    <div class="form-group col-md-4">
                                        <label>Status</label>
                                        <select class="form-control" name="status">
                                            <option class="<%= j.getStatus() %>" value="<%= j.getStatus() %>"><%= j.getStatus() %></option>
                                            <option class="Active" value="Active">Active</option>
                                            <option class="Inactive" value="Inactive">Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label>Enter Description</label>
                                    <textarea required rows="6" cols="" name="desc" class="form-control"><%= j.getDescription() %></textarea>
                                </div>
                            
                                <button class="btn btn-success">Update Job</button>
                                
                        </form>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        
        
    </body>
</html>

