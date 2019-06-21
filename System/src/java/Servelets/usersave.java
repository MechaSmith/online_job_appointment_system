/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servelets;

import Hibernate.Address;
import Hibernate.Contact;
import Hibernate.Gender;
import Hibernate.Type;
import Hibernate.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 *
 * @author User
 */
@WebServlet(name = "usersave", urlPatterns = {"/usersave"})
public class usersave extends HttpServlet {

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
           try {
         
            String objj = request.getParameter("object");

             JSONParser jp = new JSONParser();
             JSONObject jo = (JSONObject) jp.parse(objj);

            String fn = (String) jo.get("fn");
            String ln= (String) jo.get("ln");
            String em= (String) jo.get("em");
            String pw= (String) jo.get("pw");
            String tp= (String) jo.get("tp");
            String no= (String) jo.get("no");
            String street= (String) jo.get("street");
            String city= (String) jo.get("city");
            String town= (String) jo.get("town");
            String gend= (String) jo.get("gen");
            
            Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
            Criteria checkcr = sh.createCriteria(User.class);
            checkcr.add(Restrictions.eq("email", em));
           User user=(User) checkcr.uniqueResult();
            if (user!=null) {
                response.getWriter().write("This Email allready use for this site. sorry");
            } else {
                Gender gen = new Gender();
                if (gend.equals("Male")) {
                    gen = (Gender) sh.load(Gender.class, 1);
                } else {
                    gen= (Gender) sh.load(Gender.class, 2);
                }
                Type type=(Type) sh.load(Type.class, 2);
                

                User u = new User();
                u.setFname(fn);
                u.setLname(ln);
                u.setGender(gen);
                u.setEmail(em);
                u.setStatus("1");
                u.setPassword(pw);
                u.setType(type);
                Transaction tr = sh.beginTransaction();
                sh.save(u);
                tr.commit();
                sh.flush();
                
                 Contact contact=new Contact();
                contact.setMobile(tp);
                contact.setUser(u);
                
                Transaction tr1=sh.beginTransaction();
                sh.save(contact);
                tr1.commit();
                sh.flush();
                
                
                Address address=new Address();
                address.setNo(no);
                address.setStreet(street);
                address.setCity(city);
                address.setTown(town);
                address.setUser(u);
                
                Transaction tr2=sh.beginTransaction();
                sh.save(address);
                tr2.commit();
                sh.flush();
                response.getWriter().write("Success");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
