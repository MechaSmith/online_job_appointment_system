package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("          <link href=\"boostrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <br><br><br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("           <div class=\"col-lg-4 col-md-4 col-sm-4\" ></div>\n");
      out.write("           <div class=\"col-lg-4 col-md-4 col-sm-4\" >\n");
      out.write("                <center> <h2 class=\"lead\" style=\"font-size: 30px;  color: #000099; font-size:200%; \">U s e r &nbsp;&nbsp; Login </h2> </center>\n");
      out.write("                   <hr/>\n");
      out.write("                     <div class=\"form-horizontal\">\n");
      out.write("                         <div class=\"form-group\">\n");
      out.write("                             <label style=\"color: #ff6633; font: bold; font-size: 20px; font-family: Times New Roman;\"  >User Name</label>\n");
      out.write("                               <input type=\"text\" placeholder=\"Type your User Name\" id=\"uname\" class=\"form-control\">\n");
      out.write("                          </div>\n");
      out.write("                           <div class=\"form-group\">\n");
      out.write("                           <label style=\"color: #ff6633; font: bold; font-size: 20px; font-family: Times New Roman;\"  >Password</label>\n");
      out.write("                               <input type=\"Password\" placeholder=\"Type your Password\" id=\"password\" class=\"form-control\">\n");
      out.write("                          </div>\n");
      out.write("                     </div>\n");
      out.write("                   <center>\n");
      out.write("\n");
      out.write("             <button onclick=\"login();\" class=\"btn btn-info btn-group-justified\">Login&nbsp;&nbsp;<span class=\"glyphicon glyphicon-save\"></span></button>\n");
      out.write("                       <br>\n");
      out.write("                   </center>\n");
      out.write("               \n");
      out.write("           </div>\n");
      out.write("              <div class=\"col-lg-4 col-md-4 col-sm-4\" ></div>              \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("           function login(){\n");
      out.write("         var un = document.getElementById(\"uname\").value;\n");
      out.write("         var pass = document.getElementById(\"password\").value;\n");
      out.write("         alert(\"1\");\n");
      out.write("        var http = new XMLHttpRequest();\n");
      out.write("        alert(\"2\");\n");
      out.write("        http.onreadystatechange = function (){\n");
      out.write("          alert(\"3\");  \n");
      out.write("            if(http.readyState === 4 && http.status === 200){\n");
      out.write("               var x = http.responseText;\n");
      out.write("               alert(\"4\");\n");
      out.write("            if(x === \"1\"){\n");
      out.write("                alert(\"5\");\n");
      out.write("                window.location = \"Admin.jpg\"; \n");
      out.write("             }else if(x === \"2\"){\n");
      out.write("                 alert(\"6\");\n");
      out.write("                window.location = \"task.jsp\";\n");
      out.write("               \n");
      out.write("             }else{\n");
      out.write("         alert(\"Errr ! Wrong User Name Or Password\");\n");
      out.write("                   \n");
      out.write("             }   \n");
      out.write("            }\n");
      out.write("        };\n");
      out.write("            http.open(\"POST\", \"login\", true);\n");
      out.write("    http.setRequestHeader(\"Content-Type\", \"application/x-www-form-urlencoded\");\n");
      out.write("    http.send(\"un=\" + un + \"&pass=\" + pass);\n");
      out.write("    } \n");
      out.write("        </script>\n");
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
