package com.servlet;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Rajarshi
 */
@WebServlet("/update_profile")
public class UpdateUserServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
        try {
            
            int id=Integer.parseInt(req.getParameter("id"));
            String name=req.getParameter("name");
            String qua=req.getParameter("qua");
            String email=req.getParameter("email");
            String ps=req.getParameter("ps");
            
            HttpSession session=req.getSession();
            
            UserDAO dao=new UserDAO(DBConnect.getConn());
            User u=new User(id,name,email,ps,qua,"user");
            
            boolean f=dao.updateUser(u);
            
            if(f)
            {
                session.setAttribute("succMsg", "Profile Update Successfully");
                resp.sendRedirect("home.jsp");
            }
            else
            {
                session.setAttribute("succMsg", "Something wrong on server");
                resp.sendRedirect("home.jsp");
            }
            
            
            
        } catch (Exception e) {
        
            e.printStackTrace();
        }
    
    }
    
    
    
}