package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class job_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"row\">\n");
      out.write("            <div>\n");
      out.write("             \n");
      out.write("                <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                    <table class=\"table table-striped\">\n");
      out.write("                      <center> <h2 class=\"lead\" style=\"font-size: 20px;  color: #009999; font-size:150%; \"> Availabel Job </h2> </center>\n");
      out.write("                   <hr/>\n");
      out.write("    <thead>\n");
      out.write("      <tr>\n");
      out.write("        <th>Job ID</th>\n");
      out.write("        <th>Job Name</th>\n");
      out.write("        <th>Salary</th> \n");
      out.write("        <th>Country</th>\n");
      out.write("        <th>Status</th>\n");
      out.write("      </tr>\n");
      out.write("    </thead>\n");
      out.write("    <tbody>\n");
      out.write("      <tr>\n");
      out.write("        <td>01</td>\n");
      out.write("        <td>House clearner</td>\n");
      out.write("        <td>$300</td>\n");
      out.write("        <td>India</td>\n");
      out.write("        <td>1</td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>02</td>\n");
      out.write("        <td>Room boy</td>\n");
      out.write("        <td>$350</td>\n");
      out.write("        <td>Kanada</td>\n");
      out.write("        <td>1</td>\n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("         <tr>\n");
      out.write("        <td>03</td>\n");
      out.write("        <td>Accounting</td>\n");
      out.write("        <td>$350</td>\n");
      out.write("        <td>Kuvait</td>\n");
      out.write("        <td>1</td>\n");
      out.write("      </tr>    \n");
      out.write("  <tr>\n");
      out.write("        <td>03</td>\n");
      out.write("         <td>Engineer</td> \n");
      out.write("        <td>$350</td>\n");
      out.write("        <td>Kuvait</td>\n");
      out.write("        <td>1</td>\n");
      out.write("      </tr>\n");
      out.write("            \n");
      out.write("    </tbody>\n");
      out.write("  </table>\n");
      out.write("              \n");
      out.write("</div>\n");
      out.write("                \n");
      out.write("            <div class=\"col-lg-6 col-md-6\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-1 col-md-1\"></div>\n");
      out.write("                   <div class=\"col-lg-10 col-md-10\">\n");
      out.write("                   <center> <h2 class=\"lead\" style=\"font-size: 20px;  color: #009999; font-size:150%; \"> Add To Job </h2> </center>\n");
      out.write("                   <hr/>\n");
      out.write("                   <div class=\"form-horizontal\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label class=\"control-label col-lg-3 col-md-3 col-sm-3\">Job Name</label>\n");
      out.write("                                <div class=\"col-lg-9 col-md-9 col-sm-9\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"wn\" onclick=\"m1()\">\n");
      out.write("                                    <span id=\"err\" class=\"alert-danger\"></span>\n");
      out.write("                                </div>\n");
      out.write("                             </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                        <label class=\"control-label col-lg-3 col-md-3 col-sm-3\">Country</label>\n");
      out.write("                          <div class=\"col-lg-9 col-md-9 col-sm-9\">\n");
      out.write("                            <select class=\"form-control\" id=\"itmmc\" onchange=\"lol()\">\n");
      out.write("                                <option>India</option>\n");
      out.write("                                   <option>Katar</option>\n");
      out.write("                                   <option>Jerman</option>\n");
      out.write("                                   <option>Kuvait</option>\n");
      out.write("                                   <option>Ithali</option>\n");
      out.write("                            </select>\n");
      out.write("                            <span class=\"alert-danger\" id=\"itemmcer\"></span>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                                <label class=\"control-label col-lg-3 col-md-3 col-sm-3\">Salary</label>\n");
      out.write("                                   <div class=\"col-lg-9 col-md-9 col-sm-9\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"wn\" onclick=\"m1()\">\n");
      out.write("                                    <span id=\"err\" class=\"alert-danger\"></span>\n");
      out.write("                                </div>\n");
      out.write("                             </div>\n");
      out.write("                       \n");
      out.write("                       <div class=\"form-group\">\n");
      out.write("                                <label class=\"control-label col-lg-3 col-md-3 col-sm-3\">Qualification</label>\n");
      out.write("                                <div class=\"col-lg-9 col-md-9 col-sm-9\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"wn\" onclick=\"m1()\">\n");
      out.write("                                    <span id=\"err\" class=\"alert-danger\"></span>\n");
      out.write("                                </div>\n");
      out.write("                             </div>\n");
      out.write("                        </div>\n");
      out.write("                   </div>\n");
      out.write("                        <div class=\"col-lg-1 col-md-1\"></div>\n");
      out.write("            </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-4 col-md-4 col-sm-4\"></div>\n");
      out.write("                    <div class=\"col-lg-4 col-md-4 col-sm-4\">\n");
      out.write("                         <button onclick=\"login();\" class=\"btn btn-danger btn-group-justified\">Login&nbsp;&nbsp;<span class=\"glyphicon glyphicon-save\"></span></button>\n");
      out.write("                </div>\n");
      out.write("                        <div class=\"col-lg-4 col-md-4 col-sm-4\"></div>\n");
      out.write("                       \n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div> \n");
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
