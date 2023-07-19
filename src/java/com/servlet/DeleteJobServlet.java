package com.servlet;

import com.DB.DBConnect;
import com.dao.JobDAO;
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

@WebServlet("/delete")
public class DeleteJobServlet extends HttpServlet{

    // in achor tag by default get method is caled....
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        try {
            
            int id=Integer.parseInt(req.getParameter("id"));
            
            
            
            JobDAO dao=new JobDAO(DBConnect.getConn());
            boolean f=dao.deleteJob(id);
            
            HttpSession session=req.getSession();
            
            if(f)
            {
                session.setAttribute("succMsg", "Job Delete Successfully...");
                resp.sendRedirect("view_job.jsp");
            }
            else
            {
                session.setAttribute("succMsg", "Something Wrong on Server...");
                resp.sendRedirect("view_job.jsp");
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        
    }
    
}
