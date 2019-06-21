
package Model;

import Hibernate.Dates;
import Hibernate.TimesHasUser;
import Hibernate.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
 

public class loadTimesModel {
    Session sh=Hibernate.NewHibernateUtil.getSessionFactory().openSession();
    String data;
    public String loadDates(Dates d,User u){
        data+="<option>All</option>";
        Criteria cr=sh.createCriteria(TimesHasUser.class);
        cr.add(Restrictions.eq("user", u));
        cr.add(Restrictions.eq("dates", d));
        List<TimesHasUser> tli=cr.list();
        for(TimesHasUser t:tli){
        data+="<option>"+t.getTimes().getTime()+"-"+t.getTimes().getIdtimes()+"</option>";
        }
    return data;
    }
}
