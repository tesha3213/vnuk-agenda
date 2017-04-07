
package vn.edu.vnuk.agenda.mvc.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vn.edu.vnuk.agenda.mvc.logic.Logic;

/**
 *
 * @author michel
 */
@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
    
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String parameter = request.getParameter("logic");
        String className = "vn.edu.vnuk.agenda.mvc.logic." + parameter;
        
        try {
            Class classe = Class.forName(className);
            Logic logic = (Logic) classe.newInstance();
            String page = logic.run(request, response);
            request.getRequestDispatcher(page).forward(request, response);
        } 
        
        catch (Exception e) {
            throw new ServletException("Something went wrong with the Logic !", e);
        }
    }
    
}