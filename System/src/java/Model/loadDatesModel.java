package Model;

import Hibernate.Dates;
import Hibernate.TimesHasUser;
import Hibernate.User;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
 

public class loadDatesModel {

    Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
    String data = "";
    ArrayList<Integer> idli = new ArrayList();
    int x = 0;

    public String loadDate(User u) {
        data += "<option>All</option>";
        Criteria cr = sh.createCriteria(TimesHasUser.class);
        cr.add(Restrictions.eq("user", u));
        List<TimesHasUser> tl = cr.list();
        for (TimesHasUser t : tl) {
            idli.add(t.getDates().getIddates());
        }
        Set<Integer> set = new HashSet<>(idli);
        idli.clear();
        idli.addAll(set);
        Dates d;
        for(int x:idli){
        d=(Dates)sh.load(Dates.class, x);
         data += "<option>"+d.getDate()+"-"+d.getIddates()+"</option>";
        }
        return data;
    }
}
