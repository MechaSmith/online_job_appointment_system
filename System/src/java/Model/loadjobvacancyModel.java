/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import Hibernate.Jobs;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author User
 */
public class loadjobvacancyModel {
    
    Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
    String data="";
     

    public String loadJob(int x) {
        Criteria cr = sh.createCriteria(Jobs.class);
        cr.add(Restrictions.eq("status", "1"));
        cr.setFirstResult(x * 20);//starting index
        cr.setMaxResults(20);
        List<Jobs> jli = cr.list();
        for (Jobs j : jli) {
           data += "<div class=\"col-lg-3 col-md-3\">\n"
                    + "                <p><b>" + j.getCountry().getCountry() + "</b></p>\n"
                    + "                <span>" + j.getName() + "</span>\n"
                    + "                <button class=\"pull-right\" onclick=\"jobView('" + j.getIdjobs() + "')\" style=\"color: black\"> Job View</button>\n"
                    + "                <hr/>\n"
                    + "            </div>";
        }
        return data;
    }
}
