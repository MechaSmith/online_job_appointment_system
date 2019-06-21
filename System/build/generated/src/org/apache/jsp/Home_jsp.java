package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Hibernate.Jobs;
import java.util.List;
import org.hibernate.criterion.Restrictions;
import org.hibernate.Criteria;
import Hibernate.Country;
import Hibernate.User;
import org.hibernate.Session;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"boostrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("            .hBtn{\n");
      out.write("                border:2px;border-color: black;   \n");
      out.write("            }.bxshdw1{\n");
      out.write("                box-shadow: 0px 2px 50px #ffffff; \n");
      out.write("\n");
      out.write("            }.gradient4{\n");
      out.write("                background-color: #ffffcc;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"jobLoad('0')\" style=\"background: #ffffff  \">\n");
      out.write("        ");

            Session sh = Hibernate.NewHibernateUtil.getSessionFactory().openSession();
        
      out.write(" \n");
      out.write("        <div class=\"gradient4\" style=\"padding:20px;margin-top: 0px;color: white\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                    <center> <h2 style=\"color: #000099\">Online Appointment <br> <p style=\"font-size: 14px\">We can find a good job </p> </h2> </center>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                    <div class=\"pull-right\" style=\"color:#333333\">\n");
      out.write("                        <br>\n");
      out.write("                        ");

                            User u = (User) request.getSession().getAttribute("user");
                            if (u != null) {
                        
      out.write("\n");
      out.write("\n");
      out.write("                        <h3>Hi ");
      out.print(u.getFname() + " " + u.getLname());
      out.write("</h3>\n");
      out.write("                        <center><button onclick=\"logout()\" class=\"btn btn-info bxshdw1\">Log out&nbsp;&nbsp;<span class=\"glyphicon glyphicon-log-out\"></span></button></center>\n");
      out.write("                                ");

                                } else {
                                
      out.write("<button onclick=\"Log()\" class=\"btn btn-info bxshdw1\">Logout &nbsp;&nbsp;<span class=\"glyphicon glyphicon-log-in\"></span></button>");

                                       }
                            
      out.write("   \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <br> \n");
      out.write("            <hr>\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-4 col-md-4\">\n");
      out.write("                    <h1 style=\"font-size: 20px; color: #006699; \">Country</h1>\n");
      out.write("                    <select class=\"form-control\" id=\"bycntry\">\n");
      out.write("                        <option>All</option>\n");
      out.write("                        ");

                            Criteria cr = sh.createCriteria(Country.class);
                            cr.add(Restrictions.eq("status", "1"));
                            List<Country> cli = cr.list();
                            for (Country c : cli) {
                        
      out.write("\n");
      out.write("                        <option>");
      out.print(c.getCountry());
      out.write("</option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-md-4\">\n");
      out.write("                    <h1 style=\"font-size: 20px; color: #006699; \">Job Category</h1>\n");
      out.write("                    <select class=\"form-control\" id=\"byjob\">\n");
      out.write("                        <option>All</option>\n");
      out.write("                        ");

                            Criteria crr = sh.createCriteria(Jobs.class);
                            crr.add(Restrictions.eq("status", "1"));
                            List<Jobs> clli = crr.list();
                            for (Jobs c : clli) {
                        
      out.write("\n");
      out.write("                        <option>");
      out.print(c.getName());
      out.write("</option>\n");
      out.write("                        ");

                            }
                        
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-4 col-md-4\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div style=\"margin: 18px;\">\n");
      out.write("            <div class=\"row\"  id=\"jobs\"> </div>\n");
      out.write("\n");
      out.write("        </div>             \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function Log() {\n");
      out.write("                window.location = \"login.jsp\";\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            function jobLoad(c) {\n");
      out.write("                alert(\"1\");\n");
      out.write("              \n");
      out.write("                var xml = new XMLHttpRequest();\n");
      out.write("                  alert(\"2\");\n");
      out.write("                xml.onreadystatechange = function() {\n");
      out.write("                      alert(\"3\");\n");
      out.write("                    if (xml.readyState === 4 && xml.status === 200) {\n");
      out.write("                     alert(\"4\");  \n");
      out.write("            var x = xml.responseText;\n");
      out.write("              alert(\"5\");\n");
      out.write("                        var y = JSON.parse(x);\n");
      out.write("                        document.getElementById(\"jobs\").innerHTML = y.a;\n");
      out.write("                        document.getElementById(\"jobBtn\").innerHTML = y.b;\n");
      out.write("                           }\n");
      out.write("                };\n");
      out.write("   xml.open(\"POST\", \"Loadjobvacancy\", true);\n");
      out.write("    xml.setRequestHeader(\"Content-Type\", \"application/x-www-form-urlencoded\");\n");
      out.write("    xml.send(\"m=\" + c);\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            function viewJob(id) {\n");
      out.write("    window.location = \"jobView.jsp?id=\" + id;\n");
      out.write("}\n");
      out.write("        </script>            \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
