/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.searchModal;
import org.json.simple.JSONObject;

/**
 *
 * @author TED
 */
@WebServlet(name = "search", urlPatterns = {"/search"})
public class search extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       String name=req.getParameter("nm");
       int qt=Integer.parseInt(req.getParameter("qt"));
        searchModal sm=new searchModal();
        String a=sm.loadJob(qt, name);
        String b=sm.loadBtn();
        JSONObject jo = new JSONObject();
        jo.put("a", a);
        jo.put("b", b);
        resp.getWriter().write(jo.toJSONString());
    }

}
