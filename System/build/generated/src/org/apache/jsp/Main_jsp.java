package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"css/smp14.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"css/smp15.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("  <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"design/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"design/stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("\t<link href=\"design/css/animate.min.css\" rel=\"stylesheet\"> \n");
      out.write("\t<link href=\"design/css/animate.css\" rel=\"stylesheet\" />\n");
      out.write("\t<link href=\"design/css/prettyPhoto.css\" rel=\"stylesheet\"> \n");
      out.write("\t<link href=\"design/css/style.css\" rel=\"stylesheet\">\n");
      out.write("       </head>\n");
      out.write("       \n");
      out.write("       <style type=\"text/css\">\n");
      out.write("           .main{\n");
      out.write("               margin-top: -50px;\n");
      out.write("           }\n");
      out.write("       </style>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"row\">\n");
      out.write("      <header>\n");
      out.write("     <h1>  Online Appointment </h1>\n");
      out.write("</header>\n");
      out.write("<div class=\"container teal borderYtoX\">\n");
      out.write(" \n");
      out.write("<a href=\"Home.jsp\">HOME</a>\n");
      out.write("\n");
      out.write(" <a href=\"registration.jsp\">REGISTRATION</a>\n");
      out.write("  <a href=\"login.jsp\">LOGIN</a>\n");
      out.write(" <a href=\"country.jsp\">COUNTRY</a>\n");
      out.write("  <a href=\"job.jsp\">JOB</a>\n");
      out.write(" <a href=\"login.jsp\">Contact</a>\n");
      out.write("</div>\n");
      out.write("         </div>\n");
      out.write("          \n");
      out.write("        <div class=\"main\">\n");
      out.write("               <div class=\"slider\">\n");
      out.write("\t\t\t<div id=\"about-slider\">\n");
      out.write("\t\t\t\t<div id=\"carousel-slider\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("\t\t\t\t\t<!-- Indicators -->\n");
      out.write("\t\t\t\t\t<ol class=\"carousel-indicators visible-xs\">\n");
      out.write("\t\t\t\t\t\t<li data-target=\"#carousel-slider\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("\t\t\t\t\t\t<li data-target=\"#carousel-slider\" data-slide-to=\"1\"></li>\n");
      out.write("\t\t\t\t\t\t<li data-target=\"#carousel-slider\" data-slide-to=\"2\"></li>\n");
      out.write("\t\t\t\t\t</ol>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"carousel-inner\">\n");
      out.write("\t\t\t\t\t\t<div class=\"item active\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"design/images/6.jpg\" class=\"img-responsive\" alt=\"\"> \n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t   <div class=\"item\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"design/images/7.jpg\" class=\"img-responsive\" alt=\"\"> \n");
      out.write("\t\t\t\t\t   </div> \n");
      out.write("\t\t\t\t\t   <div class=\"item\">\n");
      out.write("\t\t\t\t\t\t\t<img src=\"design/images/5.jpg\" class=\"img-responsive\" alt=\"\"> \n");
      out.write("\t\t\t\t\t   </div> \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<a class=\"left carousel-control hidden-xs\" href=\"#carousel-slider\" data-slide=\"prev\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-angle-left\"></i> \n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<a class=\" right carousel-control hidden-xs\"href=\"#carousel-slider\" data-slide=\"next\">\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-angle-right\"></i> \n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t</div> <!--/#carousel-slider-->\n");
      out.write("\t\t\t</div><!--/#about-slider-->\n");
      out.write("\t\t</div>\n");
      out.write("        </div>    \n");
      out.write("        <script src=\"design/js/jquery.js\"></script>\n");
      out.write("\t<!-- Include all compiled plugins (below), or include individual files as needed -->\n");
      out.write("\t<script src=\"design/js/bootstrap.min.js\"></script>\n");
      out.write("\t<script src=\"design/js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"design/js/jquery.isotope.min.js\"></script> \n");
      out.write("\t<script src=\"design/js/wow.min.js\"></script>\n");
      out.write("\t<script src=\"design/js/jquery.easing.min.js\"></script>\t\n");
      out.write("\t<script src=\"design/js/main.js\"></script>\n");
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
