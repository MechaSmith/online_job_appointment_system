/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Hibernate.Appointment;
import Hibernate.Dates;
import Hibernate.Jobs;
import Hibernate.Times;
import Hibernate.TimesHasUser;
import Hibernate.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
 
/**
 *
 * @author TED
 */
@WebServlet(name = "saveApp", urlPatterns = {"/saveApp"})
public class saveApp extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();


        Dates d = (Dates) sh.load(Dates.class, Integer.parseInt(req.getParameter("d")));
        User u = (User) sh.load(User.class, Integer.parseInt(req.getParameter("a")));
        Times t = (Times) sh.load(Times.class, Integer.parseInt(req.getParameter("t")));
        Jobs job = (Jobs) req.getSession().getAttribute("joba");
        User uu = (User) req.getSession().getAttribute("user");
        Date date = new Date();
        String des=req.getParameter("mg");
        Criteria cr = sh.createCriteria(TimesHasUser.class);
        cr.add(Restrictions.eq("user", u));
        cr.add(Restrictions.eq("dates", d));
        cr.add(Restrictions.eq("times", t));
        TimesHasUser tm = (TimesHasUser) cr.uniqueResult();
if(tm!=null){
     Appointment ap = new Appointment();
        ap.setTimesHasUser(tm);
        ap.setUserByAdmin(u);
        ap.setStatus("1");
        ap.setJobs(job);
        ap.setUserByClient(uu);
        ap.setDiscription(des);
        ap.setDate(date);

        Transaction tr = sh.beginTransaction();
        sh.save(ap);
        tr.commit();
        sh.flush();
        sh.close();

}else{
    System.out.println("Aldfasdfasdf");
}
       
    }

}
