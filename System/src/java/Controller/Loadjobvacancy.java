/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.loadjobvacancyModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;

/**
 *
 * @author User
 */
@WebServlet(name = "Loadjobvacancy", urlPatterns = {"/Loadjobvacancy"})
public class Loadjobvacancy extends HttpServlet {
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
               int count=Integer.parseInt(request.getParameter("m"));
        loadjobvacancyModel jlm=new loadjobvacancyModel();
        String d=jlm.loadJob(count);
      
        JSONObject jo = new JSONObject();
        jo.put("a", d);
       response.getWriter().write(jo.toJSONString());

  
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
