
package Model;

import Hibernate.Jobs;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
 

public class searchModal {
    

    Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
    String data="";
    String data1 = "";

    public String loadJob(int x,String nm) {
        Criteria cr = sh.createCriteria(Jobs.class);
        cr.add(Restrictions.sqlRestriction(" name LIKE '%" + nm + "%' "));
        cr.add(Restrictions.eq("status", "1"));
        cr.setFirstResult(x * 20);//starting index
        cr.setMaxResults(20);
        List<Jobs> jli = cr.list();
        for (Jobs j : jli) {
           data += "<div class=\"col-lg-3 col-md-3\">\n"
                    + "                <p><b>" + j.getCountry().getCountry() + "</b></p>\n"
                    + "                <span>" + j.getName() + "</span>\n"
                    + "                <button class=\"pull-right\" onclick=\"viewJob('" + j.getIdjobs() + "')\" style=\"color: black\"><span class=\"glyphicon glyphicon-eye-open\"></span></button>\n"
                    + "                <hr/>\n"
                    + "            </div>";
        }
        return data;
    }
   
    public String loadBtn() {
        int qt=0;
        Criteria cr = sh.createCriteria(Jobs.class);
        cr.add(Restrictions.eq("status", "1"));
        List<Jobs> li = cr.list();
        for (Jobs i : li) {
            qt++;
        }
        int x= qt;
        qt = x / 20;
        if (x % 20 != 0) {
            ++qt;
        }
        for (int ii = 0; ii < qt; ii++) {
            if (ii == 0) {
                data1 += "<li><a onclick=\"searching('0')\">" + (ii + 1) + "</a></li>";
            } else {
                data1 += "<li><a onclick=\"searching(" + ii + ")\">" + (ii + 1) + "</a></li>";
            }

        }
        return data1;
    }

}
