package web_study_02.unit01;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      processRequest(request, response);
      
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      processRequest(request, response);
   }

   private void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
      response.setContentType("text/html; charset=UTF-8");
      response.getWriter()
      .append("<html><body><h1>")
      .append("Hello Servlet 한글")
      .append("</h1></body></html>");
      
   }

}