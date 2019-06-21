/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servelets;

import Hibernate.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author User
 */
@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String un = request.getParameter("un");
        String pw = request.getParameter("pass");

        Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
        Criteria cr = sh.createCriteria(User.class);
        cr.add(Restrictions.eq("email", un));
        cr.add(Restrictions.eq("password", pw));
        cr.add(Restrictions.eq("status", "1"));
        User u = (User) cr.uniqueResult();
        if (u != null) {
            HttpSession hs = request.getSession();
                hs.setAttribute("user", u);
            if (u.getUid() == 1) {
                response.getWriter().write("1");
            } else {
                response.getWriter().write("2");
            }
        } else {
            response.getWriter().write("3");
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
